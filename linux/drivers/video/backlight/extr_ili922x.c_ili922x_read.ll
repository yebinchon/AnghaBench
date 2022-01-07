; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_read.c"
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
@START_RW_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error sending SPI message 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i8*)* @ili922x_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_read(%struct.spi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_transfer, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @CMD_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @CMD_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %25 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 32)
  %26 = call i32 @memset(%struct.spi_transfer* %10, i32 0, i32 32)
  %27 = call i32 @spi_message_init(%struct.spi_message* %8)
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i8* %21, i8** %28, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i8* %24, i8** %29, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %32 = call i32 @CHECK_FREQ_REG(%struct.spi_device* %31, %struct.spi_transfer* %9)
  %33 = load i32, i32* @ili922x_id, align 4
  %34 = load i32, i32* @START_RS_INDEX, align 4
  %35 = load i32, i32* @START_RW_WRITE, align 4
  %36 = call i32 @START_BYTE(i32 %33, i32 %34, i32 %35)
  %37 = call zeroext i8 @set_tx_byte(i32 %36)
  %38 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %37, i8* %38, align 16
  %39 = call zeroext i8 @set_tx_byte(i32 0)
  %40 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = call zeroext i8 @set_tx_byte(i32 %41)
  %43 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %42, i8* %43, align 2
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i32 8, i32* %44, align 4
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i32 3, i32* %45, align 8
  store i32 3, i32* %15, align 4
  %46 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* @ili922x_id, align 4
  %49 = load i32, i32* @START_RS_REG, align 4
  %50 = load i32, i32* @START_RW_READ, align 4
  %51 = call i32 @START_BYTE(i32 %48, i32 %49, i32 %50)
  %52 = call zeroext i8 @set_tx_byte(i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %21, i64 %55
  store i8 %52, i8* %56, align 1
  %57 = call zeroext i8 @set_tx_byte(i32 0)
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %21, i64 %60
  store i8 %57, i8* %61, align 1
  %62 = call zeroext i8 @set_tx_byte(i32 0)
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %21, i64 %64
  store i8 %62, i8* %65, align 1
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 4
  store i32 3, i32* %67, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %21, i64 %69
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %24, i64 %73
  %75 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %77 = call i32 @CHECK_FREQ_REG(%struct.spi_device* %76, %struct.spi_transfer* %10)
  %78 = call i32 @spi_message_add_tail(%struct.spi_transfer* %10, %struct.spi_message* %8)
  %79 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %80 = call i32 @spi_sync(%struct.spi_device* %79, %struct.spi_message* %8)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %3
  %84 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

89:                                               ; preds = %3
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %24, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %24, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %96, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %7, align 8
  store i8 %104, i8* %105, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

106:                                              ; preds = %89, %83
  %107 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %4, align 4
  ret i32 %108
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
