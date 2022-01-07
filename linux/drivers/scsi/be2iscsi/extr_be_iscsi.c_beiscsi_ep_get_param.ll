; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32, i32, i32*, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BS_%d : In beiscsi_ep_get_param, param= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@BEISCSI_IP_TYPE_V4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_ep_get_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.beiscsi_endpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %9, i32 0, i32 0
  %11 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  store %struct.beiscsi_endpoint* %11, %struct.beiscsi_endpoint** %7, align 8
  %12 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %7, align 8
  %13 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @beiscsi_log(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %43 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %7, align 8
  %23 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %8, align 4
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %7, align 8
  %28 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %7, align 8
  %35 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %34, i32 0, i32 1
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %7, align 8
  %40 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %39, i32 0, i32 0
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %32
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %42, %20
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @beiscsi_log(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
