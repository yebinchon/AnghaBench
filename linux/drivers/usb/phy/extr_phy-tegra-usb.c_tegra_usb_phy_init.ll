; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.tegra_usb_phy = type { i32, i64, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get pll_u clock: %d\0A\00", align 1
@tegra_freq_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid pll_u parent rate %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to enable USB VBUS regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_usb_phy*)* @tegra_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_usb_phy_init(%struct.tegra_usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_usb_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %3, align 8
  %7 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @devm_clk_get(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %129

31:                                               ; preds = %1
  %32 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %129

40:                                               ; preds = %31
  %41 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_get_parent(i32 %43)
  %45 = call i64 @clk_get_rate(i32 %44)
  store i64 %45, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %68, %40
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tegra_freq_table, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tegra_freq_table, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tegra_freq_table, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %65, i32 0, i32 4
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  br label %71

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %46

71:                                               ; preds = %60, %46
  %72 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %72, i32 0, i32 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = icmp ne %struct.TYPE_5__* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %123

86:                                               ; preds = %71
  %87 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %86
  %93 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @regulator_enable(i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %123

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %109 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %114 = call i32 @ulpi_open(%struct.tegra_usb_phy* %113)
  store i32 %114, i32* %6, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %117 = call i32 @utmip_pad_open(%struct.tegra_usb_phy* %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %129

123:                                              ; preds = %121, %99, %76
  %124 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %125 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @clk_disable_unprepare(i32 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %122, %38, %19
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @clk_get_parent(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @ulpi_open(%struct.tegra_usb_phy*) #1

declare dso_local i32 @utmip_pad_open(%struct.tegra_usb_phy*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
