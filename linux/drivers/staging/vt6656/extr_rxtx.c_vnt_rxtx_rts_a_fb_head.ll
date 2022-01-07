; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts_a_fb_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts_a_fb_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i32 }
%struct.vnt_rts_a_fb = type { i32, i8*, i32, i8*, i8*, i32 }

@RTSDUR_AA = common dso_local global i32 0, align 4
@RTSDUR_AA_F0 = common dso_local global i32 0, align 4
@RTSDUR_AA_F1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_rts_a_fb*)* @vnt_rxtx_rts_a_fb_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_rts_a_fb_head(%struct.vnt_usb_send_context* %0, %struct.vnt_rts_a_fb* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_rts_a_fb*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_rts_a_fb* %1, %struct.vnt_rts_a_fb** %4, align 8
  %8 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %9 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %8, i32 0, i32 2
  %10 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  store %struct.vnt_private* %10, %struct.vnt_private** %5, align 8
  %11 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 20, i32* %7, align 4
  %14 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %20 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %23 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %22, i32 0, i32 5
  %24 = call i32 @vnt_get_phy_field(%struct.vnt_private* %14, i32 %15, i32 %18, i32 %21, i32* %23)
  %25 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %26 = load i32, i32* @RTSDUR_AA, align 4
  %27 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %28 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %25, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %33 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %35 = load i32, i32* @RTSDUR_AA_F0, align 4
  %36 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %37 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %34, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %44 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %46 = load i32, i32* @RTSDUR_AA_F1, align 4
  %47 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %48 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %45, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %55 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %57 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %58 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %57, i32 0, i32 2
  %59 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %60 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @vnt_fill_ieee80211_rts(%struct.vnt_usb_send_context* %56, i32* %58, i8* %61)
  %63 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %64 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %4, align 8
  %65 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %64, i32 0, i32 0
  %66 = call i32 @vnt_rxtx_datahead_a_fb(%struct.vnt_usb_send_context* %63, i32* %65)
  ret i32 %66
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context*, i32, i32, i32) #1

declare dso_local i32 @vnt_fill_ieee80211_rts(%struct.vnt_usb_send_context*, i32*, i8*) #1

declare dso_local i32 @vnt_rxtx_datahead_a_fb(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
