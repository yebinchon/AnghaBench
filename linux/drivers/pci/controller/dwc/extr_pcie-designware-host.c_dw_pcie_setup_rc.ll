; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_setup_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_setup_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i64, i64*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dw_pcie = type { i32 }

@MAX_MSI_IRQS_PER_CTRL = common dso_local global i64 0, align 8
@PCIE_MSI_INTR0_MASK = common dso_local global i64 0, align 8
@MSI_REG_CTRL_BLOCK_SIZE = common dso_local global i64 0, align 8
@PCIE_MSI_INTR0_ENABLE = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_1 = common dso_local global i64 0, align 8
@PCI_INTERRUPT_LINE = common dso_local global i64 0, align 8
@PCI_PRIMARY_BUS = common dso_local global i64 0, align 8
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_IO = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i64 0, align 8
@PCI_COMMAND_MASTER = common dso_local global i64 0, align 8
@PCI_COMMAND_SERR = common dso_local global i64 0, align 8
@PCIE_ATU_REGION_INDEX0 = common dso_local global i32 0, align 4
@PCIE_ATU_TYPE_MEM = common dso_local global i32 0, align 4
@PCIE_ATU_REGION_INDEX2 = common dso_local global i32 0, align 4
@PCIE_ATU_TYPE_IO = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_PCI = common dso_local global i64 0, align 8
@PCIE_LINK_WIDTH_SPEED_CONTROL = common dso_local global i64 0, align 8
@PORT_LOGIC_SPEED_CHANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_setup_rc(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %7 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %6, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %10 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %9)
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %12 = call i32 @dw_pcie_setup(%struct.dw_pcie* %11)
  %13 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %14 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %1
  %20 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %21 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_MSI_IRQS_PER_CTRL, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %55, %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %31 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 -1, i64* %34, align 8
  %35 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %36 = load i64, i64* @PCIE_MSI_INTR0_MASK, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @MSI_REG_CTRL_BLOCK_SIZE, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %36, %39
  %41 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %42 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %35, i64 %40, i32 4, i64 %46)
  %48 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %49 = load i64, i64* @PCIE_MSI_INTR0_ENABLE, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @MSI_REG_CTRL_BLOCK_SIZE, align 8
  %52 = mul i64 %50, %51
  %53 = add i64 %49, %52
  %54 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %48, i64 %53, i32 4, i64 -1)
  br label %55

55:                                               ; preds = %29
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %61 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %62 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %60, i64 %61, i64 4)
  %63 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %64 = load i64, i64* @PCI_BASE_ADDRESS_1, align 8
  %65 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %63, i64 %64, i64 0)
  %66 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %67 = load i64, i64* @PCI_INTERRUPT_LINE, align 8
  %68 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %66, i64 %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = and i64 %69, 4294902015
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = or i64 %71, 256
  store i64 %72, i64* %3, align 8
  %73 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %74 = load i64, i64* @PCI_INTERRUPT_LINE, align 8
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %73, i64 %74, i64 %75)
  %77 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %78 = load i64, i64* @PCI_PRIMARY_BUS, align 8
  %79 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %77, i64 %78)
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = and i64 %80, 4278190080
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = or i64 %82, 16711936
  store i64 %83, i64* %3, align 8
  %84 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %85 = load i64, i64* @PCI_PRIMARY_BUS, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %84, i64 %85, i64 %86)
  %88 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %89 = load i64, i64* @PCI_COMMAND, align 8
  %90 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %88, i64 %89)
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = and i64 %91, 4294901760
  store i64 %92, i64* %3, align 8
  %93 = load i64, i64* @PCI_COMMAND_IO, align 8
  %94 = load i64, i64* @PCI_COMMAND_MEMORY, align 8
  %95 = or i64 %93, %94
  %96 = load i64, i64* @PCI_COMMAND_MASTER, align 8
  %97 = or i64 %95, %96
  %98 = load i64, i64* @PCI_COMMAND_SERR, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* %3, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %3, align 8
  %102 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %103 = load i64, i64* @PCI_COMMAND, align 8
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %102, i64 %103, i64 %104)
  %106 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %107 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %106, i32 0, i32 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %145, label %112

112:                                              ; preds = %59
  %113 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %114 = load i32, i32* @PCIE_ATU_REGION_INDEX0, align 4
  %115 = load i32, i32* @PCIE_ATU_TYPE_MEM, align 4
  %116 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %117 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %120 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %123 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dw_pcie_prog_outbound_atu(%struct.dw_pcie* %113, i32 %114, i32 %115, i32 %118, i32 %121, i32 %124)
  %126 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %127 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %144

130:                                              ; preds = %112
  %131 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %132 = load i32, i32* @PCIE_ATU_REGION_INDEX2, align 4
  %133 = load i32, i32* @PCIE_ATU_TYPE_IO, align 4
  %134 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %135 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %138 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %141 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dw_pcie_prog_outbound_atu(%struct.dw_pcie* %131, i32 %132, i32 %133, i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %130, %112
  br label %145

145:                                              ; preds = %144, %59
  %146 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %147 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %148 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %146, i64 %147, i32 4, i64 0)
  %149 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %150 = load i64, i64* @PCI_CLASS_DEVICE, align 8
  %151 = load i64, i64* @PCI_CLASS_BRIDGE_PCI, align 8
  %152 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %149, i64 %150, i32 2, i64 %151)
  %153 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %154 = load i64, i64* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 8
  %155 = call i32 @dw_pcie_rd_own_conf(%struct.pcie_port* %153, i64 %154, i32 4, i64* %3)
  %156 = load i64, i64* @PORT_LOGIC_SPEED_CHANGE, align 8
  %157 = load i64, i64* %3, align 8
  %158 = or i64 %157, %156
  store i64 %158, i64* %3, align 8
  %159 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %160 = load i64, i64* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 8
  %161 = load i64, i64* %3, align 8
  %162 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %159, i64 %160, i32 4, i64 %161)
  %163 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %164 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %163)
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_setup(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_wr_own_conf(%struct.pcie_port*, i64, i32, i64) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i64, i64) #1

declare dso_local i64 @dw_pcie_readl_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dw_pcie_prog_outbound_atu(%struct.dw_pcie*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dw_pcie_rd_own_conf(%struct.pcie_port*, i64, i32, i64*) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
