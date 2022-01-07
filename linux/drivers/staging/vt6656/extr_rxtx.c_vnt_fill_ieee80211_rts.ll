; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_ieee80211_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_ieee80211_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_rts = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.ieee80211_rts*, i32)* @vnt_fill_ieee80211_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_fill_ieee80211_rts(%struct.vnt_usb_send_context* %0, %struct.ieee80211_rts* %1, i32 %2) #0 {
  %4 = alloca %struct.vnt_usb_send_context*, align 8
  %5 = alloca %struct.ieee80211_rts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %4, align 8
  store %struct.ieee80211_rts* %1, %struct.ieee80211_rts** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %4, align 8
  %9 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %18 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %25, i32 %28)
  %30 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ether_addr_copy(i32 %32, i32 %35)
  ret i32 0
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
