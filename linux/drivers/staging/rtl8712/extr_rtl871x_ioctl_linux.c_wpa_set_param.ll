; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@Ndis802_11AuthModeWPAPSK = common dso_local global i32 0, align 4
@Ndis802_11Encryption2Enabled = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPA2PSK = common dso_local global i32 0, align 4
@Ndis802_11Encryption3Enabled = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @wpa_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_set_param(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct._adapter* @netdev_priv(%struct.net_device* %9)
  store %struct._adapter* %10, %struct._adapter** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %46 [
    i32 128, label %12
    i32 130, label %37
    i32 133, label %38
    i32 131, label %39
    i32 134, label %40
    i32 132, label %44
    i32 129, label %45
  ]

12:                                               ; preds = %3
  %13 = load %struct._adapter*, %struct._adapter** %8, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 255
  switch i32 %17, label %36 [
    i32 1, label %18
    i32 2, label %27
  ]

18:                                               ; preds = %12
  %19 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %20 = load %struct._adapter*, %struct._adapter** %8, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @Ndis802_11Encryption2Enabled, align 4
  %24 = load %struct._adapter*, %struct._adapter** %8, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %36

27:                                               ; preds = %12
  %28 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %29 = load %struct._adapter*, %struct._adapter** %8, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @Ndis802_11Encryption3Enabled, align 4
  %33 = load %struct._adapter*, %struct._adapter** %8, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %12, %27, %18
  br label %49

37:                                               ; preds = %3
  br label %49

38:                                               ; preds = %3
  br label %49

39:                                               ; preds = %3
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @wpa_set_auth_algs(%struct.net_device* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %3
  br label %49

45:                                               ; preds = %3
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %45, %44, %39, %38, %37, %36
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wpa_set_auth_algs(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
