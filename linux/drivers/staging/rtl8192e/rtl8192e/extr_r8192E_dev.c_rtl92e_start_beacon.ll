; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_start_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_start_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rtllib_network }
%struct.rtllib_network = type { i32 }

@ATIMWND = common dso_local global i32 0, align 4
@BCN_INTERVAL = common dso_local global i32 0, align 4
@BCN_DRV_EARLY_INT = common dso_local global i32 0, align 4
@BCN_DMATIME = common dso_local global i32 0, align 4
@BCN_ERR_THRESH = common dso_local global i32 0, align 4
@BCN_TCFG_CW_SHIFT = common dso_local global i32 0, align 4
@BCN_TCFG_IFS = common dso_local global i32 0, align 4
@BCN_TCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_start_beacon(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rtllib_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i64 @rtllib_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8192_priv*
  store %struct.r8192_priv* %10, %struct.r8192_priv** %3, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.rtllib_network* %14, %struct.rtllib_network** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 15, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @rtl92e_irq_disable(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @ATIMWND, align 4
  %19 = call i32 @rtl92e_writew(%struct.net_device* %17, i32 %18, i32 2)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @BCN_INTERVAL, align 4
  %22 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %23 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtl92e_writew(%struct.net_device* %20, i32 %21, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @BCN_DRV_EARLY_INT, align 4
  %28 = call i32 @rtl92e_writew(%struct.net_device* %26, i32 %27, i32 10)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* @BCN_DMATIME, align 4
  %31 = call i32 @rtl92e_writew(%struct.net_device* %29, i32 %30, i32 256)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @BCN_ERR_THRESH, align 4
  %34 = call i32 @rtl92e_writeb(%struct.net_device* %32, i32 %33, i32 100)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BCN_TCFG_CW_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BCN_TCFG_IFS, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @BCN_TCFG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rtl92e_writew(%struct.net_device* %45, i32 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @rtl92e_irq_enable(%struct.net_device* %49)
  ret void
}

declare dso_local i64 @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_irq_disable(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writew(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_irq_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
