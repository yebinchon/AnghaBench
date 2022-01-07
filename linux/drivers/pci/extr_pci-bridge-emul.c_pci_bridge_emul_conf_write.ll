; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-bridge-emul.c_pci_bridge_emul_conf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-bridge-emul.c_pci_bridge_emul_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.pci_bridge_reg_behavior*, i32, %struct.TYPE_2__*, %struct.pci_bridge_reg_behavior*, i32, i64 }
%struct.TYPE_2__ = type { void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* }
%struct.pci_bridge_reg_behavior = type { i32, i32 }

@PCI_CAP_PCIE_END = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONF_END = common dso_local global i32 0, align 4
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_CAP_PCIE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_bridge_emul_conf_write(%struct.pci_bridge_emul* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bridge_emul*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.pci_bridge_reg_behavior*, align 8
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %22 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PCI_CAP_PCIE_END, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %30, i32* %5, align 4
  br label %170

31:                                               ; preds = %25, %4
  %32 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %33 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PCI_BRIDGE_CONF_END, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %41, i32* %5, align 4
  br label %170

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 3
  %45 = mul nsw i32 %44, 8
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %11, align 4
  br label %65

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = shl i32 65535, %53
  store i32 %54, i32* %11, align 4
  br label %64

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = shl i32 255, %59
  store i32 %60, i32* %11, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %62, i32* %5, align 4
  br label %170

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @pci_bridge_emul_conf_read(%struct.pci_bridge_emul* %66, i32 %67, i32 4, i32* %13)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %170

74:                                               ; preds = %65
  %75 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %76 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PCI_CAP_PCIE_START, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load i32, i32* @PCI_CAP_PCIE_START, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %88 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %90, align 8
  store void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* %91, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %16, align 8
  %92 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %93 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %92, i32 0, i32 4
  store i32* %93, i32** %17, align 8
  %94 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %95 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %94, i32 0, i32 3
  %96 = load %struct.pci_bridge_reg_behavior*, %struct.pci_bridge_reg_behavior** %95, align 8
  store %struct.pci_bridge_reg_behavior* %96, %struct.pci_bridge_reg_behavior** %18, align 8
  br label %108

97:                                               ; preds = %79, %74
  %98 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %99 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %101, align 8
  store void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* %102, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %16, align 8
  %103 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %104 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %103, i32 0, i32 1
  store i32* %104, i32** %17, align 8
  %105 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %106 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %105, i32 0, i32 0
  %107 = load %struct.pci_bridge_reg_behavior*, %struct.pci_bridge_reg_behavior** %106, align 8
  store %struct.pci_bridge_reg_behavior* %107, %struct.pci_bridge_reg_behavior** %18, align 8
  br label %108

108:                                              ; preds = %97, %83
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %11, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.pci_bridge_reg_behavior*, %struct.pci_bridge_reg_behavior** %18, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sdiv i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %112, i64 %115
  %117 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, -1
  %120 = or i32 %111, %119
  %121 = and i32 %109, %120
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %15, align 4
  %124 = shl i32 %122, %123
  %125 = load %struct.pci_bridge_reg_behavior*, %struct.pci_bridge_reg_behavior** %18, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sdiv i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %125, i64 %128
  %130 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = and i32 %131, %132
  %134 = and i32 %124, %133
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %15, align 4
  %139 = shl i32 %137, %138
  %140 = load %struct.pci_bridge_reg_behavior*, %struct.pci_bridge_reg_behavior** %18, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sdiv i32 %141, 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %140, i64 %143
  %145 = getelementptr inbounds %struct.pci_bridge_reg_behavior, %struct.pci_bridge_reg_behavior* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %146, %147
  %149 = and i32 %139, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %14, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sdiv i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %16, align 8
  %160 = icmp ne void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %108
  %162 = load void (%struct.pci_bridge_emul*, i32, i32, i32, i32)*, void (%struct.pci_bridge_emul*, i32, i32, i32, i32)** %16, align 8
  %163 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %11, align 4
  call void %162(%struct.pci_bridge_emul* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  br label %168

168:                                              ; preds = %161, %108
  %169 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %72, %61, %40, %29
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @pci_bridge_emul_conf_read(%struct.pci_bridge_emul*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
