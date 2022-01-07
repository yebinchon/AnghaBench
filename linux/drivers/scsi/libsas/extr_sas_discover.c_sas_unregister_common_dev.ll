; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_unregister_common_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_unregister_common_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, i32 }
%struct.domain_device = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_sas_port*, %struct.domain_device*)* @sas_unregister_common_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_unregister_common_dev(%struct.asd_sas_port* %0, %struct.domain_device* %1) #0 {
  %3 = alloca %struct.asd_sas_port*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %3, align 8
  store %struct.domain_device* %1, %struct.domain_device** %4, align 8
  %6 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %7 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %6, i32 0, i32 1
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  store %struct.sas_ha_struct* %8, %struct.sas_ha_struct** %5, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = call i32 @sas_notify_lldd_dev_gone(%struct.domain_device* %9)
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 4
  %23 = call i32 @list_del_init(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %26 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 3
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %32 = call i64 @dev_is_sata(%struct.domain_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %36 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sas_ata_end_eh(i32 %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %42 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %45 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %48 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SAS_END_DEVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %40
  %53 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %54 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %60 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @list_del_init(i32* %61)
  %63 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %64 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %52, %40
  %68 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %69 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %72 = call i32 @sas_put_device(%struct.domain_device* %71)
  ret void
}

declare dso_local i32 @sas_notify_lldd_dev_gone(%struct.domain_device*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_end_eh(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
