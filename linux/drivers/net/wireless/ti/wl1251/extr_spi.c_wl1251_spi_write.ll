; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64 }
%struct.spi_transfer = type { i64*, i32 }
%struct.spi_message = type { i32 }

@WSPI_CMD_WRITE = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_LENGTH_OFFSET = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_LENGTH = common dso_local global i64 0, align 8
@WSPI_CMD_BYTE_ADDR = common dso_local global i32 0, align 4
@DEBUG_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"spi_write cmd -> \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"spi_write buf -> \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, i32, i8*, i64)* @wl1251_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_spi_write(%struct.wl1251* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x %struct.spi_transfer], align 16
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i64*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %13 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %12, i32 0, i32 0
  store i64* %13, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* @WSPI_CMD_WRITE, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %15
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @WSPI_CMD_BYTE_LENGTH_OFFSET, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* @WSPI_CMD_BYTE_LENGTH, align 8
  %23 = and i64 %21, %22
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %23
  store i64 %26, i64* %24, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @WSPI_CMD_BYTE_ADDR, align 4
  %29 = and i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = call i32 @spi_message_init(%struct.spi_message* %10)
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %36 = call i32 @memset(%struct.spi_transfer* %35, i32 0, i32 32)
  %37 = load i64*, i64** %11, align 8
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 0
  store i64* %37, i64** %39, align 16
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 1
  store i32 8, i32* %41, align 8
  %42 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %43 = call i32 @spi_message_add_tail(%struct.spi_transfer* %42, %struct.spi_message* %10)
  %44 = load i8*, i8** %7, align 8
  %45 = bitcast i8* %44 to i64*
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 0
  store i64* %45, i64** %47, align 16
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %53 = call i32 @spi_message_add_tail(%struct.spi_transfer* %52, %struct.spi_message* %10)
  %54 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %55 = call i32 @wl_to_spi(%struct.wl1251* %54)
  %56 = call i32 @spi_sync(i32 %55, %struct.spi_message* %10)
  %57 = load i32, i32* @DEBUG_SPI, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = bitcast i64* %58 to i8*
  %60 = call i32 @wl1251_dump(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %59, i64 8)
  %61 = load i32, i32* @DEBUG_SPI, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @wl1251_dump(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %62, i64 %63)
  ret void
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @wl_to_spi(%struct.wl1251*) #1

declare dso_local i32 @wl1251_dump(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
