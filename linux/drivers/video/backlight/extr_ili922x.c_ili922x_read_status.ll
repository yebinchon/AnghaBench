; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32, i32, i32 }

@CMD_BUFSIZE = common dso_local global i32 0, align 4
@ili922x_id = common dso_local global i32 0, align 4
@START_RS_INDEX = common dso_local global i32 0, align 4
@START_RW_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error sending SPI message 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i8*)* @ili922x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_read_status(%struct.spi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @CMD_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @CMD_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 32)
  %22 = call i32 @spi_message_init(%struct.spi_message* %6)
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i8* %17, i8** %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i8* %20, i8** %24, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = call i32 @CHECK_FREQ_REG(%struct.spi_device* %26, %struct.spi_transfer* %7)
  %28 = load i32, i32* @ili922x_id, align 4
  %29 = load i32, i32* @START_RS_INDEX, align 4
  %30 = load i32, i32* @START_RW_READ, align 4
  %31 = call i32 @START_BYTE(i32 %28, i32 %29, i32 %30)
  %32 = call zeroext i8 @set_tx_byte(i32 %31)
  %33 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %32, i8* %33, align 16
  store i32 1, i32* %12, align 4
  br label %34

34:                                               ; preds = %42, %2
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = call zeroext i8 @set_tx_byte(i32 0)
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %17, i64 %40
  store i8 %38, i8* %41, align 1
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %34

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 3
  store i32 8, i32* %46, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 4
  store i32 4, i32* %47, align 8
  %48 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %6)
  %49 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %50 = call i32 @spi_sync(%struct.spi_device* %49, %struct.spi_message* %6)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

59:                                               ; preds = %45
  %60 = getelementptr inbounds i8, i8* %20, i64 2
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = getelementptr inbounds i8, i8* %20, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %63, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %59, %53
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
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

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
