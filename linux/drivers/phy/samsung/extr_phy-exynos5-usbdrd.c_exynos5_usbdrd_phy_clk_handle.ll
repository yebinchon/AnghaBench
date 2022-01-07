; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_clk_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_clk_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_usbdrd_phy = type { i32*, i32, i32*, i32*, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get phy clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get phy reference clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Clock rate (%ld) not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"phy_pipe\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"PIPE3 phy operational clock not specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"phy_utmi\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"UTMI phy operational clock not specified\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"itp\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"ITP clock from main OSC not specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos5_usbdrd_phy*)* @exynos5_usbdrd_phy_clk_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_clk_handle(%struct.exynos5_usbdrd_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos5_usbdrd_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.exynos5_usbdrd_phy* %0, %struct.exynos5_usbdrd_phy** %3, align 8
  %6 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %7 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @devm_clk_get(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %12 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %11, i32 0, i32 7
  store i32* %10, i32** %12, align 8
  %13 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %14 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %20 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %24 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %2, align 4
  br label %136

27:                                               ; preds = %1
  %28 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %29 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @devm_clk_get(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %34 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %36 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %42 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %46 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %2, align 4
  br label %136

49:                                               ; preds = %27
  %50 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %51 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @clk_get_rate(i32* %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %56 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %55, i32 0, i32 5
  %57 = call i32 @exynos5_rate_to_clk(i64 %54, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %62 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %136

67:                                               ; preds = %49
  %68 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %69 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %135, label %74

74:                                               ; preds = %67
  %75 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %76 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @devm_clk_get(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %81 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %83 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %89 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_info(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %92 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %93 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %74
  %95 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %96 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @devm_clk_get(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %101 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %100, i32 0, i32 2
  store i32* %99, i32** %101, align 8
  %102 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %103 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @IS_ERR(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %94
  %108 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %109 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_info(i32 %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %112 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %113 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %107, %94
  %115 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %116 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @devm_clk_get(i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %121 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %120, i32 0, i32 0
  store i32* %119, i32** %121, align 8
  %122 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %123 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @IS_ERR(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %114
  %128 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %129 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_info(i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %132 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %133 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %127, %114
  br label %135

135:                                              ; preds = %134, %67
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %60, %40, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @exynos5_rate_to_clk(i64, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
