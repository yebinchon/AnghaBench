; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-meson-audio-arb.c_meson_audio_arb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-meson-audio-arb.c_meson_audio_arb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_audio_arb_data = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@axg_audio_arb_reset_bits = common dso_local global i32 0, align 4
@meson_audio_arb_rstc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable arb clock\0A\00", align 1
@ARB_GENERAL_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to register arb reset controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_audio_arb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_audio_arb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.meson_audio_arb_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.meson_audio_arb_data* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.meson_audio_arb_data* %12, %struct.meson_audio_arb_data** %5, align 8
  %13 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %14 = icmp ne %struct.meson_audio_arb_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.meson_audio_arb_data* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @devm_clk_get(%struct.device* %22, i32* null)
  %24 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %25 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %27 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %33 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %44 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %121

47:                                               ; preds = %18
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = call i32 @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %55 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %57 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %63 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %121

66:                                               ; preds = %47
  %67 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %68 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %67, i32 0, i32 4
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load i32, i32* @axg_audio_arb_reset_bits, align 4
  %71 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %72 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @axg_audio_arb_reset_bits, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %76 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %79 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32* @meson_audio_arb_rstc_ops, i32** %80, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %85 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %89 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %92 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_prepare_enable(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %66
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %121

101:                                              ; preds = %66
  %102 = load i32, i32* @ARB_GENERAL_BIT, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %105 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @writel(i32 %103, i32 %106)
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %5, align 8
  %110 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %109, i32 0, i32 0
  %111 = call i32 @devm_reset_controller_register(%struct.device* %108, %struct.TYPE_2__* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = call i32 @meson_audio_arb_remove(%struct.platform_device* %117)
  br label %119

119:                                              ; preds = %114, %101
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %97, %61, %42, %15
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.meson_audio_arb_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_audio_arb_data*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @meson_audio_arb_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
