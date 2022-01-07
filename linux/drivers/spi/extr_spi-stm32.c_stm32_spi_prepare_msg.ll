; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_prepare_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_prepare_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_spi = type { i32, %struct.TYPE_12__*, i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"st,spi-midi-ns\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%dns inter-data idleness\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cpol=%d cpha=%d lsb_first=%d cs_high=%d\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @stm32_spi_prepare_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spi_prepare_msg(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.stm32_spi*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %12 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.stm32_spi* %12, %struct.stm32_spi** %5, align 8
  %13 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %14 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %13, i32 0, i32 0
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %27 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %26, i32 0, i32 4
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %32 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %35 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %30, %24, %2
  %40 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SPI_CPOL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %68

57:                                               ; preds = %39
  %58 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %59 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %57, %46
  %69 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SPI_CPHA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %77 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %97

86:                                               ; preds = %68
  %87 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %88 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %86, %75
  %98 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SPI_LSB_FIRST, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %106 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %126

115:                                              ; preds = %97
  %116 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %117 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %115, %104
  %127 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %128 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SPI_CPOL, align 4
  %134 = and i32 %132, %133
  %135 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %136 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SPI_CPHA, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SPI_LSB_FIRST, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %146 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SPI_CS_HIGH, align 4
  %149 = and i32 %147, %148
  %150 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %139, i32 %144, i32 %149)
  %151 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %152 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %151, i32 0, i32 0
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @spin_lock_irqsave(i32* %152, i64 %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %126
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %192

160:                                              ; preds = %157, %126
  %161 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %162 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %165 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %163, %171
  %173 = call i32 @readl_relaxed(i64 %172)
  %174 = load i32, i32* %9, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = load i32, i32* %10, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %180 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %183 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %181, %189
  %191 = call i32 @writel_relaxed(i32 %178, i64 %190)
  br label %192

192:                                              ; preds = %160, %157
  %193 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %194 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %193, i32 0, i32 0
  %195 = load i64, i64* %8, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  ret i32 0
}

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
