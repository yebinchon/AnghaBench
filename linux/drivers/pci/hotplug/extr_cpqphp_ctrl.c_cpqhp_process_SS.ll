; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_process_SS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_process_SS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.pci_func = type { i64, i32, i32 }
%struct.slot = type { i32 }

@PCI_BASE_CLASS_DISPLAY = common dso_local global i64 0, align 8
@REMOVE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_VGA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpqhp_process_SS(%struct.controller* %0, %struct.pci_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  %5 = alloca %struct.pci_func*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.slot*, align 8
  %15 = alloca %struct.pci_bus*, align 8
  %16 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %4, align 8
  store %struct.pci_func* %1, %struct.pci_func** %5, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.controller*, %struct.controller** %4, align 8
  %18 = getelementptr inbounds %struct.controller, %struct.controller* %17, i32 0, i32 2
  %19 = load %struct.pci_bus*, %struct.pci_bus** %18, align 8
  store %struct.pci_bus* %19, %struct.pci_bus** %15, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %21 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.controller*, %struct.controller** %4, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = trunc i64 %27 to i32
  %30 = call %struct.pci_func* @cpqhp_slot_find(i32 %25, i64 %26, i32 %29)
  store %struct.pci_func* %30, %struct.pci_func** %5, align 8
  %31 = load %struct.controller*, %struct.controller** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.slot* @cpqhp_find_slot(%struct.controller* %31, i64 %32)
  store %struct.slot* %33, %struct.slot** %14, align 8
  %34 = load %struct.slot*, %struct.slot** %14, align 8
  %35 = icmp ne %struct.slot* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.slot*, %struct.slot** %14, align 8
  %38 = getelementptr inbounds %struct.slot, %struct.slot* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %36, %2
  br label %41

41:                                               ; preds = %108, %40
  %42 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %43 = icmp ne %struct.pci_func* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %117

50:                                               ; preds = %48
  %51 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %52 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  %55 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %57 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %60 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PCI_DEVFN(i64 %58, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %63, i32 %64, i32 11, i64* %7)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %3, align 4
  br label %147

70:                                               ; preds = %50
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @PCI_BASE_CLASS_DISPLAY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @REMOVE_NOT_SUPPORTED, align 4
  store i32 %75, i32* %12, align 4
  br label %108

76:                                               ; preds = %70
  %77 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %80 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %77, i32 %78, i32 %79, i64* %8)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %3, align 4
  br label %147

85:                                               ; preds = %76
  %86 = load i64, i64* %8, align 8
  %87 = and i64 %86, 127
  %88 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %94 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %91, i32 %92, i32 %93, i64* %9)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %147

99:                                               ; preds = %90
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @PCI_BRIDGE_CTL_VGA, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @REMOVE_NOT_SUPPORTED, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %74
  %109 = load %struct.controller*, %struct.controller** %4, align 8
  %110 = getelementptr inbounds %struct.controller, %struct.controller* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %10, align 8
  %115 = trunc i64 %113 to i32
  %116 = call %struct.pci_func* @cpqhp_slot_find(i32 %111, i64 %112, i32 %115)
  store %struct.pci_func* %116, %struct.pci_func** %5, align 8
  br label %41

117:                                              ; preds = %48
  %118 = load %struct.controller*, %struct.controller** %4, align 8
  %119 = getelementptr inbounds %struct.controller, %struct.controller* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %6, align 8
  %122 = call %struct.pci_func* @cpqhp_slot_find(i32 %120, i64 %121, i32 0)
  store %struct.pci_func* %122, %struct.pci_func** %5, align 8
  %123 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %124 = icmp ne %struct.pci_func* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %125
  %129 = load %struct.controller*, %struct.controller** %4, align 8
  %130 = getelementptr inbounds %struct.controller, %struct.controller* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %11, align 8
  %136 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.controller*, %struct.controller** %4, align 8
  %139 = call i32 @remove_board(%struct.pci_func* %136, i64 %137, %struct.controller* %138)
  store i32 %139, i32* %12, align 4
  br label %145

140:                                              ; preds = %125, %117
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i32 1, i32* %12, align 4
  br label %144

144:                                              ; preds = %143, %140
  br label %145

145:                                              ; preds = %144, %128
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %97, %83, %68
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i64, i32) #1

declare dso_local %struct.slot* @cpqhp_find_slot(%struct.controller*, i64) #1

declare dso_local i32 @PCI_DEVFN(i64, i32) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i64*) #1

declare dso_local i32 @remove_board(%struct.pci_func*, i64, %struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
