; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_end_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_end_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sas_rphy = type { i64 }
%struct.sas_end_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sas_end_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_end_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca %struct.sas_end_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sas_rphy* @dev_to_rphy(%struct.device* %5)
  store %struct.sas_rphy* %6, %struct.sas_rphy** %3, align 8
  %7 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %8 = call %struct.sas_end_device* @rphy_to_end_device(%struct.sas_rphy* %7)
  store %struct.sas_end_device* %8, %struct.sas_end_device** %4, align 8
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %10 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %15 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @blk_cleanup_queue(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @put_device(i32 %21)
  %23 = load %struct.sas_end_device*, %struct.sas_end_device** %4, align 8
  %24 = call i32 @kfree(%struct.sas_end_device* %23)
  ret void
}

declare dso_local %struct.sas_rphy* @dev_to_rphy(%struct.device*) #1

declare dso_local %struct.sas_end_device* @rphy_to_end_device(%struct.sas_rphy*) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.sas_end_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
