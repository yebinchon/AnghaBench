; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mvs_info*, i32)* }
%struct.mvs_info = type { i32, i32, i32 }
%struct.sas_task = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.completion = type { i32 }
%struct.mvs_tmf_task = type { i32 }
%struct.mvs_device = type { %struct.mvs_info* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mvsas exec failed[%d]!\0A\00", align 1
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@MVS_CHIP_SLOT_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*, i32, %struct.completion*, i32, %struct.mvs_tmf_task*)* @mvs_task_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_task_exec(%struct.sas_task* %0, i32 %1, %struct.completion* %2, i32 %3, %struct.mvs_tmf_task* %4) #0 {
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.completion*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvs_tmf_task*, align 8
  %11 = alloca %struct.mvs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.completion* %2, %struct.completion** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mvs_tmf_task* %4, %struct.mvs_tmf_task** %10, align 8
  store %struct.mvs_info* null, %struct.mvs_info** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.mvs_device*
  %21 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %20, i32 0, i32 0
  %22 = load %struct.mvs_info*, %struct.mvs_info** %21, align 8
  store %struct.mvs_info* %22, %struct.mvs_info** %11, align 8
  %23 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %24 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %23, i32 0, i32 1
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %28 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mvs_tmf_task*, %struct.mvs_tmf_task** %10, align 8
  %31 = call i32 @mvs_task_prep(%struct.sas_task* %27, %struct.mvs_info* %28, i32 %29, %struct.mvs_tmf_task* %30, i32* %13)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %37 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dev_printk(i32 %35, i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34, %5
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %47, align 8
  %49 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %50 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %51 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* @MVS_CHIP_SLOT_SZ, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  %57 = call i32 %48(%struct.mvs_info* %49, i32 %56)
  br label %58

58:                                               ; preds = %45, %41
  %59 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %60 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %59, i32 0, i32 1
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mvs_task_prep(%struct.sas_task*, %struct.mvs_info*, i32, %struct.mvs_tmf_task*, i32*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
