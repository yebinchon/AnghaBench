; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_clk_prepare_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_clk_prepare_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*)* @usbhsc_clk_prepare_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsc_clk_prepare_enable(%struct.usbhs_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = call i32 @usbhsc_is_multi_clks(%struct.usbhs_priv* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %46, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %14 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %20 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_prepare_enable(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %36 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %43, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @usbhsc_is_multi_clks(%struct.usbhs_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
