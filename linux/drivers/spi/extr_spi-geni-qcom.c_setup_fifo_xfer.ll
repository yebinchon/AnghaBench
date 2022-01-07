; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_setup_fifo_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_setup_fifo_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_transfer = type { i32, i64, i32, i64, i64 }
%struct.spi_geni_master = type { i32, i64, i32, i32, i32, i32, %struct.spi_transfer*, i32, %struct.geni_se }
%struct.geni_se = type { i64 }
%struct.spi_master = type { i32 }

@SE_SPI_TRANS_CFG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Err setting clks:%d\0A\00", align 1
@CLK_SEL_MSK = common dso_local global i32 0, align 4
@CLK_DIV_SHFT = common dso_local global i32 0, align 4
@SER_CLK_EN = common dso_local global i32 0, align 4
@SE_GENI_CLK_SEL = common dso_local global i64 0, align 8
@GENI_SER_M_CLK_CFG = common dso_local global i64 0, align 8
@SPI_FULL_DUPLEX = common dso_local global i32 0, align 4
@SPI_TX_ONLY = common dso_local global i32 0, align 4
@SPI_RX_ONLY = common dso_local global i32 0, align 4
@CS_TOGGLE = common dso_local global i32 0, align 4
@MIN_WORD_LEN = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@TRANS_LEN_MSK = common dso_local global i32 0, align 4
@SE_SPI_TX_TRANS_LEN = common dso_local global i64 0, align 8
@SE_SPI_RX_TRANS_LEN = common dso_local global i64 0, align 8
@CMD_XFER = common dso_local global i32 0, align 4
@FRAGMENTATION = common dso_local global i32 0, align 4
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_transfer*, %struct.spi_geni_master*, i32, %struct.spi_master*)* @setup_fifo_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_fifo_xfer(%struct.spi_transfer* %0, %struct.spi_geni_master* %1, i32 %2, %struct.spi_master* %3) #0 {
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_geni_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.geni_se*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_transfer* %0, %struct.spi_transfer** %5, align 8
  store %struct.spi_geni_master* %1, %struct.spi_geni_master** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.spi_master* %3, %struct.spi_master** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %19 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %18, i32 0, i32 8
  store %struct.geni_se* %19, %struct.geni_se** %12, align 8
  %20 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %21 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SE_SPI_TRANS_CFG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %30 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %4
  %34 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @spi_setup_word_len(%struct.spi_geni_master* %34, i32 %35, i32 %38)
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %44 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %33, %4
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %50 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %95

53:                                               ; preds = %45
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %58 = call i32 @get_spi_clk_cfg(i64 %56, %struct.spi_geni_master* %57, i32* %16, i32* %17)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %63 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %230

67:                                               ; preds = %53
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %72 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @CLK_SEL_MSK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @CLK_DIV_SHFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* @SER_CLK_EN, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %83 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SE_GENI_CLK_SEL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %90 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GENI_SER_M_CLK_CFG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %67, %45
  %96 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %97 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  %98 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %99 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %101 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %106 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @SPI_FULL_DUPLEX, align 4
  store i32 %110, i32* %9, align 4
  br label %127

111:                                              ; preds = %104, %95
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @SPI_TX_ONLY, align 4
  store i32 %117, i32* %9, align 4
  br label %126

118:                                              ; preds = %111
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %120 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @SPI_RX_ONLY, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %118
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %109
  %128 = load i32, i32* @CS_TOGGLE, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %133 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MIN_WORD_LEN, align 4
  %136 = srem i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %127
  %139 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %140 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BITS_PER_BYTE, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %145 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %143, %146
  store i32 %147, i32* %11, align 4
  br label %159

148:                                              ; preds = %127
  %149 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %150 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %153 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @BITS_PER_BYTE, align 4
  %156 = sdiv i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = sdiv i32 %151, %157
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %148, %138
  %160 = load i32, i32* @TRANS_LEN_MSK, align 4
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %164 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %165 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %164, i32 0, i32 6
  store %struct.spi_transfer* %163, %struct.spi_transfer** %165, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @SPI_TX_ONLY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %159
  %171 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %172 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %175 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %178 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SE_SPI_TX_TRANS_LEN, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @writel(i32 %176, i64 %181)
  br label %183

183:                                              ; preds = %170, %159
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @SPI_RX_ONLY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %191 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SE_SPI_RX_TRANS_LEN, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %197 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %200 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %188, %183
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %204 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SE_SPI_TRANS_CFG, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 %202, i64 %207)
  %209 = load i32, i32* @CMD_XFER, align 4
  %210 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %211 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %210, i32 0, i32 5
  store i32 %209, i32* %211, align 4
  %212 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @FRAGMENTATION, align 4
  %215 = call i32 @geni_se_setup_m_cmd(%struct.geni_se* %212, i32 %213, i32 %214)
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @SPI_TX_ONLY, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %201
  %221 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %222 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %225 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 %223, i64 %228)
  br label %230

230:                                              ; preds = %61, %220, %201
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spi_setup_word_len(%struct.spi_geni_master*, i32, i32) #1

declare dso_local i32 @get_spi_clk_cfg(i64, %struct.spi_geni_master*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @geni_se_setup_m_cmd(%struct.geni_se*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
