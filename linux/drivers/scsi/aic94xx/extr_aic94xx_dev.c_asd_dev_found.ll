; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_dev_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_dev_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_dev_found(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %11, align 8
  store %struct.asd_ha_struct* %12, %struct.asd_ha_struct** %5, align 8
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %24
  ]

21:                                               ; preds = %1
  %22 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %23 = call i32 @asd_init_sata_pm_ddb(%struct.domain_device* %22)
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %26 = call i32 @asd_init_sata_pm_port_ddb(%struct.domain_device* %25)
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %34 = call i32 @asd_init_target_ddb(%struct.domain_device* %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %27
  %36 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %37 = call i32 @asd_init_initiator_ddb(%struct.domain_device* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %24, %21
  %40 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %41 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_init_sata_pm_ddb(%struct.domain_device*) #1

declare dso_local i32 @asd_init_sata_pm_port_ddb(%struct.domain_device*) #1

declare dso_local i32 @asd_init_target_ddb(%struct.domain_device*) #1

declare dso_local i32 @asd_init_initiator_ddb(%struct.domain_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
