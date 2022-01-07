; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_get_cur_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_get_cur_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@SEC_BUS_CONFIG = common dso_local global i32 0, align 4
@PROG_INTERFACE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_533 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Current bus speed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @shpc_get_cur_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpc_get_cur_bus_speed(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.controller*, %struct.controller** %2, align 8
  %10 = getelementptr inbounds %struct.controller, %struct.controller* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  store %struct.pci_bus* %13, %struct.pci_bus** %4, align 8
  %14 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = load i32, i32* @SEC_BUS_CONFIG, align 4
  %17 = call i32 @shpc_readw(%struct.controller* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.controller*, %struct.controller** %2, align 8
  %19 = load i32, i32* @PROG_INTERFACE, align 4
  %20 = call i32 @shpc_readb(%struct.controller* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 15
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 7
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %73

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %69 [
    i32 0, label %41
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
    i32 4, label %49
    i32 5, label %51
    i32 6, label %53
    i32 7, label %55
    i32 8, label %57
    i32 9, label %59
    i32 10, label %61
    i32 11, label %63
    i32 12, label %65
    i32 13, label %67
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @PCI_SPEED_33MHz, align 4
  store i32 %42, i32* %5, align 4
  br label %72

43:                                               ; preds = %39
  %44 = load i32, i32* @PCI_SPEED_66MHz, align 4
  store i32 %44, i32* %5, align 4
  br label %72

45:                                               ; preds = %39
  %46 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  store i32 %46, i32* %5, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  store i32 %48, i32* %5, align 4
  br label %72

49:                                               ; preds = %39
  %50 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %39
  %52 = load i32, i32* @PCI_SPEED_66MHz_PCIX_ECC, align 4
  store i32 %52, i32* %5, align 4
  br label %72

53:                                               ; preds = %39
  %54 = load i32, i32* @PCI_SPEED_100MHz_PCIX_ECC, align 4
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %39
  %56 = load i32, i32* @PCI_SPEED_133MHz_PCIX_ECC, align 4
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %39
  %58 = load i32, i32* @PCI_SPEED_66MHz_PCIX_266, align 4
  store i32 %58, i32* %5, align 4
  br label %72

59:                                               ; preds = %39
  %60 = load i32, i32* @PCI_SPEED_100MHz_PCIX_266, align 4
  store i32 %60, i32* %5, align 4
  br label %72

61:                                               ; preds = %39
  %62 = load i32, i32* @PCI_SPEED_133MHz_PCIX_266, align 4
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %39
  %64 = load i32, i32* @PCI_SPEED_66MHz_PCIX_533, align 4
  store i32 %64, i32* %5, align 4
  br label %72

65:                                               ; preds = %39
  %66 = load i32, i32* @PCI_SPEED_100MHz_PCIX_533, align 4
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %39
  %68 = load i32, i32* @PCI_SPEED_133MHz_PCIX_533, align 4
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %39
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %76 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @shpc_readw(%struct.controller*, i32) #1

declare dso_local i32 @shpc_readb(%struct.controller*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
