; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_txrx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_txrx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_spi = type { %struct.mxs_ssp }
%struct.mxs_ssp = type { i64, i64 }

@BM_SSP_CTRL0_IGNORE_CRC = common dso_local global i8 0, align 1
@HW_SSP_CTRL0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@TXRX_DEASSERT_CS = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@IMX23_SSP = common dso_local global i64 0, align 8
@BM_SSP_CTRL0_XFER_COUNT = common dso_local global i8 0, align 1
@HW_SSP_XFER_SIZE = common dso_local global i64 0, align 8
@TXRX_WRITE = common dso_local global i32 0, align 4
@BM_SSP_CTRL0_READ = common dso_local global i8 0, align 1
@BM_SSP_CTRL0_RUN = common dso_local global i8 0, align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BM_SSP_CTRL0_DATA_XFER = common dso_local global i8 0, align 1
@BM_SSP_STATUS_FIFO_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_spi*, i8*, i32, i32)* @mxs_spi_txrx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_spi_txrx_pio(%struct.mxs_spi* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxs_spi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mxs_ssp*, align 8
  store %struct.mxs_spi* %0, %struct.mxs_spi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mxs_spi*, %struct.mxs_spi** %6, align 8
  %12 = getelementptr inbounds %struct.mxs_spi, %struct.mxs_spi* %11, i32 0, i32 0
  store %struct.mxs_ssp* %12, %struct.mxs_ssp** %10, align 8
  %13 = load i8, i8* @BM_SSP_CTRL0_IGNORE_CRC, align 1
  %14 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %15 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HW_SSP_CTRL0, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i8 zeroext %13, i64 %20)
  br label %22

22:                                               ; preds = %177, %4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %180

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @TXRX_DEASSERT_CS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8, i8* @BM_SSP_CTRL0_IGNORE_CRC, align 1
  %36 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %37 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HW_SSP_CTRL0, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i8 zeroext %35, i64 %42)
  br label %44

44:                                               ; preds = %34, %29, %26
  %45 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %46 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IMX23_SSP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load i8, i8* @BM_SSP_CTRL0_XFER_COUNT, align 1
  %52 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %53 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HW_SSP_CTRL0, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i8 zeroext %51, i64 %58)
  %60 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %61 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HW_SSP_CTRL0, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i8 zeroext 1, i64 %66)
  br label %75

68:                                               ; preds = %44
  %69 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %70 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HW_SSP_XFER_SIZE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i8 zeroext 1, i64 %73)
  br label %75

75:                                               ; preds = %68, %50
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @TXRX_WRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i8, i8* @BM_SSP_CTRL0_READ, align 1
  %82 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %83 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HW_SSP_CTRL0, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i8 zeroext %81, i64 %88)
  br label %100

90:                                               ; preds = %75
  %91 = load i8, i8* @BM_SSP_CTRL0_READ, align 1
  %92 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %93 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HW_SSP_CTRL0, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i8 zeroext %91, i64 %98)
  br label %100

100:                                              ; preds = %90, %80
  %101 = load i8, i8* @BM_SSP_CTRL0_RUN, align 1
  %102 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %103 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HW_SSP_CTRL0, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i8 zeroext %101, i64 %108)
  %110 = load %struct.mxs_spi*, %struct.mxs_spi** %6, align 8
  %111 = load i64, i64* @HW_SSP_CTRL0, align 8
  %112 = load i8, i8* @BM_SSP_CTRL0_RUN, align 1
  %113 = call i64 @mxs_ssp_wait(%struct.mxs_spi* %110, i64 %111, i8 zeroext %112, i32 1)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %100
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %187

118:                                              ; preds = %100
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @TXRX_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %127 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %130 = call i64 @HW_SSP_DATA(%struct.mxs_ssp* %129)
  %131 = add nsw i64 %128, %130
  %132 = call i32 @writel(i8 zeroext %125, i64 %131)
  br label %133

133:                                              ; preds = %123, %118
  %134 = load i8, i8* @BM_SSP_CTRL0_DATA_XFER, align 1
  %135 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %136 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HW_SSP_CTRL0, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i8 zeroext %134, i64 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @TXRX_WRITE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %133
  %148 = load %struct.mxs_spi*, %struct.mxs_spi** %6, align 8
  %149 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %150 = call i64 @HW_SSP_STATUS(%struct.mxs_ssp* %149)
  %151 = load i8, i8* @BM_SSP_STATUS_FIFO_EMPTY, align 1
  %152 = call i64 @mxs_ssp_wait(%struct.mxs_spi* %148, i64 %150, i8 zeroext %151, i32 0)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @ETIMEDOUT, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %187

157:                                              ; preds = %147
  %158 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %159 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.mxs_ssp*, %struct.mxs_ssp** %10, align 8
  %162 = call i64 @HW_SSP_DATA(%struct.mxs_ssp* %161)
  %163 = add nsw i64 %160, %162
  %164 = call i32 @readl(i64 %163)
  %165 = and i32 %164, 255
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %7, align 8
  store i8 %166, i8* %167, align 1
  br label %168

168:                                              ; preds = %157, %133
  %169 = load %struct.mxs_spi*, %struct.mxs_spi** %6, align 8
  %170 = load i64, i64* @HW_SSP_CTRL0, align 8
  %171 = load i8, i8* @BM_SSP_CTRL0_RUN, align 1
  %172 = call i64 @mxs_ssp_wait(%struct.mxs_spi* %169, i64 %170, i8 zeroext %171, i32 0)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* @ETIMEDOUT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %187

177:                                              ; preds = %168
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %7, align 8
  br label %22

180:                                              ; preds = %22
  %181 = load i32, i32* %8, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %187

184:                                              ; preds = %180
  %185 = load i32, i32* @ETIMEDOUT, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %184, %183, %174, %154, %115
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i64 @mxs_ssp_wait(%struct.mxs_spi*, i64, i8 zeroext, i32) #1

declare dso_local i64 @HW_SSP_DATA(%struct.mxs_ssp*) #1

declare dso_local i64 @HW_SSP_STATUS(%struct.mxs_ssp*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
