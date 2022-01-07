; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_write_then_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_write_then_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i8*, i8* }

@spi_write_then_read.lock = internal global i32 0, align 4
@SPI_BUFSIZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_write_then_read(%struct.spi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @SPI_BUFSIZ, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = call i32 @mutex_trylock(i32* @spi_write_then_read.lock)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @SPI_BUFSIZ, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add i32 %26, %27
  %29 = call i32 @max(i32 %25, i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @kmalloc(i32 %29, i32 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %101

39:                                               ; preds = %24
  br label %42

40:                                               ; preds = %21
  %41 = load i8*, i8** @buf, align 8
  store i8* %41, i8** %15, align 8
  br label %42

42:                                               ; preds = %40, %39
  %43 = call i32 @spi_message_init(%struct.spi_message* %13)
  %44 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %45 = call i32 @memset(%struct.spi_transfer* %44, i32 0, i32 48)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 16
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %53 = call i32 @spi_message_add_tail(%struct.spi_transfer* %52, %struct.spi_message* %13)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %62 = call i32 @spi_message_add_tail(%struct.spi_transfer* %61, %struct.spi_message* %13)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i8*, i8** %15, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @memcpy(i8* %64, i8* %65, i32 %66)
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 16
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %76 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %78 = call i32 @spi_sync(%struct.spi_device* %77, %struct.spi_message* %13)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @memcpy(i8* %82, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %63
  %89 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 16
  %92 = load i8*, i8** @buf, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @mutex_unlock(i32* @spi_write_then_read.lock)
  br label %99

96:                                               ; preds = %88
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @kfree(i8* %97)
  br label %99

99:                                               ; preds = %96, %94
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %36
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
