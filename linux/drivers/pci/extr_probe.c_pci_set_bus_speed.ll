; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@PCI_CAP_ID_AGP3 = common dso_local global i32 0, align 4
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@PCI_AGP_COMMAND = common dso_local global i64 0, align 8
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_BRIDGE_SSTATUS = common dso_local global i64 0, align 8
@PCI_X_SSTATUS_533MHZ = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_533 = common dso_local global i32 0, align 4
@PCI_X_SSTATUS_266MHZ = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_X_SSTATUS_133MHZ = common dso_local global i32 0, align 4
@PCI_X_SSTATUS_VERS = common dso_local global i32 0, align 4
@PCI_X_SSTATUS_V2 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@pcix_bus_speed = common dso_local global i8** null, align 8
@PCI_X_SSTATUS_FREQ = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@pcie_link_speed = common dso_local global i32* null, align 8
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_DLLLARC = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_set_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_set_bus_speed(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %11 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %3, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %16 = call i32 @pci_find_capability(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @PCI_CAP_ID_AGP3, align 4
  %22 = call i32 @pci_find_capability(%struct.pci_dev* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_AGP_STATUS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i64 %31, i32* %5)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 7
  %37 = call i8* @agp_speed(i32 %34, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PCI_AGP_COMMAND, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @pci_read_config_dword(%struct.pci_dev* %41, i64 %45, i32* %6)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 7
  %51 = call i8* @agp_speed(i32 %48, i32 %50)
  %52 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %53 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %26, %23
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %57 = call i32 @pci_find_capability(%struct.pci_dev* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %54
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @PCI_X_BRIDGE_SSTATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %61, i64 %65, i32* %7)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PCI_X_SSTATUS_533MHZ, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @PCI_SPEED_133MHz_PCIX_533, align 4
  store i32 %72, i32* %8, align 4
  br label %100

73:                                               ; preds = %60
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PCI_X_SSTATUS_266MHZ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @PCI_SPEED_133MHz_PCIX_266, align 4
  store i32 %79, i32* %8, align 4
  br label %99

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PCI_X_SSTATUS_133MHZ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PCI_X_SSTATUS_VERS, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @PCI_X_SSTATUS_V2, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @PCI_SPEED_133MHz_PCIX_ECC, align 4
  store i32 %92, i32* %8, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %98

96:                                               ; preds = %80
  %97 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %103 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i8**, i8*** @pcix_bus_speed, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @PCI_X_SSTATUS_FREQ, align 4
  %107 = and i32 %105, %106
  %108 = ashr i32 %107, 6
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %104, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %113 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %146

114:                                              ; preds = %54
  %115 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %116 = call i64 @pci_is_pcie(%struct.pci_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %114
  %119 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %120 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %121 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %119, i32 %120, i32* %9)
  %122 = load i32*, i32** @pcie_link_speed, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %125 = and i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %130 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @PCI_EXP_LNKCAP_DLLLARC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %141 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %142 = call i32 @pcie_capability_read_word(%struct.pci_dev* %140, i32 %141, i32* %10)
  %143 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @pcie_update_link_speed(%struct.pci_bus* %143, i32 %144)
  br label %146

146:                                              ; preds = %100, %118, %114
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i8* @agp_speed(i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_update_link_speed(%struct.pci_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
