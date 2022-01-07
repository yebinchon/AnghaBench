; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_read_first_pixel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_read_first_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MIPID_CMD_READ_RED = common dso_local global i32 0, align 4
@MIPID_CMD_READ_GREEN = common dso_local global i32 0, align 4
@MIPID_CMD_READ_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid_device*)* @read_first_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_first_pixel(%struct.mipid_device* %0) #0 {
  %2 = alloca %struct.mipid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mipid_device* %0, %struct.mipid_device** %2, align 8
  %7 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %8 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %11 = load i32, i32* @MIPID_CMD_READ_RED, align 4
  %12 = call i32 @mipid_read(%struct.mipid_device* %10, i32 %11, i32* %4, i32 1)
  %13 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %14 = load i32, i32* @MIPID_CMD_READ_GREEN, align 4
  %15 = call i32 @mipid_read(%struct.mipid_device* %13, i32 %14, i32* %5, i32 1)
  %16 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %17 = load i32, i32* @MIPID_CMD_READ_BLUE, align 4
  %18 = call i32 @mipid_read(%struct.mipid_device* %16, i32 %17, i32* %6, i32 1)
  %19 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %20 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %23 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %47 [
    i32 16, label %26
    i32 24, label %36
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 1
  %29 = shl i32 %28, 11
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 5
  %32 = or i32 %29, %31
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 1
  %35 = or i32 %32, %34
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 3
  %39 = shl i32 %38, 11
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 2
  %42 = shl i32 %41, 5
  %43 = or i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 3
  %46 = or i32 %43, %45
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %36, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mipid_read(%struct.mipid_device*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
