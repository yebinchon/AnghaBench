; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_sched_eh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_sched_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.domain_device* }
%struct.domain_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, i32 }

@SAS_DEV_EH_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sas_ata_sched_eh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_ata_sched_eh(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  store %struct.domain_device* %8, %struct.domain_device** %3, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %4, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @SAS_DEV_EH_PENDING, align 4
  %19 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = call i32 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %25 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %30 = call i32 @ata_std_sched_eh(%struct.ata_port* %29)
  %31 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %32 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ata_std_sched_eh(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
