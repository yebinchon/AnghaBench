; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"read fifo: passed in buffer bigger then internal buffer\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@REG_FIFO = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_write_fifo(%struct.spi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @FIFO_SIZE, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FIFO_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i32, i32* @REG_FIFO, align 4
  %27 = load i32, i32* @WRITE_BIT, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %28, i32* %29, align 16
  %30 = getelementptr inbounds i32, i32* %15, i64 1
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = call i32 @spi_write(%struct.spi_device* %34, i32* %15, i32 %36)
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %25, %19
  %39 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
