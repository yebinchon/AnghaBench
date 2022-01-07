; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_cts_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_cts_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32, i32 }
%union.vnt_tx_data_head = type { %struct.vnt_cts }
%struct.vnt_cts = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@CTSDUR_BA = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %union.vnt_tx_data_head*)* @vnt_fill_cts_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_fill_cts_head(%struct.vnt_usb_send_context* %0, %union.vnt_tx_data_head* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %union.vnt_tx_data_head*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca %struct.vnt_cts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %union.vnt_tx_data_head* %1, %union.vnt_tx_data_head** %4, align 8
  %9 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %9, i32 0, i32 2
  %11 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  store %struct.vnt_private* %11, %struct.vnt_private** %5, align 8
  %12 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %4, align 8
  %13 = bitcast %union.vnt_tx_data_head* %12 to %struct.vnt_cts*
  store %struct.vnt_cts* %13, %struct.vnt_cts** %6, align 8
  store i32 14, i32* %7, align 4
  %14 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %15 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PK_TYPE_11B, align 4
  %23 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %24 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %23, i32 0, i32 3
  %25 = call i32 @vnt_get_phy_field(%struct.vnt_private* %17, i32 %18, i32 %21, i32 %22, i32* %24)
  %26 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %27 = load i32, i32* @CTSDUR_BA, align 4
  %28 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %26, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %34 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %36 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %39 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %42 = load i32, i32* @IEEE80211_STYPE_CTS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %46 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %49 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ether_addr_copy(i32 %51, i32 %54)
  %56 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %57 = load %struct.vnt_cts*, %struct.vnt_cts** %6, align 8
  %58 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %57, i32 0, i32 0
  %59 = call i32 @vnt_rxtx_datahead_g(%struct.vnt_usb_send_context* %56, i32* %58)
  ret i32 %59
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i32 @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @vnt_rxtx_datahead_g(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
