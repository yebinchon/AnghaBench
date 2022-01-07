; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_eesox.c_eesoxscsi_set_proc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_eesox.c_eesoxscsi_set_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"EESOXSCSI\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32)* @eesoxscsi_set_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eesoxscsi_set_proc_info(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 9
  br i1 %10, label %11, label %53

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 9
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 9
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %34 = call i32 @eesoxscsi_terminator_ctl(%struct.Scsi_Host* %33, i32 1)
  br label %48

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %43 = call i32 @eesoxscsi_terminator_ctl(%struct.Scsi_Host* %42, i32 0)
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %32
  br label %52

49:                                               ; preds = %22, %15
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %56

53:                                               ; preds = %11, %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eesoxscsi_terminator_ctl(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
