; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_wait_eh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_wait_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@SAS_DEV_EH_PENDING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*)* @sas_wait_eh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_wait_eh(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %4 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %5 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  store %struct.sas_ha_struct* %8, %struct.sas_ha_struct** %3, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %12 = call i64 @dev_is_sata(%struct.domain_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %16 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ata_port_wait_eh(i32 %18)
  br label %58

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %56, %20
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_irq(i32* %23)
  br label %25

25:                                               ; preds = %31, %21
  %26 = load i32, i32* @SAS_DEV_EH_PENDING, align 4
  %27 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %33 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %32, i32 0, i32 2
  %34 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %35 = call i32 @prepare_to_wait(i32* %33, i32* @wait, i32 %34)
  %36 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = call i32 (...) @schedule()
  %40 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %41 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %40, i32 0, i32 1
  %42 = call i32 @spin_lock_irq(i32* %41)
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %45 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %44, i32 0, i32 2
  %46 = call i32 @finish_wait(i32* %45, i32* @wait)
  %47 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %48 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %51 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @scsi_host_in_recovery(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 @msleep(i32 10)
  br label %21

58:                                               ; preds = %14, %43
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @ata_port_wait_eh(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i64 @scsi_host_in_recovery(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
