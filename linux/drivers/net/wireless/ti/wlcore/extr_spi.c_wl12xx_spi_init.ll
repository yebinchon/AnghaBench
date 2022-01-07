; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wl12xx_spi_glue = type { i32 }
%struct.spi_transfer = type { i32*, i32 }
%struct.spi_message = type { i32*, i32 }
%struct.spi_device = type { i32 }

@WSPI_INIT_CMD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not allocate cmd for spi init\0A\00", align 1
@WSPI_INIT_CMD_START = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_TX = common dso_local global i32 0, align 4
@HW_ACCESS_WSPI_INIT_CMD_MASK = common dso_local global i32 0, align 4
@HW_ACCESS_WSPI_FIXED_BUSY_LEN = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_FIXEDBUSY_LEN = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_IOD = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_IP = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_CS = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_WSPI = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_WS = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_DIS_FIXEDBUSY = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_EN_FIXEDBUSY = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_CRC_LEN = common dso_local global i32 0, align 4
@WSPI_INIT_CMD_END = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @wl12xx_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_spi_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.wl12xx_spi_glue*, align 8
  %4 = alloca %struct.spi_transfer, align 8
  %5 = alloca %struct.spi_message, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wl12xx_spi_glue* @dev_get_drvdata(i32 %10)
  store %struct.wl12xx_spi_glue* %11, %struct.wl12xx_spi_glue** %3, align 8
  %12 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %3, align 8
  %13 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  %16 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %142

26:                                               ; preds = %1
  %27 = call i32 @memset(%struct.spi_transfer* %4, i32 0, i32 16)
  %28 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %29 = call i32 @spi_message_init(%struct.spi_transfer* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 255, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 255, i32* %33, align 4
  %34 = load i32, i32* @WSPI_INIT_CMD_START, align 4
  %35 = load i32, i32* @WSPI_INIT_CMD_TX, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @HW_ACCESS_WSPI_INIT_CMD_MASK, align 4
  %44 = shl i32 %43, 3
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @HW_ACCESS_WSPI_FIXED_BUSY_LEN, align 4
  %48 = load i32, i32* @WSPI_INIT_CMD_FIXEDBUSY_LEN, align 4
  %49 = and i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @WSPI_INIT_CMD_IOD, align 4
  %55 = load i32, i32* @WSPI_INIT_CMD_IP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WSPI_INIT_CMD_CS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WSPI_INIT_CMD_WSPI, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WSPI_INIT_CMD_WS, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @HW_ACCESS_WSPI_FIXED_BUSY_LEN, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %26
  %68 = load i32, i32* @WSPI_INIT_CMD_DIS_FIXEDBUSY, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %26
  %74 = load i32, i32* @WSPI_INIT_CMD_EN_FIXEDBUSY, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* @WSPI_INIT_CMD_CRC_LEN, align 4
  %83 = call i32 @crc7_be(i32 0, i32* %81, i32 %82)
  %84 = load i32, i32* @WSPI_INIT_CMD_END, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @__swab32s(i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @__swab32s(i32* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 0
  store i32* %93, i32** %94, align 8
  %95 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %98 = call i32 @spi_message_add_tail(%struct.spi_transfer* %4, %struct.spi_transfer* %97)
  %99 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %3, align 8
  %100 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.spi_device* @to_spi_device(i32 %101)
  %103 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %104 = call i32 @spi_sync(%struct.spi_device* %102, %struct.spi_transfer* %103)
  %105 = load i32, i32* @SPI_CS_HIGH, align 4
  %106 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %111 = call i32 @memset(%struct.spi_transfer* %110, i32 0, i32 16)
  %112 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %113 = call i32 @spi_message_init(%struct.spi_transfer* %112)
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 255, i32* %115, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 255, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 255, i32* %119, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  store i32 255, i32* %121, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @__swab32s(i32* %122)
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 0
  store i32* %124, i32** %125, align 8
  %126 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 1
  store i32 4, i32* %126, align 8
  %127 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %128 = call i32 @spi_message_add_tail(%struct.spi_transfer* %4, %struct.spi_transfer* %127)
  %129 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %3, align 8
  %130 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.spi_device* @to_spi_device(i32 %131)
  %133 = bitcast %struct.spi_message* %5 to %struct.spi_transfer*
  %134 = call i32 @spi_sync(%struct.spi_device* %132, %struct.spi_transfer* %133)
  %135 = load i32, i32* @SPI_CS_HIGH, align 4
  %136 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @kfree(i32* %140)
  br label %142

142:                                              ; preds = %79, %21
  ret void
}

declare dso_local %struct.wl12xx_spi_glue* @dev_get_drvdata(i32) #1

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_transfer*) #1

declare dso_local i32 @crc7_be(i32, i32*, i32) #1

declare dso_local i32 @__swab32s(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
