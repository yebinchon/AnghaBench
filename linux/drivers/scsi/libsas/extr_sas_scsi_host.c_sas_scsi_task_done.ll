; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_scsi_task_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_scsi_task_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.domain_device*, %struct.scsi_cmnd* }
%struct.domain_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }

@SAS_HA_FROZEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"task done but aborted\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"task_done called with non existing SCSI cmnd!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_task*)* @sas_scsi_task_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_scsi_task_done(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 0
  %12 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  store %struct.domain_device* %12, %struct.domain_device** %4, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %16, align 8
  store %struct.sas_ha_struct* %17, %struct.sas_ha_struct** %5, align 8
  %18 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @SAS_HA_FROZEN, align 4
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %24 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.sas_task* null, %struct.sas_task** %2, align 8
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = call i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd* %29, i32* null)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %33 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %37 = icmp ne %struct.sas_task* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

44:                                               ; preds = %31
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = icmp ne %struct.scsi_cmnd* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %54 = call i32 @sas_free_task(%struct.sas_task* %53)
  br label %64

55:                                               ; preds = %44
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %57 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %58 = call i32 @sas_end_task(%struct.scsi_cmnd* %56, %struct.sas_task* %57)
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %60, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = call i32 %61(%struct.scsi_cmnd* %62)
  br label %64

64:                                               ; preds = %55, %51, %42
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

declare dso_local i32 @sas_end_task(%struct.scsi_cmnd*, %struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
