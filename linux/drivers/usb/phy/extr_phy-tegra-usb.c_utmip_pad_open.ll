; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmip_pad_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmip_pad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_usb_phy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"utmi-pads\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get UTMIP pad clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to get UTMI-pads reset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to enable UTMI-pads clock: %d\0A\00", align 1
@utmip_pad_lock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to initialize UTMI-pads reset: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to assert UTMI-pads reset: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to deassert UTMI-pads reset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_usb_phy*)* @utmip_pad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utmip_pad_open(%struct.tegra_usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %3, align 8
  %5 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @devm_clk_get(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %121

29:                                               ; preds = %1
  %30 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @devm_reset_control_get_optional_shared(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %29
  %43 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %121

54:                                               ; preds = %29
  %55 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_prepare_enable(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %121

69:                                               ; preds = %54
  %70 = call i32 @spin_lock(i32* @utmip_pad_lock)
  %71 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @reset_control_deassert(i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %79 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %114

84:                                               ; preds = %69
  %85 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @reset_control_assert(i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %114

98:                                               ; preds = %84
  %99 = call i32 @udelay(i32 1)
  %100 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reset_control_deassert(i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %98
  br label %114

114:                                              ; preds = %113, %91, %77
  %115 = call i32 @spin_unlock(i32* @utmip_pad_lock)
  %116 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %117 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @clk_disable_unprepare(i32 %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %114, %61, %42, %17
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_reset_control_get_optional_shared(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
