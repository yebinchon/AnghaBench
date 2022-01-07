; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_ioctl_acl_add_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_ioctl_acl_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_param = type { i32* }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@WIFI_AP_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_param*, i32)* @rtw_ioctl_acl_add_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ioctl_acl_add_sta(%struct.net_device* %0, %struct.ieee_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @rtw_netdev_priv(%struct.net_device* %10)
  %12 = inttoptr i64 %11 to %struct.adapter*
  store %struct.adapter* %12, %struct.adapter** %8, align 8
  %13 = load %struct.adapter*, %struct.adapter** %8, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.mlme_priv* %14, %struct.mlme_priv** %9, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %16 = load i32, i32* @WIFI_AP_STATE, align 4
  %17 = call i32 @check_fwstate(%struct.mlme_priv* %15, i32 %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %24 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %31 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %38 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %45 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %52 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %59 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 255
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %57, %50, %43, %36, %29, %22
  %68 = load %struct.adapter*, %struct.adapter** %8, align 8
  %69 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %70 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @rtw_acl_add_sta(%struct.adapter* %68, i32* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %64, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_acl_add_sta(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
