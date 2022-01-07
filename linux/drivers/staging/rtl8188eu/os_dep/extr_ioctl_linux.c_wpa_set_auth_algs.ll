; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i8* }

@AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"wpa_set_auth_algs, AUTH_ALG_SHARED_KEY and  AUTH_ALG_OPEN_SYSTEM [value:0x%x]\0A\00", align 1
@Ndis802_11Encryption1Enabled = common dso_local global i8* null, align 8
@Ndis802_11AuthModeAutoSwitch = common dso_local global i64 0, align 8
@dot11AuthAlgrthm_Auto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"wpa_set_auth_algs, AUTH_ALG_SHARED_KEY  [value:0x%x]\0A\00", align 1
@Ndis802_11AuthModeShared = common dso_local global i64 0, align 8
@dot11AuthAlgrthm_Shared = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"wpa_set_auth_algs, AUTH_ALG_OPEN_SYSTEM\0A\00", align 1
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@Ndis802_11AuthModeOpen = common dso_local global i64 0, align 8
@dot11AuthAlgrthm_Open = common dso_local global i32 0, align 4
@AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"wpa_set_auth_algs, AUTH_ALG_LEAP\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"wpa_set_auth_algs, error!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @wpa_set_auth_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_set_auth_algs(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @rtw_netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.adapter*
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %23 = load %struct.adapter*, %struct.adapter** %5, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load i64, i64* @Ndis802_11AuthModeAutoSwitch, align 8
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* @dot11AuthAlgrthm_Auto, align 4
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  br label %91

34:                                               ; preds = %14, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %43 = load %struct.adapter*, %struct.adapter** %5, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @dot11AuthAlgrthm_Shared, align 4
  %51 = load %struct.adapter*, %struct.adapter** %5, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  br label %90

54:                                               ; preds = %34
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i64, i64* @Ndis802_11AuthModeOpen, align 8
  %69 = load %struct.adapter*, %struct.adapter** %5, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* @dot11AuthAlgrthm_Open, align 4
  %73 = load %struct.adapter*, %struct.adapter** %5, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %59
  br label %89

77:                                               ; preds = %54
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @AUTH_ALG_LEAP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %88

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %82
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %39
  br label %91

91:                                               ; preds = %90, %19
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
