; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_get_max_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_get_max_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PROG_INTERFACE = common dso_local global i32 0, align 4
@SLOT_AVAIL1 = common dso_local global i32 0, align 4
@SLOT_AVAIL2 = common dso_local global i32 0, align 4
@SLOT_133MHZ_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_533 = common dso_local global i32 0, align 4
@SLOT_100MHZ_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_533 = common dso_local global i32 0, align 4
@SLOT_66MHZ_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_533 = common dso_local global i32 0, align 4
@SLOT_133MHZ_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_266 = common dso_local global i32 0, align 4
@SLOT_100MHZ_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_266 = common dso_local global i32 0, align 4
@SLOT_66MHZ_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_266 = common dso_local global i32 0, align 4
@SLOT_133MHZ_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@SLOT_100MHZ_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@SLOT_66MHZ_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@SLOT_66MHZ = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@SLOT_33MHZ = common dso_local global i32 0, align 4
@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Max bus speed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @shpc_get_max_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpc_get_max_bus_speed(%struct.controller* %0) #0 {
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
  %16 = load i32, i32* @PROG_INTERFACE, align 4
  %17 = call i32 @shpc_readb(%struct.controller* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.controller*, %struct.controller** %2, align 8
  %19 = load i32, i32* @SLOT_AVAIL1, align 4
  %20 = call i32 @shpc_readl(%struct.controller* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.controller*, %struct.controller** %2, align 8
  %22 = load i32, i32* @SLOT_AVAIL2, align 4
  %23 = call i32 @shpc_readl(%struct.controller* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %74

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SLOT_133MHZ_PCIX_533, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @PCI_SPEED_133MHz_PCIX_533, align 4
  store i32 %32, i32* %5, align 4
  br label %73

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SLOT_100MHZ_PCIX_533, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PCI_SPEED_100MHz_PCIX_533, align 4
  store i32 %39, i32* %5, align 4
  br label %72

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SLOT_66MHZ_PCIX_533, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @PCI_SPEED_66MHz_PCIX_533, align 4
  store i32 %46, i32* %5, align 4
  br label %71

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SLOT_133MHZ_PCIX_266, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PCI_SPEED_133MHz_PCIX_266, align 4
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SLOT_100MHZ_PCIX_266, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @PCI_SPEED_100MHz_PCIX_266, align 4
  store i32 %60, i32* %5, align 4
  br label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SLOT_66MHZ_PCIX_266, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @PCI_SPEED_66MHz_PCIX_266, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %31
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SLOT_133MHZ_PCIX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  store i32 %84, i32* %5, align 4
  br label %120

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SLOT_100MHZ_PCIX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  store i32 %91, i32* %5, align 4
  br label %119

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SLOT_66MHZ_PCIX, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  store i32 %98, i32* %5, align 4
  br label %118

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @SLOT_66MHZ, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @PCI_SPEED_66MHz, align 4
  store i32 %105, i32* %5, align 4
  br label %117

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SLOT_33MHZ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @PCI_SPEED_33MHz, align 4
  store i32 %112, i32* %5, align 4
  br label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %113, %111
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118, %90
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %74
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %124 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.controller*, %struct.controller** %2, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ctrl_dbg(%struct.controller* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @shpc_readb(%struct.controller*, i32) #1

declare dso_local i32 @shpc_readl(%struct.controller*, i32) #1

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
