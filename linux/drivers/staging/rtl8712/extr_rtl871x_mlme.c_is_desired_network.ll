; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_is_desired_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_is_desired_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_8__, %struct.security_priv }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.security_priv = type { i64, i64 }
%struct.wlan_network = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@_NO_PRIVACY_ = common dso_local global i64 0, align 8
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %struct.wlan_network*)* @is_desired_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_desired_network(%struct._adapter* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 1
  store %struct.security_priv* %11, %struct.security_priv** %9, align 8
  %12 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %13 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %18 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %22 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %26 = call i64 @r8712_get_wps_ie(i32 %20, i32 %24, i32* %25, i32* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %65

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %32 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @_NO_PRIVACY_, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %38 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %36, %30
  %44 = load %struct._adapter*, %struct._adapter** %4, align 8
  %45 = getelementptr inbounds %struct._adapter, %struct._adapter* %44, i32 0, i32 0
  %46 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %47 = call i64 @check_fwstate(%struct.TYPE_8__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %51 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct._adapter*, %struct._adapter** %4, align 8
  %55 = getelementptr inbounds %struct._adapter, %struct._adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %29, %28
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @r8712_get_wps_ie(i32, i32, i32*, i32*) #1

declare dso_local i64 @check_fwstate(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
