; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@dev_attr_ssb_sprom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pci_init(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %7 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %4, align 8
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 1
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @device_create_file(i32* %20, i32* @dev_attr_ssb_sprom)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
