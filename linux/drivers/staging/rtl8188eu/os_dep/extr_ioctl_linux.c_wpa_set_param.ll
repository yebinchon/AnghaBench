; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@dot11AuthAlgrthm_8021X = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPAPSK = common dso_local global i32 0, align 4
@Ndis802_11Encryption2Enabled = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPA2PSK = common dso_local global i32 0, align 4
@Ndis802_11Encryption3Enabled = common dso_local global i32 0, align 4
@_module_rtl871x_ioctl_os_c = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"wpa_set_param:padapter->securitypriv.ndisauthtype =%d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @wpa_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_set_param(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i64 @rtw_netdev_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %57 [
    i32 128, label %13
    i32 130, label %48
    i32 133, label %49
    i32 131, label %50
    i32 134, label %51
    i32 132, label %55
    i32 129, label %56
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @dot11AuthAlgrthm_8021X, align 4
  %15 = load %struct.adapter*, %struct.adapter** %8, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  switch i32 %19, label %38 [
    i32 1, label %20
    i32 2, label %29
  ]

20:                                               ; preds = %13
  %21 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %22 = load %struct.adapter*, %struct.adapter** %8, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @Ndis802_11Encryption2Enabled, align 4
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  br label %38

29:                                               ; preds = %13
  %30 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %31 = load %struct.adapter*, %struct.adapter** %8, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @Ndis802_11Encryption3Enabled, align 4
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %13, %29, %20
  %39 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %40 = load i32, i32* @_drv_info_, align 4
  %41 = load %struct.adapter*, %struct.adapter** %8, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @RT_TRACE(i32 %39, i32 %40, i8* %46)
  br label %60

48:                                               ; preds = %3
  br label %60

49:                                               ; preds = %3
  br label %60

50:                                               ; preds = %3
  br label %60

51:                                               ; preds = %3
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @wpa_set_auth_algs(%struct.net_device* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %60

55:                                               ; preds = %3
  br label %60

56:                                               ; preds = %3
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %56, %55, %51, %50, %49, %48, %38
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @wpa_set_auth_algs(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
