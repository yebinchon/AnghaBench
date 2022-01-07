; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_sata_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_sata_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%struct.sas_task = type { %struct.task_status_struct, %struct.TYPE_2__* }
%struct.task_status_struct = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.mvs_device* }
%struct.mvs_device = type { i32 }
%struct.ata_task_resp = type { i32, i32* }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@CMD_ISS_STPD = common dso_local global i32 0, align 4
@SAS_OPEN_REJECT = common dso_local global i32 0, align 4
@SAS_PROTO_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, %struct.sas_task*, i32, i32)* @mvs_sata_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_sata_done(%struct.mvs_info* %0, %struct.sas_task* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvs_device*, align 8
  %10 = alloca %struct.task_status_struct*, align 8
  %11 = alloca %struct.ata_task_resp*, align 8
  %12 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mvs_device*, %struct.mvs_device** %16, align 8
  store %struct.mvs_device* %17, %struct.mvs_device** %9, align 8
  %18 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  store %struct.task_status_struct* %19, %struct.task_status_struct** %10, align 8
  %20 = load %struct.task_status_struct*, %struct.task_status_struct** %10, align 8
  %21 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %23, %struct.ata_task_resp** %11, align 8
  %24 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.ata_task_resp*, %struct.ata_task_resp** %11, align 8
  %26 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.ata_task_resp*, %struct.ata_task_resp** %11, align 8
  %28 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %32 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SATA_RECEIVED_D2H_FIS(i32 %33)
  %35 = call i32 @memcpy(i32* %30, i32 %34, i32 4)
  %36 = load %struct.task_status_struct*, %struct.task_status_struct** %10, align 8
  %37 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %36, i32 0, i32 0
  store i32 16, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CMD_ISS_STPD, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @SAS_OPEN_REJECT, align 4
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SAS_PROTO_RESPONSE, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %12, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @SATA_RECEIVED_D2H_FIS(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
