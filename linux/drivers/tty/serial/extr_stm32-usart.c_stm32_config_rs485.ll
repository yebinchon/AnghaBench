; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_config_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_config_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i32, i32 }
%struct.stm32_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_config, %struct.stm32_usart_offsets }
%struct.stm32_usart_config = type { i32 }
%struct.stm32_usart_offsets = type { i64, i64, i64 }

@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@USART_CR1_OVER8 = common dso_local global i32 0, align 4
@USART_BRR_04_R_SHIFT = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@USART_CR3_DEP = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@USART_CR3_DEM = common dso_local global i32 0, align 4
@USART_CR1_DEDT_MASK = common dso_local global i32 0, align 4
@USART_CR1_DEAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @stm32_config_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_config_rs485(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca %struct.stm32_port*, align 8
  %6 = alloca %struct.stm32_usart_offsets*, align 8
  %7 = alloca %struct.stm32_usart_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %13)
  store %struct.stm32_port* %14, %struct.stm32_port** %5, align 8
  %15 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.stm32_usart_offsets* %18, %struct.stm32_usart_offsets** %6, align 8
  %19 = load %struct.stm32_port*, %struct.stm32_port** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.stm32_usart_config* %22, %struct.stm32_usart_config** %7, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %25 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.stm32_usart_config*, %struct.stm32_usart_config** %7, align 8
  %28 = getelementptr inbounds %struct.stm32_usart_config, %struct.stm32_usart_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = call i32 @stm32_clr_bits(%struct.uart_port* %23, i64 %26, i32 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 2
  %34 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %35 = bitcast %struct.serial_rs485* %33 to i8*
  %36 = bitcast %struct.serial_rs485* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %38 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %39 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %43 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SER_RS485_ENABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %148

48:                                               ; preds = %2
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %53 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = call i32 @readl_relaxed(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %61 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @readl_relaxed(i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %69 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @readl_relaxed(i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @GENMASK(i32 15, i32 0)
  %75 = and i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @USART_CR1_OVER8, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %48
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @GENMASK(i32 4, i32 0)
  %85 = and i32 %83, %84
  %86 = load i32, i32* @USART_BRR_04_R_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %82, %87
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %81, %48
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @DIV_ROUND_CLOSEST(i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %96 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %99 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @stm32_config_reg_rs485(i32* %10, i32* %11, i32 %97, i32 %100, i32 %101)
  %103 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %104 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %89
  %110 = load i32, i32* @USART_CR3_DEP, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %117 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %129

120:                                              ; preds = %89
  %121 = load i32, i32* @USART_CR3_DEP, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %125 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %126 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %109
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %135 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = call i32 @writel_relaxed(i32 %130, i64 %137)
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %144 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = call i32 @writel_relaxed(i32 %139, i64 %146)
  br label %165

148:                                              ; preds = %2
  %149 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %150 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %151 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @USART_CR3_DEM, align 4
  %154 = load i32, i32* @USART_CR3_DEP, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @stm32_clr_bits(%struct.uart_port* %149, i64 %152, i32 %155)
  %157 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %158 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %159 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @USART_CR1_DEDT_MASK, align 4
  %162 = load i32, i32* @USART_CR1_DEAT_MASK, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @stm32_clr_bits(%struct.uart_port* %157, i64 %160, i32 %163)
  br label %165

165:                                              ; preds = %148, %129
  %166 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %167 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %168 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.stm32_usart_config*, %struct.stm32_usart_config** %7, align 8
  %171 = getelementptr inbounds %struct.stm32_usart_config, %struct.stm32_usart_config* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @BIT(i32 %172)
  %174 = call i32 @stm32_set_bits(%struct.uart_port* %166, i64 %169, i32 %173)
  ret i32 0
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @stm32_config_reg_rs485(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
