; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-bus.c_umc_match_pci_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-bus.c_umc_match_pci_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_driver = type { %struct.pci_device_id* }
%struct.pci_device_id = type { i32 }
%struct.umc_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umc_match_pci_id(%struct.umc_driver* %0, %struct.umc_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umc_driver*, align 8
  %5 = alloca %struct.umc_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.umc_driver* %0, %struct.umc_driver** %4, align 8
  store %struct.umc_dev* %1, %struct.umc_dev** %5, align 8
  %8 = load %struct.umc_driver*, %struct.umc_driver** %4, align 8
  %9 = getelementptr inbounds %struct.umc_driver, %struct.umc_driver* %8, i32 0, i32 0
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  store %struct.pci_device_id* %10, %struct.pci_device_id** %6, align 8
  %11 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_is_pci(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %20 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pci_dev* @to_pci_dev(i32 %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %7, align 8
  %24 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = call i32* @pci_match_id(%struct.pci_device_id* %24, %struct.pci_dev* %25)
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_is_pci(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32* @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
