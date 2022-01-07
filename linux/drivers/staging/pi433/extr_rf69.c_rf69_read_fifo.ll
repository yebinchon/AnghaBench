; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"read fifo: passed in buffer bigger then internal buffer\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@REG_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_read_fifo(%struct.spi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @FIFO_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @FIFO_SIZE, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* @REG_FIFO, align 4
  %29 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %28, i32* %29, align 16
  %30 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 24)
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32* %17, i32** %31, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32* %17, i32** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %37 = call i32 @spi_sync_transfer(%struct.spi_device* %36, %struct.spi_transfer* %8, i32 1)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %17, i64 1
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %27, %21
  %44 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
