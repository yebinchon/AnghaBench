; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32, i32, i64, i32 }
%struct.spi_transfer = type { i32, i32* }

@QSPI_WR_SNGL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tx cmd %08x dc %08x data %02x\0A\00", align 1
@QSPI_WLEN_MAX_BYTES = common dso_local global i32 0, align 4
@QSPI_SPI_DATA_REG_3 = common dso_local global i64 0, align 8
@QSPI_SPI_DATA_REG_2 = common dso_local global i64 0, align 8
@QSPI_SPI_DATA_REG_1 = common dso_local global i64 0, align 8
@QSPI_SPI_DATA_REG = common dso_local global i64 0, align 8
@QSPI_WLEN_MAX_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tx cmd %08x dc %08x data %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"tx cmd %08x dc %08x data %08x\0A\00", align 1
@QSPI_SPI_CMD_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"write timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*, %struct.spi_transfer*, i32)* @qspi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_write_msg(%struct.ti_qspi* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_qspi*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ti_qspi* %0, %struct.ti_qspi** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %18 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @QSPI_WR_SNGL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %177, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %185

30:                                               ; preds = %27
  %31 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %32 = call i64 @qspi_is_busy(%struct.ti_qspi* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %186

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %162 [
    i32 1, label %39
    i32 2, label %124
    i32 4, label %143
  ]

39:                                               ; preds = %37
  %40 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %41 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %45 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @QSPI_WLEN_MAX_BYTES, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %39
  %54 = load i32*, i32** %11, align 8
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %61 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QSPI_SPI_DATA_REG_3, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i32 @cpu_to_be32(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %72 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @QSPI_SPI_DATA_REG_2, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %13, align 8
  %79 = load i32, i32* %77, align 4
  %80 = call i32 @cpu_to_be32(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %83 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QSPI_SPI_DATA_REG_1, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* %88, align 4
  %91 = call i32 @cpu_to_be32(i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %94 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load i32, i32* @QSPI_WLEN_MAX_BYTES, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @QSPI_WLEN_MAX_BITS, align 4
  %101 = call i32 @QSPI_WLEN(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %123

104:                                              ; preds = %39
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %108 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writeb(i32 %106, i64 %111)
  %113 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %114 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @QSPI_WR_SNGL, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @QSPI_WLEN(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %104, %53
  br label %162

124:                                              ; preds = %37
  %125 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %126 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %130 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %131, i32 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %138 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writew(i32 %136, i64 %141)
  br label %162

143:                                              ; preds = %37
  %144 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %145 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %149 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_dbg(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %150, i32 %152)
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %157 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  br label %162

162:                                              ; preds = %37, %143, %124, %123
  %163 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @QSPI_SPI_CMD_REG, align 4
  %166 = call i32 @ti_qspi_write(%struct.ti_qspi* %163, i32 %164, i32 %165)
  %167 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %168 = call i64 @ti_qspi_poll_wc(%struct.ti_qspi* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %172 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @ETIMEDOUT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %186

177:                                              ; preds = %162
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %11, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %7, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %7, align 4
  br label %27

185:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %170, %34
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @qspi_is_busy(%struct.ti_qspi*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @QSPI_WLEN(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i64 @ti_qspi_poll_wc(%struct.ti_qspi*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
