; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_ulpi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_ulpi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_usb_phy = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ulpi-link\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get ULPI clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ulpi_phy_reset_b\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Request failed for GPIO %d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"GPIO %d direction not set to output: %d\0A\00", align 1
@ulpi_viewport_access_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to create ULPI OTG\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ULPI_VIEWPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_usb_phy*)* @ulpi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_open(%struct.tegra_usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %3, align 8
  %5 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @devm_clk_get(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @devm_gpio_request(i32 %33, i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %29
  %52 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gpio_direction_output(i32 %54, i32 0)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %96

69:                                               ; preds = %51
  %70 = call %struct.TYPE_4__* @otg_ulpi_create(i32* @ulpi_viewport_access_ops, i32 0)
  %71 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %71, i32 0, i32 1
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %74 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %69
  %78 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %79 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %96

86:                                               ; preds = %69
  %87 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ULPI_VIEWPORT, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %77, %58, %40, %17
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @devm_gpio_request(i32, i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local %struct.TYPE_4__* @otg_ulpi_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
