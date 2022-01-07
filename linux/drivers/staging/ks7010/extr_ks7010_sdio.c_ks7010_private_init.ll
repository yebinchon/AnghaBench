; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_private_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_private_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i8*, %struct.TYPE_2__, i32, i32, i8*, i8*, i64, %struct.net_device*, i32, %struct.ks_sdio_card* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ks_sdio_card = type { i32 }
%struct.net_device = type { i32 }

@DEVICE_STATE_PREBOOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, %struct.ks_sdio_card*, %struct.net_device*)* @ks7010_private_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks7010_private_init(%struct.ks_wlan_private* %0, %struct.ks_sdio_card* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca %struct.ks_sdio_card*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store %struct.ks_sdio_card* %1, %struct.ks_sdio_card** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %7 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %5, align 8
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 9
  store %struct.ks_sdio_card* %7, %struct.ks_sdio_card** %9, align 8
  %10 = load i32, i32* @DEVICE_STATE_PREBOOT, align 4
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 7
  store %struct.net_device* %13, %struct.net_device** %15, align 8
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** @jiffies, align 8
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @jiffies, align 8
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %29 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %28, i32 0, i32 3
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %32 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %31, i32 0, i32 2
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %35 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %39 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %43 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %47 = call i32 @trx_device_init(%struct.ks_wlan_private* %46)
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %49 = call i32 @hostif_init(%struct.ks_wlan_private* %48)
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @ks_wlan_net_start(%struct.net_device* %50)
  %52 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %53 = call i32 @ks7010_init_defaults(%struct.ks_wlan_private* %52)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @trx_device_init(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_init(%struct.ks_wlan_private*) #1

declare dso_local i32 @ks_wlan_net_start(%struct.net_device*) #1

declare dso_local i32 @ks7010_init_defaults(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
