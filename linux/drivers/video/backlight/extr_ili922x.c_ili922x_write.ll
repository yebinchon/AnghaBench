; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32, i32, i32 }

@CMD_BUFSIZE = common dso_local global i32 0, align 4
@ili922x_id = common dso_local global i32 0, align 4
@START_RS_INDEX = common dso_local global i32 0, align 4
@START_RW_WRITE = common dso_local global i32 0, align 4
@START_RS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error sending SPI message 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32)* @ili922x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_write(%struct.spi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_transfer, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @CMD_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @CMD_BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 32)
  %24 = call i32 @memset(%struct.spi_transfer* %10, i32 0, i32 32)
  %25 = call i32 @spi_message_init(%struct.spi_message* %8)
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i8* %19, i8** %26, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %30 = call i32 @CHECK_FREQ_REG(%struct.spi_device* %29, %struct.spi_transfer* %9)
  %31 = load i32, i32* @ili922x_id, align 4
  %32 = load i32, i32* @START_RS_INDEX, align 4
  %33 = load i32, i32* @START_RW_WRITE, align 4
  %34 = call i32 @START_BYTE(i32 %31, i32 %32, i32 %33)
  %35 = call zeroext i8 @set_tx_byte(i32 %34)
  %36 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %35, i8* %36, align 16
  %37 = call zeroext i8 @set_tx_byte(i32 0)
  %38 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = call zeroext i8 @set_tx_byte(i32 %39)
  %41 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %40, i8* %41, align 2
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i32 8, i32* %42, align 4
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i32 3, i32* %43, align 8
  %44 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %45 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %46 = call i32 @spi_sync(%struct.spi_device* %45, %struct.spi_message* %8)
  store i32 %46, i32* %14, align 4
  %47 = call i32 @spi_message_init(%struct.spi_message* %8)
  %48 = load i32, i32* @ili922x_id, align 4
  %49 = load i32, i32* @START_RS_REG, align 4
  %50 = load i32, i32* @START_RW_WRITE, align 4
  %51 = call i32 @START_BYTE(i32 %48, i32 %49, i32 %50)
  %52 = call zeroext i8 @set_tx_byte(i32 %51)
  %53 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %52, i8* %53, align 16
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 65280
  %56 = ashr i32 %55, 8
  %57 = call zeroext i8 @set_tx_byte(i32 %56)
  %58 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 255
  %61 = call zeroext i8 @set_tx_byte(i32 %60)
  %62 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %61, i8* %62, align 2
  %63 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 4
  store i32 3, i32* %64, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i8* %19, i8** %65, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i8* %22, i8** %66, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %68 = call i32 @CHECK_FREQ_REG(%struct.spi_device* %67, %struct.spi_transfer* %10)
  %69 = call i32 @spi_message_add_tail(%struct.spi_transfer* %10, %struct.spi_message* %8)
  %70 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %71 = call i32 @spi_sync(%struct.spi_device* %70, %struct.spi_message* %8)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %3
  %75 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %81

80:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @CHECK_FREQ_REG(%struct.spi_device*, %struct.spi_transfer*) #2

declare dso_local zeroext i8 @set_tx_byte(i32) #2

declare dso_local i32 @START_BYTE(i32, i32, i32) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
