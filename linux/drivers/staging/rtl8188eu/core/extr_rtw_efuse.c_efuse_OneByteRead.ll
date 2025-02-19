; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_OneByteRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_OneByteRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_OneByteRead(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = load i64, i64* @EFUSE_CTRL, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @usb_write8(%struct.adapter* %9, i64 %11, i32 %13)
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i64, i64* @EFUSE_CTRL, align 8
  %17 = add nsw i64 %16, 2
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 3
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i64, i64* @EFUSE_CTRL, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @usb_read8(%struct.adapter* %21, i64 %23)
  %25 = and i32 %24, 252
  %26 = or i32 %20, %25
  %27 = call i32 @usb_write8(%struct.adapter* %15, i64 %17, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i64, i64* @EFUSE_CTRL, align 8
  %30 = add nsw i64 %29, 3
  %31 = call i32 @usb_write8(%struct.adapter* %28, i64 %30, i32 114)
  br label %32

32:                                               ; preds = %44, %3
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = load i64, i64* @EFUSE_CTRL, align 8
  %35 = add nsw i64 %34, 3
  %36 = call i32 @usb_read8(%struct.adapter* %33, i64 %35)
  %37 = and i32 128, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 100
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i1 [ false, %32 ], [ %41, %39 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %32

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = load i64, i64* @EFUSE_CTRL, align 8
  %53 = call i32 @usb_read8(%struct.adapter* %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %8, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  store i32 255, i32* %56, align 4
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
