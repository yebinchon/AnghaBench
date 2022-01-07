; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i8* }

@AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@Ndis802_11Encryption1Enabled = common dso_local global i8* null, align 8
@Ndis802_11AuthModeAutoSwitch = common dso_local global i64 0, align 8
@Ndis802_11AuthModeShared = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@Ndis802_11AuthModeOpen = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @wpa_set_auth_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_set_auth_algs(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct._adapter* @netdev_priv(%struct.net_device* %7)
  store %struct._adapter* %8, %struct._adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %20 = load %struct._adapter*, %struct._adapter** %5, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i64, i64* @Ndis802_11AuthModeAutoSwitch, align 8
  %24 = load %struct._adapter*, %struct._adapter** %5, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct._adapter*, %struct._adapter** %5, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 3, i32* %29, align 8
  br label %73

30:                                               ; preds = %13, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %37 = load %struct._adapter*, %struct._adapter** %5, align 8
  %38 = getelementptr inbounds %struct._adapter, %struct._adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %41 = load %struct._adapter*, %struct._adapter** %5, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct._adapter*, %struct._adapter** %5, align 8
  %45 = getelementptr inbounds %struct._adapter, %struct._adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  br label %72

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct._adapter*, %struct._adapter** %5, align 8
  %54 = getelementptr inbounds %struct._adapter, %struct._adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i64, i64* @Ndis802_11AuthModeOpen, align 8
  %61 = load %struct._adapter*, %struct._adapter** %5, align 8
  %62 = getelementptr inbounds %struct._adapter, %struct._adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct._adapter*, %struct._adapter** %5, align 8
  %65 = getelementptr inbounds %struct._adapter, %struct._adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %52
  br label %71

68:                                               ; preds = %47
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %67
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %18
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
