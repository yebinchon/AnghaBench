; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_set_write_to_gram_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_set_write_to_gram_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32, i32, i32, i32* }

@CMD_BUFSIZE = common dso_local global i32 0, align 4
@ili922x_id = common dso_local global i32 0, align 4
@START_RS_INDEX = common dso_local global i32 0, align 4
@START_RW_WRITE = common dso_local global i32 0, align 4
@REG_WRITE_DATA_TO_GRAM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @set_write_to_gram_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_write_to_gram_reg(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %7 = load i32, i32* @CMD_BUFSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = call i32 @memset(%struct.spi_transfer* %4, i32 0, i32 32)
  %12 = call i32 @spi_message_init(%struct.spi_message* %3)
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @ili922x_id, align 4
  %17 = load i32, i32* @START_RS_INDEX, align 4
  %18 = load i32, i32* @START_RW_WRITE, align 4
  %19 = call zeroext i8 @START_BYTE(i32 %16, i32 %17, i32 %18)
  %20 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %19, i8* %20, align 16
  %21 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %21, align 1
  %22 = load i8, i8* @REG_WRITE_DATA_TO_GRAM, align 1
  %23 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %22, i8* %23, align 2
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 2
  store i32 8, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 3
  store i32 3, i32* %25, align 8
  %26 = call i32 @spi_message_add_tail(%struct.spi_transfer* %4, %struct.spi_message* %3)
  %27 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %28 = call i32 @spi_sync(%struct.spi_device* %27, %struct.spi_message* %3)
  %29 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local zeroext i8 @START_BYTE(i32, i32, i32) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
