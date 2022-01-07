; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.spi_transfer = type { i32*, i32 }
%struct.spi_message = type { i32 }

@WSPI_INIT_CMD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate cmd for spi init\00", align 1
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
@DEBUG_SPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"spi init -> \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @wl1251_spi_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_spi_wake(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.spi_transfer, align 8
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca i32*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %6 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kzalloc(i32 %6, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @wl1251_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %93

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.spi_transfer* %3, i32 0, i32 16)
  %15 = call i32 @spi_message_init(%struct.spi_message* %4)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 255, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 255, i32* %19, align 4
  %20 = load i32, i32* @WSPI_INIT_CMD_START, align 4
  %21 = load i32, i32* @WSPI_INIT_CMD_TX, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @HW_ACCESS_WSPI_INIT_CMD_MASK, align 4
  %30 = shl i32 %29, 3
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @HW_ACCESS_WSPI_FIXED_BUSY_LEN, align 4
  %34 = load i32, i32* @WSPI_INIT_CMD_FIXEDBUSY_LEN, align 4
  %35 = and i32 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @WSPI_INIT_CMD_IOD, align 4
  %41 = load i32, i32* @WSPI_INIT_CMD_IP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WSPI_INIT_CMD_CS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WSPI_INIT_CMD_WSPI, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WSPI_INIT_CMD_WS, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @HW_ACCESS_WSPI_FIXED_BUSY_LEN, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %13
  %54 = load i32, i32* @WSPI_INIT_CMD_DIS_FIXEDBUSY, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %65

59:                                               ; preds = %13
  %60 = load i32, i32* @WSPI_INIT_CMD_EN_FIXEDBUSY, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* @WSPI_INIT_CMD_CRC_LEN, align 4
  %69 = call i32 @crc7_be(i32 0, i32* %67, i32 %68)
  %70 = load i32, i32* @WSPI_INIT_CMD_END, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @__swab32s(i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i32 @__swab32s(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %3, i32 0, i32 0
  store i32* %79, i32** %80, align 8
  %81 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = call i32 @spi_message_add_tail(%struct.spi_transfer* %3, %struct.spi_message* %4)
  %84 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %85 = call i32 @wl_to_spi(%struct.wl1251* %84)
  %86 = call i32 @spi_sync(i32 %85, %struct.spi_message* %4)
  %87 = load i32, i32* @DEBUG_SPI, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %90 = call i32 @wl1251_dump(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %88, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @kfree(i32* %91)
  br label %93

93:                                               ; preds = %65, %11
  ret void
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @crc7_be(i32, i32*, i32) #1

declare dso_local i32 @__swab32s(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @wl_to_spi(%struct.wl1251*) #1

declare dso_local i32 @wl1251_dump(i32, i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
