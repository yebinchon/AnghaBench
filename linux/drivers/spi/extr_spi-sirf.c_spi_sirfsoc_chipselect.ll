; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.sirfsoc_spi = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SIRFSOC_SPI_CS_IO_OUT = common dso_local global i32 0, align 4
@SIRFSOC_USP_CS_HIGH_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @spi_sirfsoc_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sirfsoc_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %9)
  store %struct.sirfsoc_spi* %10, %struct.sirfsoc_spi** %5, align 8
  %11 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %12 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %136

15:                                               ; preds = %2
  %16 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %135 [
    i32 130, label %19
    i32 128, label %77
    i32 129, label %77
  ]

19:                                               ; preds = %15
  %20 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %22, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %65 [
    i32 132, label %31
    i32 131, label %48
  ]

31:                                               ; preds = %19
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SPI_CS_HIGH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @SIRFSOC_SPI_CS_IO_OUT, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @SIRFSOC_SPI_CS_IO_OUT, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %38
  br label %65

48:                                               ; preds = %19
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SPI_CS_HIGH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @SIRFSOC_SPI_CS_IO_OUT, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %48
  %61 = load i32, i32* @SIRFSOC_SPI_CS_IO_OUT, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %19, %64, %47
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %68 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %71 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = call i32 @writel(i32 %66, i64 %75)
  br label %135

77:                                               ; preds = %15, %15
  %78 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %82 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  switch i32 %88, label %123 [
    i32 132, label %89
    i32 131, label %106
  ]

89:                                               ; preds = %77
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SPI_CS_HIGH, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALUE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %105

100:                                              ; preds = %89
  %101 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALUE, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %96
  br label %123

106:                                              ; preds = %77
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SPI_CS_HIGH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALUE, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %122

118:                                              ; preds = %106
  %119 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALUE, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %77, %122, %105
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %126 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %129 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = call i32 @writel(i32 %124, i64 %133)
  br label %135

135:                                              ; preds = %15, %123, %65
  br label %165

136:                                              ; preds = %2
  %137 = load i32, i32* %4, align 4
  switch i32 %137, label %164 [
    i32 132, label %138
    i32 131, label %151
  ]

138:                                              ; preds = %136
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %143 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SPI_CS_HIGH, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = call i32 @gpio_direction_output(i32 %141, i32 %149)
  br label %164

151:                                              ; preds = %136
  %152 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %153 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SPI_CS_HIGH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 0, i32 1
  %163 = call i32 @gpio_direction_output(i32 %154, i32 %162)
  br label %164

164:                                              ; preds = %136, %151, %138
  br label %165

165:                                              ; preds = %164, %135
  ret void
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
