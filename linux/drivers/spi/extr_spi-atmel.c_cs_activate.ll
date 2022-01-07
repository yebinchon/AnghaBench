; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-atmel.c_cs_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-atmel.c_cs_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_spi = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.spi_device = type { i32, i32, i32, %struct.TYPE_4__*, %struct.atmel_spi_device* }
%struct.TYPE_4__ = type { i32 }
%struct.atmel_spi_device = type { i32, i32 }

@CSR0 = common dso_local global i64 0, align 8
@MR = common dso_local global i64 0, align 8
@PCS = common dso_local global i32 0, align 4
@WDRBT = common dso_local global i32 0, align 4
@MODFDIS = common dso_local global i32 0, align 4
@MSTR = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@CPOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"activate NPCS, mr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_spi*, %struct.spi_device*)* @cs_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_activate(%struct.atmel_spi* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.atmel_spi*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.atmel_spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atmel_spi* %0, %struct.atmel_spi** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 4
  %12 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %11, align 8
  store %struct.atmel_spi_device* %12, %struct.atmel_spi_device** %5, align 8
  %13 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %14 = call i64 @atmel_spi_is_v2(%struct.atmel_spi* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %2
  %17 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %18 = load i64, i64* @CSR0, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 4, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %26 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @spi_writel(%struct.atmel_spi* %17, i64 %24, i32 %27)
  %29 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %30 = load i64, i64* @CSR0, align 8
  %31 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %32 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spi_writel(%struct.atmel_spi* %29, i64 %30, i32 %33)
  %35 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %16
  %41 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %42 = load i64, i64* @MR, align 8
  %43 = load i32, i32* @PCS, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = call i32 @SPI_BF(i32 %43, i32 %48)
  %50 = load i32, i32* @WDRBT, align 4
  %51 = call i32 @SPI_BIT(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @MODFDIS, align 4
  %54 = call i32 @SPI_BIT(i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* @MSTR, align 4
  %57 = call i32 @SPI_BIT(i32 %56)
  %58 = or i32 %55, %57
  %59 = call i32 @spi_writel(%struct.atmel_spi* %41, i64 %42, i32 %58)
  br label %77

60:                                               ; preds = %16
  %61 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %62 = load i64, i64* @MR, align 8
  %63 = load i32, i32* @PCS, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = call i32 @SPI_BF(i32 %63, i32 %68)
  %70 = load i32, i32* @MODFDIS, align 4
  %71 = call i32 @SPI_BIT(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MSTR, align 4
  %74 = call i32 @SPI_BIT(i32 %73)
  %75 = or i32 %72, %74
  %76 = call i32 @spi_writel(%struct.atmel_spi* %61, i64 %62, i32 %75)
  br label %77

77:                                               ; preds = %60, %40
  %78 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %79 = load i64, i64* @MR, align 8
  %80 = call i32 @spi_readl(%struct.atmel_spi* %78, i64 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %82 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %87 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gpiod_set_value(i32 %88, i32 1)
  br label %90

90:                                               ; preds = %85, %77
  br label %174

91:                                               ; preds = %2
  %92 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SPI_CPOL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @CPOL, align 4
  %100 = call i32 @SPI_BIT(i32 %99)
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %140, %102
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %104
  %113 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %114 = load i64, i64* @CSR0, align 8
  %115 = load i32, i32* %8, align 4
  %116 = mul nsw i32 4, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @spi_readl(%struct.atmel_spi* %113, i64 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = xor i32 %120, %121
  %123 = load i32, i32* @CPOL, align 4
  %124 = call i32 @SPI_BIT(i32 %123)
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %112
  %128 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %129 = load i64, i64* @CSR0, align 8
  %130 = load i32, i32* %8, align 4
  %131 = mul nsw i32 4, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @CPOL, align 4
  %136 = call i32 @SPI_BIT(i32 %135)
  %137 = xor i32 %134, %136
  %138 = call i32 @spi_writel(%struct.atmel_spi* %128, i64 %133, i32 %137)
  br label %139

139:                                              ; preds = %127, %112
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %104

143:                                              ; preds = %104
  %144 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %145 = load i64, i64* @MR, align 8
  %146 = call i32 @spi_readl(%struct.atmel_spi* %144, i64 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @PCS, align 4
  %148 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %149 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 1, %150
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @SPI_BFINS(i32 %147, i32 %152, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %156 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %143
  %160 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %161 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %166 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @gpiod_set_value(i32 %167, i32 1)
  br label %169

169:                                              ; preds = %164, %159, %143
  %170 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %171 = load i64, i64* @MR, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @spi_writel(%struct.atmel_spi* %170, i64 %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %90
  %175 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %176 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %175, i32 0, i32 2
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @dev_dbg(i32* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %177)
  ret void
}

declare dso_local i64 @atmel_spi_is_v2(%struct.atmel_spi*) #1

declare dso_local i32 @spi_writel(%struct.atmel_spi*, i64, i32) #1

declare dso_local i32 @SPI_BF(i32, i32) #1

declare dso_local i32 @SPI_BIT(i32) #1

declare dso_local i32 @spi_readl(%struct.atmel_spi*, i64) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @SPI_BFINS(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
