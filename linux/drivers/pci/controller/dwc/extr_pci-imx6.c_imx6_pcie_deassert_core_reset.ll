; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_deassert_core_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_deassert_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__*, i32, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to enable vpcie regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to enable pcie_phy clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to enable pcie_bus clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to enable pcie clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to enable pcie ref clock\0A\00", align 1
@PCIE_PHY_CMN_REG4_DCC_FB_EN = common dso_local global i32 0, align 4
@PCIE_PHY_CMN_REG4 = common dso_local global i64 0, align 8
@PCIE_PHY_CMN_REG24_RX_EQ_SEL = common dso_local global i32 0, align 4
@PCIE_PHY_CMN_REG24_RX_EQ = common dso_local global i32 0, align 4
@PCIE_PHY_CMN_REG24 = common dso_local global i64 0, align 8
@PCIE_PHY_CMN_REG26_ATT_MODE = common dso_local global i32 0, align 4
@PCIE_PHY_CMN_REG26 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [79 x i8] c"Unable to apply ERR010728 workaround. DT missing fsl,imx7d-pcie-phy phandle ?\0A\00", align 1
@IOMUXC_GPR5 = common dso_local global i32 0, align 4
@IMX6SX_GPR5_PCIE_BTNRST_RESET = common dso_local global i32 0, align 4
@IOMUXC_GPR1 = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_SW_RST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to disable vpcie regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_pcie*)* @imx6_pcie_deassert_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_deassert_core_reset(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %6 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %6, i32 0, i32 10
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %13 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %18 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @regulator_is_enabled(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %24 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @regulator_enable(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %204

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %16, %1
  %35 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %36 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_prepare_enable(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %181

44:                                               ; preds = %34
  %45 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %46 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_prepare_enable(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %176

54:                                               ; preds = %44
  %55 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %56 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @clk_prepare_enable(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %171

64:                                               ; preds = %54
  %65 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %66 = call i32 @imx6_pcie_enable_ref_clk(%struct.imx6_pcie* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %166

72:                                               ; preds = %64
  %73 = call i32 @usleep_range(i32 200, i32 500)
  %74 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %75 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @gpio_is_valid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  %80 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %81 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %84 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gpio_set_value_cansleep(i32 %82, i32 %85)
  %87 = call i32 @msleep(i32 100)
  %88 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %89 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %92 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @gpio_set_value_cansleep(i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %79, %72
  %99 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %100 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %99, i32 0, i32 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %165 [
    i32 128, label %104
    i32 129, label %109
    i32 130, label %149
    i32 131, label %156
    i32 132, label %164
  ]

104:                                              ; preds = %98
  %105 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %106 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @reset_control_deassert(i32 %107)
  br label %165

109:                                              ; preds = %98
  %110 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %111 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @reset_control_deassert(i32 %112)
  %114 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %115 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @likely(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %109
  %120 = load i32, i32* @PCIE_PHY_CMN_REG4_DCC_FB_EN, align 4
  %121 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %122 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PCIE_PHY_CMN_REG4, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  %127 = load i32, i32* @PCIE_PHY_CMN_REG24_RX_EQ_SEL, align 4
  %128 = load i32, i32* @PCIE_PHY_CMN_REG24_RX_EQ, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %131 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PCIE_PHY_CMN_REG24, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %129, i64 %134)
  %136 = load i32, i32* @PCIE_PHY_CMN_REG26_ATT_MODE, align 4
  %137 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %138 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PCIE_PHY_CMN_REG26, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %136, i64 %141)
  br label %146

143:                                              ; preds = %109
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = call i32 @dev_warn(%struct.device* %144, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %119
  %147 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %148 = call i32 @imx7d_pcie_wait_for_phy_pll_lock(%struct.imx6_pcie* %147)
  br label %165

149:                                              ; preds = %98
  %150 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %151 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IOMUXC_GPR5, align 4
  %154 = load i32, i32* @IMX6SX_GPR5_PCIE_BTNRST_RESET, align 4
  %155 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %154, i32 0)
  br label %165

156:                                              ; preds = %98
  %157 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %158 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IOMUXC_GPR1, align 4
  %161 = load i32, i32* @IMX6Q_GPR1_PCIE_SW_RST, align 4
  %162 = call i32 @regmap_update_bits(i32 %159, i32 %160, i32 %161, i32 0)
  %163 = call i32 @usleep_range(i32 200, i32 500)
  br label %165

164:                                              ; preds = %98
  br label %165

165:                                              ; preds = %98, %164, %156, %149, %146, %104
  br label %204

166:                                              ; preds = %69
  %167 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %168 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @clk_disable_unprepare(i32 %169)
  br label %171

171:                                              ; preds = %166, %61
  %172 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %173 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @clk_disable_unprepare(i32 %174)
  br label %176

176:                                              ; preds = %171, %51
  %177 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %178 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @clk_disable_unprepare(i32 %179)
  br label %181

181:                                              ; preds = %176, %41
  %182 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %183 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %181
  %187 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %188 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @regulator_is_enabled(i64 %189)
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %186
  %193 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %194 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @regulator_disable(i64 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %199, %192
  br label %204

204:                                              ; preds = %29, %165, %203, %186, %181
  ret void
}

declare dso_local i64 @regulator_is_enabled(i64) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @imx6_pcie_enable_ref_clk(%struct.imx6_pcie*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @likely(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @imx7d_pcie_wait_for_phy_pll_lock(%struct.imx6_pcie*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
