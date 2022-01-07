; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_OneByteWrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_OneByteWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_OneByteWrite(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
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
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load i64, i64* @EFUSE_CTRL, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @usb_read8(%struct.adapter* %18, i64 %20)
  %22 = and i32 %21, 252
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  %26 = or i32 %22, %25
  %27 = call i32 @usb_write8(%struct.adapter* %15, i64 %17, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i64, i64* @EFUSE_CTRL, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @usb_write8(%struct.adapter* %28, i64 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load i64, i64* @EFUSE_CTRL, align 8
  %34 = add nsw i64 %33, 3
  %35 = call i32 @usb_write8(%struct.adapter* %32, i64 %34, i32 242)
  br label %36

36:                                               ; preds = %48, %3
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load i64, i64* @EFUSE_CTRL, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i32 @usb_read8(%struct.adapter* %37, i64 %39)
  %41 = and i32 128, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 100
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ false, %36 ], [ %45, %43 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %36

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %56

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
