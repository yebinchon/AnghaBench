; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx31_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx31_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32, i64, i64, i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.spi_transfer = type { i32 }

@MX31_CSPICTRL_ENABLE = common dso_local global i32 0, align 4
@MX31_CSPICTRL_MASTER = common dso_local global i32 0, align 4
@MX31_CSPICTRL_DR_SHIFT = common dso_local global i32 0, align 4
@MX35_CSPICTRL_BL_SHIFT = common dso_local global i32 0, align 4
@MX31_CSPICTRL_SSCTL = common dso_local global i32 0, align 4
@MX31_CSPICTRL_BC_SHIFT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@MX31_CSPICTRL_PHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@MX31_CSPICTRL_POL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@MX31_CSPICTRL_SSPOL = common dso_local global i32 0, align 4
@MX35_CSPICTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MX31_CSPICTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MX31_CSPICTRL_SMC = common dso_local global i32 0, align 4
@MXC_CSPICTRL = common dso_local global i64 0, align 8
@MX31_CSPI_TESTREG = common dso_local global i64 0, align 8
@SPI_LOOP = common dso_local global i32 0, align 4
@MX31_TEST_LBC = common dso_local global i32 0, align 4
@MX31_DMAREG_RH_DEN = common dso_local global i32 0, align 4
@MX31_DMAREG_TH_DEN = common dso_local global i32 0, align 4
@MX31_CSPI_DMAREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)* @mx31_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_prepare_transfer(%struct.spi_imx_data* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_imx_data*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load i32, i32* @MX31_CSPICTRL_ENABLE, align 4
  %10 = load i32, i32* @MX31_CSPICTRL_MASTER, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %13 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spi_imx_clkdiv_2(i32 %14, i32 %17, i32* %8)
  %19 = load i32, i32* @MX31_CSPICTRL_DR_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %25 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %27 = call i64 @is_imx35_cspi(%struct.spi_imx_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %31 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @MX35_CSPICTRL_BL_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @MX31_CSPICTRL_SSCTL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %43 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @MX31_CSPICTRL_BC_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %41, %29
  %51 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPI_CPHA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @MX31_CSPICTRL_PHA, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SPI_CPOL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @MX31_CSPICTRL_POL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SPI_CS_HIGH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @MX31_CSPICTRL_SSPOL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @gpio_is_valid(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %83
  %90 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %94 = call i64 @is_imx35_cspi(%struct.spi_imx_data* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @MX35_CSPICTRL_CS_SHIFT, align 4
  br label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @MX31_CSPICTRL_CS_SHIFT, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = shl i32 %92, %101
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %83
  %106 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %107 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @MX31_CSPICTRL_SMC, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %117 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MXC_CSPICTRL, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %123 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @MX31_CSPI_TESTREG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %7, align 4
  %128 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %129 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SPI_LOOP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %114
  %135 = load i32, i32* @MX31_TEST_LBC, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %143

138:                                              ; preds = %114
  %139 = load i32, i32* @MX31_TEST_LBC, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %146 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MX31_CSPI_TESTREG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  %151 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %152 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load i32, i32* @MX31_DMAREG_RH_DEN, align 4
  %157 = load i32, i32* @MX31_DMAREG_TH_DEN, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %160 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MX31_CSPI_DMAREG, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  br label %165

165:                                              ; preds = %155, %143
  ret i32 0
}

declare dso_local i32 @spi_imx_clkdiv_2(i32, i32, i32*) #1

declare dso_local i64 @is_imx35_cspi(%struct.spi_imx_data*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
