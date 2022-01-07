; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.data_queue* }
%struct.data_queue = type { i32 }
%struct.rt2x00_intf = type { i32 }
%struct.rt2x00intf_conf = type { i32, i32, i32 }

@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@BCNCSR1 = common dso_local global i32 0, align 4
@BCNCSR1_PRELOAD = common dso_local global i32 0, align 4
@BCNCSR1_BEACON_CWMIN = common dso_local global i32 0, align 4
@CSR14 = common dso_local global i32 0, align 4
@CSR14_TSF_SYNC = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@CSR3 = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4
@CSR5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)* @rt2500pci_config_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.rt2x00intf_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.rt2x00intf_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.data_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.rt2x00intf_conf* %2, %struct.rt2x00intf_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load %struct.data_queue*, %struct.data_queue** %13, align 8
  store %struct.data_queue* %14, %struct.data_queue** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = load i32, i32* @PREAMBLE, align 4
  %21 = load i32, i32* @IEEE80211_HEADER, align 4
  %22 = call i32 @GET_DURATION(i32 %21, i32 20)
  %23 = add i32 %20, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = load i32, i32* @BCNCSR1, align 4
  %26 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @BCNCSR1_PRELOAD, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @rt2x00_set_field32(i32* %11, i32 %27, i32 %28)
  %30 = load i32, i32* @BCNCSR1_BEACON_CWMIN, align 4
  %31 = load %struct.data_queue*, %struct.data_queue** %9, align 8
  %32 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %11, i32 %30, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = load i32, i32* @BCNCSR1, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = load i32, i32* @CSR14, align 4
  %41 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @CSR14_TSF_SYNC, align 4
  %43 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %44 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rt2x00_set_field32(i32* %11, i32 %42, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %48 = load i32, i32* @CSR14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %19, %4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %58 = load i32, i32* @CSR3, align 4
  %59 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %60 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %57, i32 %58, i32 %61, i32 4)
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %70 = load i32, i32* @CSR5, align 4
  %71 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %72 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %69, i32 %70, i32 %73, i32 4)
  br label %75

75:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @GET_DURATION(i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
