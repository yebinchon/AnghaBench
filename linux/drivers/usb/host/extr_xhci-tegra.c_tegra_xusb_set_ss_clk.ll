; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_set_ss_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_set_ss_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { i32, %struct.clk*, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid SS rate: %lu Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SS clock doesn't match requested rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb*, i64)* @tegra_xusb_set_ss_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_set_ss_clk(%struct.tegra_xusb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_xusb* %0, %struct.tegra_xusb** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %11, i32 0, i32 3
  %13 = load %struct.clk*, %struct.clk** %12, align 8
  store %struct.clk* %13, %struct.clk** %8, align 8
  %14 = load %struct.clk*, %struct.clk** %8, align 8
  %15 = call i64 @clk_get_rate(%struct.clk* %14)
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  switch i64 %20, label %81 [
    i64 129, label %21
    i64 128, label %62
  ]

21:                                               ; preds = %19
  %22 = load %struct.clk*, %struct.clk** %8, align 8
  %23 = call %struct.clk* @clk_get_parent(%struct.clk* %22)
  %24 = call i64 @clk_get_rate(%struct.clk* %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %25, i32 0, i32 2
  %27 = load %struct.clk*, %struct.clk** %26, align 8
  %28 = call i64 @clk_get_rate(%struct.clk* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = udiv i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.clk*, %struct.clk** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = udiv i64 %34, %36
  %38 = call i32 @clk_set_rate(%struct.clk* %33, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %21
  %44 = load %struct.clk*, %struct.clk** %8, align 8
  %45 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %45, i32 0, i32 2
  %47 = load %struct.clk*, %struct.clk** %46, align 8
  %48 = call i32 @clk_set_parent(%struct.clk* %44, %struct.clk* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %43
  %54 = load %struct.clk*, %struct.clk** %8, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @clk_set_rate(%struct.clk* %54, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %102

61:                                               ; preds = %53
  br label %89

62:                                               ; preds = %19
  %63 = load %struct.clk*, %struct.clk** %8, align 8
  %64 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %64, i32 0, i32 1
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  %67 = call i32 @clk_set_parent(%struct.clk* %63, %struct.clk* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %102

72:                                               ; preds = %62
  %73 = load %struct.clk*, %struct.clk** %8, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @clk_set_rate(%struct.clk* %73, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %102

80:                                               ; preds = %72
  br label %89

81:                                               ; preds = %19
  %82 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %102

89:                                               ; preds = %80, %61
  %90 = load %struct.clk*, %struct.clk** %8, align 8
  %91 = call i64 @clk_get_rate(%struct.clk* %90)
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %96 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %94, %81, %78, %70, %59, %51, %41, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get_parent(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
