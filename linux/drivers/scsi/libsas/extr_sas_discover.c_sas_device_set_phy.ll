; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_device_set_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_device_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.sas_phy*, %struct.TYPE_2__* }
%struct.sas_phy = type { i32 }
%struct.TYPE_2__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32 }
%struct.sas_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_device_set_phy(%struct.domain_device* %0, %struct.sas_port* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.sas_port*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.sas_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store %struct.sas_port* %1, %struct.sas_port** %4, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %8 = icmp ne %struct.domain_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %5, align 8
  %16 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %17 = call %struct.sas_phy* @sas_port_get_phy(%struct.sas_port* %16)
  store %struct.sas_phy* %17, %struct.sas_phy** %6, align 8
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %19 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %22 = icmp ne %struct.sas_phy* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %10
  %24 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 0
  %26 = load %struct.sas_phy*, %struct.sas_phy** %25, align 8
  %27 = call i32 @sas_port_put_phy(%struct.sas_phy* %26)
  %28 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %29 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %30 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %29, i32 0, i32 0
  store %struct.sas_phy* %28, %struct.sas_phy** %30, align 8
  br label %31

31:                                               ; preds = %23, %10
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %33 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  br label %35

35:                                               ; preds = %31, %9
  ret void
}

declare dso_local %struct.sas_phy* @sas_port_get_phy(%struct.sas_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sas_port_put_phy(%struct.sas_phy*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
