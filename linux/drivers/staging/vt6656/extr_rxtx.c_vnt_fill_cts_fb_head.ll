; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_cts_fb_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_cts_fb_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i32, i32 }
%union.vnt_tx_data_head = type { %struct.vnt_cts_fb }
%struct.vnt_cts_fb = type { i32, %struct.TYPE_2__, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@CTSDUR_BA = common dso_local global i32 0, align 4
@CTSDUR_BA_F0 = common dso_local global i32 0, align 4
@CTSDUR_BA_F1 = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %union.vnt_tx_data_head*)* @vnt_fill_cts_fb_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_fill_cts_fb_head(%struct.vnt_usb_send_context* %0, %union.vnt_tx_data_head* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %union.vnt_tx_data_head*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca %struct.vnt_cts_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %union.vnt_tx_data_head* %1, %union.vnt_tx_data_head** %4, align 8
  %9 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %9, i32 0, i32 2
  %11 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  store %struct.vnt_private* %11, %struct.vnt_private** %5, align 8
  %12 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %4, align 8
  %13 = bitcast %union.vnt_tx_data_head* %12 to %struct.vnt_cts_fb*
  store %struct.vnt_cts_fb* %13, %struct.vnt_cts_fb** %6, align 8
  store i32 14, i32* %7, align 4
  %14 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %15 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PK_TYPE_11B, align 4
  %23 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %24 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %23, i32 0, i32 5
  %25 = call i32 @vnt_get_phy_field(%struct.vnt_private* %17, i32 %18, i32 %21, i32 %22, i32* %24)
  %26 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %27 = load i32, i32* @CTSDUR_BA, align 4
  %28 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %26, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %34 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %36 = load i32, i32* @CTSDUR_BA_F0, align 4
  %37 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %38 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %45 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %47 = load i32, i32* @CTSDUR_BA_F1, align 4
  %48 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %49 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %46, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %56 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %58 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %61 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %64 = load i32, i32* @IEEE80211_STYPE_CTS, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %68 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %71 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %75 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ether_addr_copy(i32 %73, i32 %76)
  %78 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %79 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %6, align 8
  %80 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %79, i32 0, i32 0
  %81 = call i32 @vnt_rxtx_datahead_g_fb(%struct.vnt_usb_send_context* %78, i32* %80)
  ret i32 %81
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @vnt_rxtx_datahead_g_fb(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
