; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_ab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_ab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.vnt_private* }
%struct.TYPE_2__ = type { i64 }
%struct.vnt_private = type { i32 }
%struct.vnt_tx_datahead_ab = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_tx_datahead_ab*)* @vnt_rxtx_datahead_ab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_datahead_ab(%struct.vnt_usb_send_context* %0, %struct.vnt_tx_datahead_ab* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_tx_datahead_ab*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_tx_datahead_ab* %1, %struct.vnt_tx_datahead_ab** %4, align 8
  %11 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %11, i32 0, i32 6
  %13 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  store %struct.vnt_private* %13, %struct.vnt_private** %5, align 8
  %14 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %15 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %6, align 8
  %20 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %21 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %24 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %33 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %36 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %35, i32 0, i32 3
  %37 = call i32 @vnt_get_phy_field(%struct.vnt_private* %29, i32 %30, i32 %31, i32 %34, i32* %36)
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ieee80211_is_pspoll(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BIT(i32 14)
  %48 = or i32 %46, %47
  %49 = call i32 @BIT(i32 15)
  %50 = or i32 %48, %49
  %51 = call i32 @cpu_to_le16(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %54 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %64

55:                                               ; preds = %2
  %56 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %57 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @vnt_get_duration_le(%struct.vnt_private* %56, i32 %59, i32 %60)
  %62 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %63 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %43
  %65 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @vnt_time_stamp_off(%struct.vnt_private* %65, i32 %66)
  %68 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %69 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %71 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %72 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %71, i32 0, i32 1
  %73 = call i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context* %70, i32* %72)
  %74 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %75 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %4, align 8
  %77 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  ret i32 %79
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vnt_get_duration_le(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_time_stamp_off(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
