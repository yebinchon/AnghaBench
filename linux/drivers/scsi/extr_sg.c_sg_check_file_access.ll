; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_check_file_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_check_file_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i64 }

@.str = private unnamed_addr constant [99 x i8] c"%s: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"%s: process %d (%s) called from kernel context, this is not allowed.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @sg_check_file_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_check_file_access(%struct.file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 (...) @current_real_cred()
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %14 = call i32 @task_tgid_vnr(%struct.TYPE_3__* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_err_once(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14, i32 %17)
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = call i64 (...) @uaccess_kernel()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %27 = call i32 @task_tgid_vnr(%struct.TYPE_3__* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err_once(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %27, i32 %30)
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %24, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @current_real_cred(...) #1

declare dso_local i32 @pr_err_once(i8*, i8*, i32, i32) #1

declare dso_local i32 @task_tgid_vnr(%struct.TYPE_3__*) #1

declare dso_local i64 @uaccess_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
