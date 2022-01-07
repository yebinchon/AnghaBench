; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.domain_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_change_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = call %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device* %7)
  store %struct.domain_device* %8, %struct.domain_device** %6, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %10 = call i64 @dev_is_sata(%struct.domain_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__ata_change_queue_depth(i32 %16, %struct.scsi_device* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @__ata_change_queue_depth(i32, %struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
