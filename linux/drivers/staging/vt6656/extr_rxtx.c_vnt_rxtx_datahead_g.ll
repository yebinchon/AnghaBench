; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.vnt_private* }
%struct.TYPE_2__ = type { i64 }
%struct.vnt_private = type { i32, i32 }
%struct.vnt_tx_datahead_g = type { i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_tx_datahead_g*)* @vnt_rxtx_datahead_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_datahead_g(%struct.vnt_usb_send_context* %0, %struct.vnt_tx_datahead_g* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_tx_datahead_g*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_tx_datahead_g* %1, %struct.vnt_tx_datahead_g** %4, align 8
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
  %35 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %36 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %35, i32 0, i32 6
  %37 = call i32 @vnt_get_phy_field(%struct.vnt_private* %29, i32 %30, i32 %31, i32 %34, i32* %36)
  %38 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PK_TYPE_11B, align 4
  %44 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %45 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %44, i32 0, i32 5
  %46 = call i32 @vnt_get_phy_field(%struct.vnt_private* %38, i32 %39, i32 %42, i32 %43, i32* %45)
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ieee80211_is_pspoll(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %2
  %53 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 14)
  %57 = or i32 %55, %56
  %58 = call i32 @BIT(i32 15)
  %59 = or i32 %57, %58
  %60 = call i8* @cpu_to_le16(i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %63 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %66 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %82

67:                                               ; preds = %2
  %68 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %69 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %70 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @vnt_get_duration_le(%struct.vnt_private* %68, i32 %71, i32 %72)
  %74 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %75 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %77 = load i32, i32* @PK_TYPE_11B, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i8* @vnt_get_duration_le(%struct.vnt_private* %76, i32 %77, i32 %78)
  %80 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %81 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %67, %52
  %83 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %83, i32 %84)
  %86 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %87 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %89 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %90 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %88, i32 %91)
  %93 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %94 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %96 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %97 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %96, i32 0, i32 1
  %98 = call i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context* %95, i32* %97)
  %99 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %100 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %4, align 8
  %102 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @le16_to_cpu(i8* %103)
  ret i32 %104
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @vnt_get_duration_le(%struct.vnt_private*, i32, i32) #1

declare dso_local i8* @vnt_time_stamp_off(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
