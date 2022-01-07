; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_startup_port_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_startup_port_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i64, i32, %struct.mtk_pcie* }
%struct.mtk_pcie = type { i64, %struct.mtk_pcie_soc*, %struct.resource }
%struct.mtk_pcie_soc = type { i32, i64, i64 }
%struct.resource = type { i32 }

@PCIE_SYS_CFG_V2 = common dso_local global i64 0, align 8
@PCIE_RST_CTRL = common dso_local global i64 0, align 8
@PCIE_LINKDOWN_RST_EN = common dso_local global i32 0, align 4
@PCIE_PHY_RSTB = common dso_local global i32 0, align 4
@PCIE_PERSTB = common dso_local global i32 0, align 4
@PCIE_PIPE_SRSTB = common dso_local global i32 0, align 4
@PCIE_MAC_SRSTB = common dso_local global i32 0, align 4
@PCIE_CRSTB = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_MEDIATEK = common dso_local global i32 0, align 4
@PCIE_CONF_VEND_ID = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCIE_CONF_CLASS_ID = common dso_local global i64 0, align 8
@PCIE_CONF_DEVICE_ID = common dso_local global i64 0, align 8
@PCIE_LINK_STATUS_V2 = common dso_local global i64 0, align 8
@PCIE_PORT_LINKUP_V2 = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCIE_INT_MASK = common dso_local global i64 0, align 8
@INTX_MASK = common dso_local global i32 0, align 4
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@PCIE_AHB_TRANS_BASE0_L = common dso_local global i64 0, align 8
@PCIE_AHB_TRANS_BASE0_H = common dso_local global i64 0, align 8
@PCIE2AHB_SIZE = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@PCIE_AXI_WINDOW0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*)* @mtk_pcie_startup_port_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_startup_port_v2(%struct.mtk_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pcie_port*, align 8
  %4 = alloca %struct.mtk_pcie*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mtk_pcie_soc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %3, align 8
  %9 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %9, i32 0, i32 2
  %11 = load %struct.mtk_pcie*, %struct.mtk_pcie** %10, align 8
  store %struct.mtk_pcie* %11, %struct.mtk_pcie** %4, align 8
  %12 = load %struct.mtk_pcie*, %struct.mtk_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %12, i32 0, i32 2
  store %struct.resource* %13, %struct.resource** %5, align 8
  %14 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %14, i32 0, i32 2
  %16 = load %struct.mtk_pcie*, %struct.mtk_pcie** %15, align 8
  %17 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %16, i32 0, i32 1
  %18 = load %struct.mtk_pcie_soc*, %struct.mtk_pcie_soc** %17, align 8
  store %struct.mtk_pcie_soc* %18, %struct.mtk_pcie_soc** %6, align 8
  %19 = load %struct.mtk_pcie*, %struct.mtk_pcie** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load %struct.mtk_pcie*, %struct.mtk_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCIE_SYS_CFG_V2, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PCIE_CSR_LTSSM_EN(i32 %32)
  %34 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PCIE_CSR_ASPM_L1_EN(i32 %36)
  %38 = or i32 %33, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mtk_pcie*, %struct.mtk_pcie** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIE_SYS_CFG_V2, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %23, %1
  %49 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %50 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCIE_RST_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load i32, i32* @PCIE_LINKDOWN_RST_EN, align 4
  %56 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %57 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCIE_RST_CTRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCIE_RST_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @PCIE_PHY_RSTB, align 4
  %69 = load i32, i32* @PCIE_PERSTB, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PCIE_PIPE_SRSTB, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PCIE_MAC_SRSTB, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PCIE_CRSTB, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %81 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCIE_RST_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.mtk_pcie_soc*, %struct.mtk_pcie_soc** %6, align 8
  %87 = getelementptr inbounds %struct.mtk_pcie_soc, %struct.mtk_pcie_soc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %48
  %91 = load i32, i32* @PCI_VENDOR_ID_MEDIATEK, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %94 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PCIE_CONF_VEND_ID, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writew(i32 %92, i64 %97)
  %99 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %102 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCIE_CONF_CLASS_ID, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writew(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %90, %48
  %108 = load %struct.mtk_pcie_soc*, %struct.mtk_pcie_soc** %6, align 8
  %109 = getelementptr inbounds %struct.mtk_pcie_soc, %struct.mtk_pcie_soc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.mtk_pcie_soc*, %struct.mtk_pcie_soc** %6, align 8
  %114 = getelementptr inbounds %struct.mtk_pcie_soc, %struct.mtk_pcie_soc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %117 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCIE_CONF_DEVICE_ID, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writew(i32 %115, i64 %120)
  br label %122

122:                                              ; preds = %112, %107
  %123 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %124 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PCIE_LINK_STATUS_V2, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @PCIE_PORT_LINKUP_V2, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* @USEC_PER_MSEC, align 4
  %137 = mul nsw i32 100, %136
  %138 = call i32 @readl_poll_timeout(i64 %127, i32 %128, i32 %135, i32 20, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %122
  %142 = load i32, i32* @ETIMEDOUT, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %206

144:                                              ; preds = %122
  %145 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %146 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PCIE_INT_MASK, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readl(i64 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* @INTX_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %157 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PCIE_INT_MASK, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %163 = call i64 @IS_ENABLED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %144
  %166 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %167 = call i32 @mtk_pcie_enable_msi(%struct.mtk_pcie_port* %166)
  br label %168

168:                                              ; preds = %165, %144
  %169 = load %struct.resource*, %struct.resource** %5, align 8
  %170 = getelementptr inbounds %struct.resource, %struct.resource* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @lower_32_bits(i32 %171)
  %173 = load %struct.resource*, %struct.resource** %5, align 8
  %174 = call i32 @resource_size(%struct.resource* %173)
  %175 = call i32 @fls(i32 %174)
  %176 = call i32 @AHB2PCIE_SIZE(i32 %175)
  %177 = or i32 %172, %176
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %180 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PCIE_AHB_TRANS_BASE0_L, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  %185 = load %struct.resource*, %struct.resource** %5, align 8
  %186 = getelementptr inbounds %struct.resource, %struct.resource* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @upper_32_bits(i32 %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %191 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @PCIE_AHB_TRANS_BASE0_H, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load i32, i32* @PCIE2AHB_SIZE, align 4
  %197 = load i32, i32* @WIN_ENABLE, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %201 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @PCIE_AXI_WINDOW0, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 %199, i64 %204)
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %168, %141
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PCIE_CSR_LTSSM_EN(i32) #1

declare dso_local i32 @PCIE_CSR_ASPM_L1_EN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mtk_pcie_enable_msi(%struct.mtk_pcie_port*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @AHB2PCIE_SIZE(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
