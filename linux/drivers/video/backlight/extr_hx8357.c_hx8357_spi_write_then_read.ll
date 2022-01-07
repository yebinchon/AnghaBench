; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_spi_write_then_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_spi_write_then_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.hx8357_data = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Couldn't send SPI data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32*, i32, i32*, i32)* @hx8357_spi_write_then_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8357_spi_write_then_read(%struct.lcd_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lcd_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hx8357_data*, align 8
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %19 = call %struct.hx8357_data* @lcd_get_data(%struct.lcd_device* %18)
  store %struct.hx8357_data* %19, %struct.hx8357_data** %12, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %21 = call i32 @memset(%struct.spi_transfer* %20, i32 0, i32 48)
  %22 = call i32 @spi_message_init(%struct.spi_message* %13)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kcalloc(i32 %26, i32 4, i32 %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %107

34:                                               ; preds = %25
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 256
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 2, %63
  %65 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 16
  %67 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 1
  store i32 9, i32* %68, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %73 = call i32 @spi_message_add_tail(%struct.spi_transfer* %72, %struct.spi_message* %13)
  br label %74

74:                                               ; preds = %62, %5
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 1
  store i32 8, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %87 = call i32 @spi_message_add_tail(%struct.spi_transfer* %86, %struct.spi_message* %13)
  br label %88

88:                                               ; preds = %77, %74
  %89 = load %struct.hx8357_data*, %struct.hx8357_data** %12, align 8
  %90 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spi_sync(i32 %91, %struct.spi_message* %13)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %97 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @kfree(i32* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %31
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.hx8357_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
