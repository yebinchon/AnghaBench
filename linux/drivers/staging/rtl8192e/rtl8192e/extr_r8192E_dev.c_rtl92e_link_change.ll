; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.rtllib_device*, %struct.TYPE_3__*, i32 }
%struct.rtllib_device = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }

@RTLLIB_LINKED = common dso_local global i64 0, align 8
@KEY_TYPE_WEP40 = common dso_local global i64 0, align 8
@KEY_TYPE_WEP104 = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@RCR = common dso_local global i32 0, align 4
@RCR_CBSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 1
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %9, align 8
  store %struct.rtllib_device* %10, %struct.rtllib_device** %4, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %18 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTLLIB_LINKED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @_rtl92e_net_update(%struct.net_device* %23)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 %29(%struct.net_device* %30)
  %32 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %33 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KEY_TYPE_WEP40, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KEY_TYPE_WEP104, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %22
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @rtl92e_enable_hw_security_config(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %50

47:                                               ; preds = %16
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @rtl92e_writeb(%struct.net_device* %48, i32 371, i32 0)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @_rtl92e_update_msr(%struct.net_device* %51)
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IW_MODE_INFRA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IW_MODE_ADHOC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %58, %50
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* @RCR, align 4
  %67 = call i32 @rtl92e_readl(%struct.net_device* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %69, align 8
  %71 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RTLLIB_LINKED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %64
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @RCR_CBSSID, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %81
  br label %96

89:                                               ; preds = %64
  %90 = load i32, i32* @RCR_CBSSID, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %88
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @RCR, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @rtl92e_writel(%struct.net_device* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %15, %96, %58
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_net_update(%struct.net_device*) #1

declare dso_local i32 @rtl92e_enable_hw_security_config(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @_rtl92e_update_msr(%struct.net_device*) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
