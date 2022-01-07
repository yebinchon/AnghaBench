; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sdio_func = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.hwbus_priv = type { %struct.TYPE_4__*, i32, %struct.sdio_func* }

@.str = private unnamed_addr constant [32 x i8] c"cw1200_wlan_sdio: Probe called\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't allocate SDIO hwbus_priv.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MMC_QUIRK_LENIENT_FN0 = common dso_local global i32 0, align 4
@global_plat_data = common dso_local global %struct.TYPE_4__* null, align 8
@cw1200_sdio_hwbus_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @cw1200_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.hwbus_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hwbus_priv* @kzalloc(i32 24, i32 %17)
  store %struct.hwbus_priv* %18, %struct.hwbus_priv** %6, align 8
  %19 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %20 = icmp ne %struct.hwbus_priv* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %16
  %26 = load i32, i32* @MMC_QUIRK_LENIENT_FN0, align 4
  %27 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %28 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @global_plat_data, align 8
  %34 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %35 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %34, i32 0, i32 0
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %37 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %38 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %37, i32 0, i32 2
  store %struct.sdio_func* %36, %struct.sdio_func** %38, align 8
  %39 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %40 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %41 = call i32 @sdio_set_drvdata(%struct.sdio_func* %39, %struct.hwbus_priv* %40)
  %42 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %43 = call i32 @sdio_claim_host(%struct.sdio_func* %42)
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = call i32 @sdio_enable_func(%struct.sdio_func* %44)
  %46 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %47 = call i32 @sdio_release_host(%struct.sdio_func* %46)
  %48 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %49 = call i32 @cw1200_sdio_irq_subscribe(%struct.hwbus_priv* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %51 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %52 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %51, i32 0, i32 1
  %53 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %54 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %53, i32 0, i32 1
  %55 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %56 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %61 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %66 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %71 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cw1200_core_probe(i32* @cw1200_sdio_hwbus_ops, %struct.hwbus_priv* %50, i32* %52, i32* %54, i32 %59, i32 %64, i32 %69, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %25
  %79 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %80 = call i32 @cw1200_sdio_irq_unsubscribe(%struct.hwbus_priv* %79)
  %81 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %82 = call i32 @sdio_claim_host(%struct.sdio_func* %81)
  %83 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %84 = call i32 @sdio_disable_func(%struct.sdio_func* %83)
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = call i32 @sdio_release_host(%struct.sdio_func* %85)
  %87 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %88 = call i32 @sdio_set_drvdata(%struct.sdio_func* %87, %struct.hwbus_priv* null)
  %89 = load %struct.hwbus_priv*, %struct.hwbus_priv** %6, align 8
  %90 = call i32 @kfree(%struct.hwbus_priv* %89)
  br label %91

91:                                               ; preds = %78, %25
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %21, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.hwbus_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.hwbus_priv*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @cw1200_sdio_irq_subscribe(%struct.hwbus_priv*) #1

declare dso_local i32 @cw1200_core_probe(i32*, %struct.hwbus_priv*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cw1200_sdio_irq_unsubscribe(%struct.hwbus_priv*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.hwbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
