; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_hotkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_hotkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TP_ACPI_HOTKEYSCAN_ADAPTIVE_START = common dso_local global i32 0, align 4
@hotkey_source_mask = common dso_local global i32 0, align 4
@TP_ACPI_HOTKEYSCAN_EXTENDED_START = common dso_local global i32 0, align 4
@TPACPI_HOTKEY_MAP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hotkey_notify_hotkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_notify_hotkey(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 4095
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 15
  switch i32 %15, label %58 [
    i32 0, label %16
    i32 1, label %39
    i32 3, label %42
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TP_ACPI_HOTKEYSCAN_ADAPTIVE_START, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @hotkey_source_mask, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @tpacpi_input_send_key_masked(i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32 0, i32* %34, align 4
  br label %37

35:                                               ; preds = %23
  %36 = load i32*, i32** %7, align 8
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  store i32 1, i32* %4, align 4
  br label %59

38:                                               ; preds = %19, %16
  br label %58

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @adaptive_keyboard_hotkey_notify_hotkey(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load i32, i32* @TP_ACPI_HOTKEYSCAN_EXTENDED_START, align 4
  %44 = sub i32 768, %43
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @TP_ACPI_HOTKEYSCAN_EXTENDED_START, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @TPACPI_HOTKEY_MAP_LEN, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @tpacpi_input_send_key(i32 %55)
  store i32 1, i32* %4, align 4
  br label %59

57:                                               ; preds = %50, %42
  br label %58

58:                                               ; preds = %3, %57, %38
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %54, %39, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @tpacpi_input_send_key_masked(i32) #1

declare dso_local i32 @adaptive_keyboard_hotkey_notify_hotkey(i32) #1

declare dso_local i32 @tpacpi_input_send_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
