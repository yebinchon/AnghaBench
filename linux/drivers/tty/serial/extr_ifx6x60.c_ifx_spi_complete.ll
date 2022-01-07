; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i8, i32, i64, i32, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32*, i32 (i32*, i32, i32*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IFX_SPI_HEADER_OVERHEAD = common dso_local global i64 0, align 8
@IFX_SPI_HEADER_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ignore input: invalid header 0\00", align 1
@IFX_SPI_HEADER_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ignore input: invalid header F\00", align 1
@IFX_SPI_TRANSFER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SPI transfer error %d\00", align 1
@IFX_SPI_STATE_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@IFX_SPI_POWER_SRDY = common dso_local global i32 0, align 4
@IFX_SPI_STATE_IO_READY = common dso_local global i32 0, align 4
@IFX_SPI_POWER_DATA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ifx_spi_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifx_spi_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifx_spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.ifx_spi_device*
  store %struct.ifx_spi_device* %13, %struct.ifx_spi_device** %3, align 8
  store i8 0, i8* %6, align 1
  store i32 0, i32* %8, align 4
  %14 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %15 = call i32 @mrdy_set_low(%struct.ifx_spi_device* %14)
  %16 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %1
  %22 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %22, i32 0, i32 11
  %24 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %23, align 8
  %25 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @IFX_SPI_HEADER_OVERHEAD, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %30, i32 0, i32 10
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @IFX_SPI_HEADER_OVERHEAD, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 %24(i32* %27, i32 %29, i32* %34)
  %36 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ifx_spi_decode_spi_header(i32* %38, i32* %4, i8* %6, i8* %7)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @IFX_SPI_HEADER_0, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %21
  %44 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %44, i32 0, i32 9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %49, i32 0, i32 0
  store i8 0, i8* %50, align 8
  br label %107

51:                                               ; preds = %21
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @IFX_SPI_HEADER_F, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %56, i32 0, i32 9
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %107

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i8, i8* %7, align 1
  %64 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %64, i32 0, i32 0
  store i8 %63, i8* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @min(i32 %66, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %72, i32 0, i32 11
  %74 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %73, align 8
  %75 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %75, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @IFX_SPI_HEADER_OVERHEAD, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %81, i32 0, i32 10
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @IFX_SPI_TRANSFER_SIZE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i32 %74(i32* %79, i32 %80, i32* %85)
  %87 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %88 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %88, i32 0, i32 10
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @IFX_SPI_HEADER_OVERHEAD, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @ifx_spi_insert_flip_string(%struct.ifx_spi_device* %87, i32* %92, i64 %94)
  br label %106

96:                                               ; preds = %1
  store i8 0, i8* %6, align 1
  %97 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %97, i32 0, i32 9
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %96, %62
  br label %107

107:                                              ; preds = %106, %55, %43
  %108 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %109 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %113, i32 0, i32 7
  store i64 0, i64* %114, align 8
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @IFX_SPI_STATE_IO_IN_PROGRESS, align 4
  %117 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %117, i32 0, i32 4
  %119 = call i32 @clear_bit(i32 %116, i32* %118)
  %120 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %120, i32 0, i32 6
  %122 = call i32 @kfifo_len(i32* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %124 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @gpio_get_value(i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %115
  %131 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %132 = load i32, i32* @IFX_SPI_POWER_SRDY, align 4
  %133 = call i32 @ifx_spi_power_state_clear(%struct.ifx_spi_device* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %115
  %135 = load i32, i32* @IFX_SPI_STATE_IO_READY, align 4
  %136 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %136, i32 0, i32 4
  %138 = call i64 @test_and_clear_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %141, i32 0, i32 3
  %143 = call i32 @tasklet_schedule(i32* %142)
  br label %183

144:                                              ; preds = %134
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %144
  %149 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %150 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %9, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156, %153, %148, %144
  %160 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %161 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 8
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i8, i8* %6, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %169 = call i32 @mrdy_assert(%struct.ifx_spi_device* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %174

171:                                              ; preds = %159
  %172 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %173 = call i32 @mrdy_assert(%struct.ifx_spi_device* %172)
  br label %174

174:                                              ; preds = %171, %170
  br label %182

175:                                              ; preds = %156
  %176 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %177 = load i32, i32* @IFX_SPI_POWER_DATA_PENDING, align 4
  %178 = call i32 @ifx_spi_power_state_clear(%struct.ifx_spi_device* %176, i32 %177)
  %179 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %180 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %179, i32 0, i32 1
  %181 = call i32 @tty_port_tty_wakeup(i32* %180)
  br label %182

182:                                              ; preds = %175, %174
  br label %183

183:                                              ; preds = %182, %140
  ret void
}

declare dso_local i32 @mrdy_set_low(%struct.ifx_spi_device*) #1

declare dso_local i32 @ifx_spi_decode_spi_header(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ifx_spi_insert_flip_string(%struct.ifx_spi_device*, i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @ifx_spi_power_state_clear(%struct.ifx_spi_device*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mrdy_assert(%struct.ifx_spi_device*) #1

declare dso_local i32 @tty_port_tty_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
