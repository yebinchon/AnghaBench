; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.pci_epf = type { i32 }
%struct.pci_epf_driver = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @pci_epf_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.pci_epf*, align 8
  %7 = alloca %struct.pci_epf_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.pci_epf* @to_pci_epf(%struct.device* %8)
  store %struct.pci_epf* %9, %struct.pci_epf** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.pci_epf_driver* @to_pci_epf_driver(%struct.device_driver* %10)
  store %struct.pci_epf_driver* %11, %struct.pci_epf_driver** %7, align 8
  %12 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %7, align 8
  %13 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %7, align 8
  %18 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %21 = call i32 @pci_epf_match_id(i64 %19, %struct.pci_epf* %20)
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %24 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %27 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.pci_epf* @to_pci_epf(%struct.device*) #1

declare dso_local %struct.pci_epf_driver* @to_pci_epf_driver(%struct.device_driver*) #1

declare dso_local i32 @pci_epf_match_id(i64, %struct.pci_epf*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
