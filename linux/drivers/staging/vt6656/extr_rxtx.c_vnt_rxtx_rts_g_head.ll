; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts_g_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts_g_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32, i32 }
%struct.vnt_rts_g = type { i32, i8*, i32, i8*, i8*, i32, i32 }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@RTSDUR_BB = common dso_local global i32 0, align 4
@RTSDUR_AA = common dso_local global i32 0, align 4
@RTSDUR_BA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_rts_g*)* @vnt_rxtx_rts_g_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_rts_g_head(%struct.vnt_usb_send_context* %0, %struct.vnt_rts_g* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_rts_g*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_rts_g* %1, %struct.vnt_rts_g** %4, align 8
  %8 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %9 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %8, i32 0, i32 2
  %10 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  store %struct.vnt_private* %10, %struct.vnt_private** %5, align 8
  store i32 20, i32* %6, align 4
  %11 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PK_TYPE_11B, align 4
  %20 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %21 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %20, i32 0, i32 6
  %22 = call i32 @vnt_get_phy_field(%struct.vnt_private* %14, i32 %15, i32 %18, i32 %19, i32* %21)
  %23 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %32 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %31, i32 0, i32 5
  %33 = call i32 @vnt_get_phy_field(%struct.vnt_private* %23, i32 %24, i32 %27, i32 %30, i32* %32)
  %34 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %35 = load i32, i32* @RTSDUR_BB, align 4
  %36 = load i32, i32* @PK_TYPE_11B, align 4
  %37 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %42 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %44 = load i32, i32* @RTSDUR_AA, align 4
  %45 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %46 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %43, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %51 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %53 = load i32, i32* @RTSDUR_BA, align 4
  %54 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %55 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %52, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %60 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %62 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %63 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %62, i32 0, i32 2
  %64 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %65 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @vnt_fill_ieee80211_rts(%struct.vnt_usb_send_context* %61, i32* %63, i8* %66)
  %68 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %69 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %4, align 8
  %70 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %69, i32 0, i32 0
  %71 = call i32 @vnt_rxtx_datahead_g(%struct.vnt_usb_send_context* %68, i32* %70)
  ret i32 %71
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i8* @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context*, i32, i32, i32) #1

declare dso_local i32 @vnt_fill_ieee80211_rts(%struct.vnt_usb_send_context*, i32*, i8*) #1

declare dso_local i32 @vnt_rxtx_datahead_g(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
