; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_intf = type { i32 }
%struct.rt2x00intf_conf = type { i64, i32, i32, i32 }

@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@TXRX_CSR20 = common dso_local global i32 0, align 4
@TXRX_CSR20_OFFSET = common dso_local global i32 0, align 4
@TXRX_CSR20_BCN_EXPECT_WINDOW = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@TXRX_CSR18 = common dso_local global i32 0, align 4
@TXRX_CSR18_OFFSET = common dso_local global i32 0, align 4
@TXRX_CSR19 = common dso_local global i32 0, align 4
@TXRX_CSR19_TSF_SYNC = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@MAC_CSR2 = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4
@MAC_CSR5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)* @rt2500usb_config_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.rt2x00intf_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.rt2x00intf_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.rt2x00intf_conf* %2, %struct.rt2x00intf_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %4
  %16 = load i32, i32* @PREAMBLE, align 4
  %17 = load i32, i32* @IEEE80211_HEADER, align 4
  %18 = call i32 @GET_DURATION(i32 %17, i32 20)
  %19 = add i32 %16, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = load i32, i32* @TXRX_CSR20, align 4
  %22 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @TXRX_CSR20_OFFSET, align 4
  %24 = load i32, i32* %9, align 4
  %25 = lshr i32 %24, 6
  %26 = call i32 @rt2x00_set_field16(i32* %10, i32 %23, i32 %25)
  %27 = load i32, i32* @TXRX_CSR20_BCN_EXPECT_WINDOW, align 4
  %28 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %29 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = mul nsw i32 2, %33
  %35 = call i32 @rt2x00_set_field16(i32* %10, i32 %27, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load i32, i32* @TXRX_CSR20, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @TXRX_CSR18, align 4
  %42 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @TXRX_CSR18_OFFSET, align 4
  %44 = call i32 @rt2x00_set_field16(i32* %10, i32 %43, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %46 = load i32, i32* @TXRX_CSR18, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %50 = load i32, i32* @TXRX_CSR19, align 4
  %51 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @TXRX_CSR19_TSF_SYNC, align 4
  %53 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %54 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rt2x00_set_field16(i32* %10, i32 %52, i32 %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %58 = load i32, i32* @TXRX_CSR19, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %15, %4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = load i32, i32* @MAC_CSR2, align 4
  %69 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %70 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @rt2500usb_register_multiwrite(%struct.rt2x00_dev* %67, i32 %68, i32 %71, i32 12)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %80 = load i32, i32* @MAC_CSR5, align 4
  %81 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %82 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rt2500usb_register_multiwrite(%struct.rt2x00_dev* %79, i32 %80, i32 %83, i32 12)
  br label %85

85:                                               ; preds = %78, %73
  ret void
}

declare dso_local i32 @GET_DURATION(i32, i32) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
