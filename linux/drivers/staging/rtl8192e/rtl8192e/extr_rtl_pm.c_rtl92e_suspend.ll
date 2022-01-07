; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pm.c_rtl92e_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pm.c_rtl92e_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }
%struct.r8192_priv = type { %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"============> r8192E suspend call.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"RTL819XE:UI is open out of suspend function\0A\00", align 1
@eRfOff = common dso_local global i32 0, align 4
@RF_CHANGE_BY_INIT = common dso_local global i32 0, align 4
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_SYSTEM_RESET = common dso_local global i32 0, align 4
@WFCRC0 = common dso_local global i32 0, align 4
@WFCRC1 = common dso_local global i32 0, align 4
@WFCRC2 = common dso_local global i32 0, align 4
@PMR = common dso_local global i32 0, align 4
@MacBlkCtrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"WOL is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Supported\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92e_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 3
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 2
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %84

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %32, align 8
  %34 = icmp ne i32 (%struct.net_device*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 %40(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @netif_device_detach(%struct.net_device* %44)
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %43
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load i32, i32* @eRfOff, align 4
  %55 = load i32, i32* @RF_CHANGE_BY_INIT, align 4
  %56 = call i32 @rtl92e_set_rf_state(%struct.net_device* %53, i32 %54, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i32, i32* @CPU_GEN, align 4
  %59 = call i32 @rtl92e_readl(%struct.net_device* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @CPU_GEN_SYSTEM_RESET, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load i32, i32* @CPU_GEN, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @rtl92e_writel(%struct.net_device* %63, i32 %64, i32 %65)
  br label %83

67:                                               ; preds = %43
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load i32, i32* @WFCRC0, align 4
  %70 = call i32 @rtl92e_writel(%struct.net_device* %68, i32 %69, i32 -1)
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = load i32, i32* @WFCRC1, align 4
  %73 = call i32 @rtl92e_writel(%struct.net_device* %71, i32 %72, i32 -1)
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i32, i32* @WFCRC2, align 4
  %76 = call i32 @rtl92e_writel(%struct.net_device* %74, i32 %75, i32 -1)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load i32, i32* @PMR, align 4
  %79 = call i32 @rtl92e_writeb(%struct.net_device* %77, i32 %78, i32 5)
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load i32, i32* @MacBlkCtrl, align 4
  %82 = call i32 @rtl92e_writeb(%struct.net_device* %80, i32 %81, i32 10)
  br label %83

83:                                               ; preds = %67, %52
  br label %84

84:                                               ; preds = %83, %25
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %94 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = call i32 @pci_save_state(%struct.pci_dev* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = call i32 @pci_disable_device(%struct.pci_dev* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @pci_choose_state(%struct.pci_dev* %100, i32 %101)
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = call i32 @pci_enable_wake(%struct.pci_dev* %99, i32 %102, i32 %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @pci_choose_state(%struct.pci_dev* %113, i32 %114)
  %116 = call i32 @pci_set_power_state(%struct.pci_dev* %112, i32 %115)
  %117 = call i32 @mdelay(i32 20)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_rf_state(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
