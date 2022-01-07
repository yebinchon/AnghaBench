; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }

@_rtl92e_watchdog_timer_cb = common dso_local global i32 0, align 4
@rtl92e_check_rfctrl_gpio_timer = common dso_local global i32 0, align 4
@_rtl92e_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error allocating IRQ %d\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Endopoints initialization failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @_rtl92e_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @_rtl92e_init(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %4, align 8
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 4
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @_rtl92e_init_priv_handler(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @_rtl92e_init_priv_constant(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @_rtl92e_init_priv_variable(%struct.net_device* %14)
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %17 = call i32 @_rtl92e_init_priv_lock(%struct.r8192_priv* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @_rtl92e_init_priv_task(%struct.net_device* %18)
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 %24(%struct.net_device* %25)
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 %31(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @_rtl92e_get_channel_map(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @rtl92e_dm_init(%struct.net_device* %36)
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 2
  %40 = load i32, i32* @_rtl92e_watchdog_timer_cb, align 4
  %41 = call i32 @timer_setup(i32* %39, i32 %40, i32 0)
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load i32, i32* @rtl92e_check_rfctrl_gpio_timer, align 4
  %45 = call i32 @timer_setup(i32* %43, i32 %44, i32 0)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @rtl92e_irq_disable(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @_rtl92e_irq, align 4
  %52 = load i32, i32* @IRQF_SHARED, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i64 @request_irq(i32 %50, i32 %51, i32 %52, i32 %55, %struct.net_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %1
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i16 -1, i16* %2, align 2
  br label %88

65:                                               ; preds = %1
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @COMP_INIT, align 4
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @RT_TRACE(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i64 @_rtl92e_pci_initdescring(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i32 @free_irq(i32 %84, %struct.net_device* %85)
  store i16 -1, i16* %2, align 2
  br label %88

87:                                               ; preds = %65
  store i16 0, i16* %2, align 2
  br label %88

88:                                               ; preds = %87, %79, %59
  %89 = load i16, i16* %2, align 2
  ret i16 %89
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_rtl92e_init_priv_handler(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_init_priv_constant(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_init_priv_variable(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_init_priv_lock(%struct.r8192_priv*) #1

declare dso_local i32 @_rtl92e_init_priv_task(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_get_channel_map(%struct.net_device*) #1

declare dso_local i32 @rtl92e_dm_init(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @rtl92e_irq_disable(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i64 @_rtl92e_pci_initdescring(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
