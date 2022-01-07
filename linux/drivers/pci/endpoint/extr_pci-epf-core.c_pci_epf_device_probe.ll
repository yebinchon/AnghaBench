; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_epf = type { %struct.pci_epf_driver* }
%struct.pci_epf_driver = type { i32 (%struct.pci_epf.0*)* }
%struct.pci_epf.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pci_epf_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_epf*, align 8
  %5 = alloca %struct.pci_epf_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pci_epf* @to_pci_epf(%struct.device* %6)
  store %struct.pci_epf* %7, %struct.pci_epf** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_epf_driver* @to_pci_epf_driver(i32 %10)
  store %struct.pci_epf_driver* %11, %struct.pci_epf_driver** %5, align 8
  %12 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %5, align 8
  %13 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.pci_epf.0*)*, i32 (%struct.pci_epf.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.pci_epf.0*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %5, align 8
  %21 = load %struct.pci_epf*, %struct.pci_epf** %4, align 8
  %22 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %21, i32 0, i32 0
  store %struct.pci_epf_driver* %20, %struct.pci_epf_driver** %22, align 8
  %23 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %5, align 8
  %24 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.pci_epf.0*)*, i32 (%struct.pci_epf.0*)** %24, align 8
  %26 = load %struct.pci_epf*, %struct.pci_epf** %4, align 8
  %27 = bitcast %struct.pci_epf* %26 to %struct.pci_epf.0*
  %28 = call i32 %25(%struct.pci_epf.0* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.pci_epf* @to_pci_epf(%struct.device*) #1

declare dso_local %struct.pci_epf_driver* @to_pci_epf_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
