; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mxc_w1_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.mxc_w1_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Low clock frequency causes improper function\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Incorrect time base frequency %lu Hz\0A\00", align 1
@MXC_W1_RESET_RST = common dso_local global i32 0, align 4
@MXC_W1_RESET = common dso_local global i64 0, align 8
@MXC_W1_TIME_DIVIDER = common dso_local global i64 0, align 8
@mxc_w1_ds2_reset_bus = common dso_local global i32 0, align 4
@mxc_w1_ds2_touch_bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxc_w1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_w1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mxc_w1_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mxc_w1_device* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.mxc_w1_device* %11, %struct.mxc_w1_device** %4, align 8
  %12 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %13 = icmp ne %struct.mxc_w1_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i64 @devm_clk_get(i32* %19, i32* null)
  %21 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %22 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %24 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @IS_ERR(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %30 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @PTR_ERR(i64 %31)
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %17
  %34 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %35 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @clk_prepare_enable(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %135

42:                                               ; preds = %33
  %43 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %44 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @clk_get_rate(i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ult i64 %47, 10000000
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_warn(i32* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @DIV_ROUND_CLOSEST(i64 %54, i32 1000000)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = udiv i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %60, 980000
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %63, 1020000
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32*, i8*, ...) @dev_warn(i32* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %71, i32 0)
  %73 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %74 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %76 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @IS_ERR(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %82 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @PTR_ERR(i64 %83)
  store i32 %84, i32* %7, align 4
  br label %129

85:                                               ; preds = %70
  %86 = load i32, i32* @MXC_W1_RESET_RST, align 4
  %87 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %88 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MXC_W1_RESET, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writeb(i32 %86, i64 %91)
  %93 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %94 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MXC_W1_RESET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writeb(i32 0, i64 %97)
  %99 = load i32, i32* %6, align 4
  %100 = sub i32 %99, 1
  %101 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %102 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MXC_W1_TIME_DIVIDER, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writeb(i32 %100, i64 %105)
  %107 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %108 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %109 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store %struct.mxc_w1_device* %107, %struct.mxc_w1_device** %110, align 8
  %111 = load i32, i32* @mxc_w1_ds2_reset_bus, align 4
  %112 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %113 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @mxc_w1_ds2_touch_bit, align 4
  %116 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %117 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.mxc_w1_device* %120)
  %122 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %123 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %122, i32 0, i32 1
  %124 = call i32 @w1_add_master_device(%struct.TYPE_2__* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %85
  br label %129

128:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %135

129:                                              ; preds = %127, %80
  %130 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %131 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @clk_disable_unprepare(i64 %132)
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %129, %128, %40, %28, %14
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.mxc_w1_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxc_w1_device*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
