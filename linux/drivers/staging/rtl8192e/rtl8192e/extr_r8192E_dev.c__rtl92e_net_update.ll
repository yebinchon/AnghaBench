; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_net_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_net_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.rtllib_network }
%struct.rtllib_network = type { i32, i64 }

@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@BSSIDR = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@ATIMWND = common dso_local global i64 0, align 8
@BCN_DMATIME = common dso_local global i64 0, align 8
@BCN_INTERVAL = common dso_local global i64 0, align 8
@BCN_DRV_EARLY_INT = common dso_local global i64 0, align 8
@BCN_ERR_THRESH = common dso_local global i32 0, align 4
@BCN_TCFG_CW_SHIFT = common dso_local global i32 0, align 4
@BCN_TCFG_IFS = common dso_local global i32 0, align 4
@BCN_TCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_net_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_net_update(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rtllib_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.rtllib_network* %14, %struct.rtllib_network** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @rtl92e_config_rate(%struct.net_device* %15, i32* %8)
  %17 = load i32, i32* @PREAMBLE_AUTO, align 4
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 351
  store i32 %21, i32* %8, align 4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load i64, i64* @BSSIDR, align 8
  %26 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %27 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rtl92e_writew(%struct.net_device* %24, i64 %25, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i64, i64* @BSSIDR, align 8
  %34 = add nsw i64 %33, 2
  %35 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %36 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 2
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rtl92e_writel(%struct.net_device* %32, i64 %34, i32 %40)
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IW_MODE_ADHOC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %1
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i64, i64* @ATIMWND, align 8
  %52 = call i32 @rtl92e_writew(%struct.net_device* %50, i64 %51, i32 2)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i64, i64* @BCN_DMATIME, align 8
  %55 = call i32 @rtl92e_writew(%struct.net_device* %53, i64 %54, i32 256)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i64, i64* @BCN_INTERVAL, align 8
  %58 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %59 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @rtl92e_writew(%struct.net_device* %56, i64 %57, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i64, i64* @BCN_DRV_EARLY_INT, align 8
  %64 = call i32 @rtl92e_writew(%struct.net_device* %62, i64 %63, i32 10)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* @BCN_ERR_THRESH, align 4
  %67 = call i32 @rtl92e_writeb(%struct.net_device* %65, i32 %66, i32 100)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BCN_TCFG_CW_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BCN_TCFG_IFS, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i64, i64* @BCN_TCFG, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @rtl92e_writew(%struct.net_device* %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @rtl92e_writew(%struct.net_device*, i64, i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i64, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
