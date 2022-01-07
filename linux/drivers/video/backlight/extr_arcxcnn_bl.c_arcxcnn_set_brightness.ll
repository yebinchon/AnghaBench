; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcxcnn = type { i32 }

@ARCXCNN_WLED_ISET_LSB_SHIFT = common dso_local global i32 0, align 4
@ARCXCNN_WLED_ISET_LSB = common dso_local global i32 0, align 4
@ARCXCNN_WLED_ISET_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arcxcnn*, i32)* @arcxcnn_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcxcnn_set_brightness(%struct.arcxcnn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arcxcnn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arcxcnn* %0, %struct.arcxcnn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 15
  %10 = load i32, i32* @ARCXCNN_WLED_ISET_LSB_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.arcxcnn*, %struct.arcxcnn** %4, align 8
  %13 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARCXCNN_WLED_ISET_LSB, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @i2c_smbus_write_byte_data(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.arcxcnn*, %struct.arcxcnn** %4, align 8
  %26 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ARCXCNN_WLED_ISET_MSB, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @i2c_smbus_write_byte_data(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
