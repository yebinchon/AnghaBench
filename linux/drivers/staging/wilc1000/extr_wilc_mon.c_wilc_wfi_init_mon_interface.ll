; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_init_mon_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_init_mon_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.net_device* }
%struct.net_device = type { i32, i32*, i64*, i32 }
%struct.wilc_wfi_mon_priv = type { %struct.net_device* }

@ARPHRD_IEEE80211_RADIOTAP = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@wilc_wfi_netdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"register_netdevice failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @wilc_wfi_init_mon_interface(%struct.wilc* %0, i8* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wilc_wfi_mon_priv*, align 8
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.wilc*, %struct.wilc** %5, align 8
  %10 = getelementptr inbounds %struct.wilc, %struct.wilc* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.wilc*, %struct.wilc** %5, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  br label %80

17:                                               ; preds = %3
  %18 = call %struct.net_device* @alloc_etherdev(i32 8)
  %19 = load %struct.wilc*, %struct.wilc** %5, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 0
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.wilc*, %struct.wilc** %5, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %80

26:                                               ; preds = %17
  %27 = load i32, i32* @ARPHRD_IEEE80211_RADIOTAP, align 4
  %28 = load %struct.wilc*, %struct.wilc** %5, align 8
  %29 = getelementptr inbounds %struct.wilc, %struct.wilc* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 3
  store i32 %27, i32* %31, align 8
  %32 = load %struct.wilc*, %struct.wilc** %5, align 8
  %33 = getelementptr inbounds %struct.wilc, %struct.wilc* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @IFNAMSIZ, align 4
  %39 = call i32 @strncpy(i64* %36, i8* %37, i32 %38)
  %40 = load %struct.wilc*, %struct.wilc** %5, align 8
  %41 = getelementptr inbounds %struct.wilc, %struct.wilc* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load %struct.wilc*, %struct.wilc** %5, align 8
  %50 = getelementptr inbounds %struct.wilc, %struct.wilc* %49, i32 0, i32 0
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32* @wilc_wfi_netdev_ops, i32** %52, align 8
  %53 = load %struct.wilc*, %struct.wilc** %5, align 8
  %54 = getelementptr inbounds %struct.wilc, %struct.wilc* %53, i32 0, i32 0
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.wilc*, %struct.wilc** %5, align 8
  %58 = getelementptr inbounds %struct.wilc, %struct.wilc* %57, i32 0, i32 0
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  %60 = call i64 @register_netdevice(%struct.net_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %26
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %80

65:                                               ; preds = %26
  %66 = load %struct.wilc*, %struct.wilc** %5, align 8
  %67 = getelementptr inbounds %struct.wilc, %struct.wilc* %66, i32 0, i32 0
  %68 = load %struct.net_device*, %struct.net_device** %67, align 8
  %69 = call %struct.wilc_wfi_mon_priv* @netdev_priv(%struct.net_device* %68)
  store %struct.wilc_wfi_mon_priv* %69, %struct.wilc_wfi_mon_priv** %8, align 8
  %70 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %71 = icmp ne %struct.wilc_wfi_mon_priv* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %80

73:                                               ; preds = %65
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %76 = getelementptr inbounds %struct.wilc_wfi_mon_priv, %struct.wilc_wfi_mon_priv* %75, i32 0, i32 0
  store %struct.net_device* %74, %struct.net_device** %76, align 8
  %77 = load %struct.wilc*, %struct.wilc** %5, align 8
  %78 = getelementptr inbounds %struct.wilc, %struct.wilc* %77, i32 0, i32 0
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  store %struct.net_device* %79, %struct.net_device** %4, align 8
  br label %80

80:                                               ; preds = %73, %72, %62, %25, %13
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %81
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.wilc_wfi_mon_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
