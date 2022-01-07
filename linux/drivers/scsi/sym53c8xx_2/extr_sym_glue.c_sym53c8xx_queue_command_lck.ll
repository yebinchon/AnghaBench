; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_queue_command_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_queue_command_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sym_hcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sym_ucmd = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@SYM_CONF_TIMER_INTERVAL = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @sym53c8xx_queue_command_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c8xx_queue_command_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.sym_hcb*, align 8
  %7 = alloca %struct.sym_ucmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call %struct.sym_hcb* @SYM_SOFTC_PTR(%struct.scsi_cmnd* %10)
  store %struct.sym_hcb* %11, %struct.sym_hcb** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call %struct.sym_ucmd* @SYM_UCMD_PTR(%struct.scsi_cmnd* %12)
  store %struct.sym_ucmd* %13, %struct.sym_ucmd** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %14, void (%struct.scsi_cmnd*)** %16, align 8
  %17 = load %struct.sym_ucmd*, %struct.sym_ucmd** %7, align 8
  %18 = call i32 @memset(%struct.sym_ucmd* %17, i32 0, i32 4)
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %2
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load i32, i32* @jiffies, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %33, %38
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* @SYM_CONF_TIMER_INTERVAL, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %46 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @time_after(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %55 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %31
  br label %58

58:                                               ; preds = %57, %24, %2
  %59 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %60 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %58
  %67 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = call i32 @sym_queue_command(%struct.sym_hcb* %67, %struct.scsi_cmnd* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %72, %64
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.sym_hcb* @SYM_SOFTC_PTR(%struct.scsi_cmnd*) #1

declare dso_local %struct.sym_ucmd* @SYM_UCMD_PTR(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(%struct.sym_ucmd*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sym_queue_command(%struct.sym_hcb*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
