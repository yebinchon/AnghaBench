; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.h_sci_remote_device_node_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.h_sci_remote_device_node_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { %struct.domain_device* }
%struct.domain_device = type { i64 }

@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@SCU_SSP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_remote_device*)* @sci_remote_device_node_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_device_node_count(%struct.isci_remote_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  %5 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %6 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %5, i32 0, i32 0
  %7 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  store %struct.domain_device* %7, %struct.domain_device** %4, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %9 = call i64 @dev_is_sata(%struct.domain_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @SCU_SSP_REMOTE_NODE_COUNT, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
