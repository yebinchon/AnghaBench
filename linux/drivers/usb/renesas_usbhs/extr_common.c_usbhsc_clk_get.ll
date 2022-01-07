; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_priv = type { i32** }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.usbhs_priv*)* @usbhsc_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsc_clk_get(%struct.device* %0, %struct.usbhs_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.usbhs_priv* %1, %struct.usbhs_priv** %5, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %7 = call i32 @usbhsc_is_multi_clks(%struct.usbhs_priv* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_of_node(%struct.device* %11)
  %13 = call i8* @of_clk_get(i32 %12, i32 0)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %16 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  store i32* %14, i32** %18, align 8
  %19 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %20 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %10
  %27 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %28 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PTR_ERR(i32* %31)
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %10
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_of_node(%struct.device* %34)
  %36 = call i8* @of_clk_get(i32 %35, i32 1)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %39 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %37, i32** %41, align 8
  %42 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %43 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %53 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* null, i32** %55, align 8
  br label %72

56:                                               ; preds = %33
  %57 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %58 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %66 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %51
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %64, %26, %9
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @usbhsc_is_multi_clks(%struct.usbhs_priv*) #1

declare dso_local i8* @of_clk_get(i32, i32) #1

declare dso_local i32 @dev_of_node(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
