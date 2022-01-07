; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_try_ata_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_try_ata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.domain_device* }
%struct.domain_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_try_ata_reset(%struct.asd_sas_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca %struct.domain_device*, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  store %struct.domain_device* null, %struct.domain_device** %4, align 8
  %5 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %6 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %11 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  store %struct.domain_device* %14, %struct.domain_device** %4, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %17 = icmp ne %struct.domain_device* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.domain_device* @sas_find_dev_by_rphy(i32 %21)
  store %struct.domain_device* %22, %struct.domain_device** %4, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %25 = icmp ne %struct.domain_device* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %28 = call i64 @dev_is_sata(%struct.domain_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %32 = call i32 @sas_ata_schedule_reset(%struct.domain_device* %31)
  %33 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %34 = call i32 @sas_ata_wait_eh(%struct.domain_device* %33)
  store i32 0, i32* %2, align 4
  br label %38

35:                                               ; preds = %26, %23
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_schedule_reset(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_wait_eh(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
