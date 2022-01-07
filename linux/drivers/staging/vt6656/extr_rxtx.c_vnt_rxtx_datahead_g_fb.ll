; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_g_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_g_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, i32, i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%struct.vnt_tx_datahead_g_fb = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_tx_datahead_g_fb*)* @vnt_rxtx_datahead_g_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_datahead_g_fb(%struct.vnt_usb_send_context* %0, %struct.vnt_tx_datahead_g_fb* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_tx_datahead_g_fb*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_tx_datahead_g_fb* %1, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %9 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %9, i32 0, i32 5
  %11 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  store %struct.vnt_private* %11, %struct.vnt_private** %5, align 8
  %12 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %13 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %16 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %19 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %25 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %28 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %27, i32 0, i32 8
  %29 = call i32 @vnt_get_phy_field(%struct.vnt_private* %21, i32 %22, i32 %23, i32 %26, i32* %28)
  %30 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PK_TYPE_11B, align 4
  %36 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %37 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %36, i32 0, i32 7
  %38 = call i32 @vnt_get_phy_field(%struct.vnt_private* %30, i32 %31, i32 %34, i32 %35, i32* %37)
  %39 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %40 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %41 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @vnt_get_duration_le(%struct.vnt_private* %39, i32 %42, i32 %43)
  %45 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %46 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %48 = load i32, i32* @PK_TYPE_11B, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @vnt_get_duration_le(%struct.vnt_private* %47, i32 %48, i32 %49)
  %51 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %52 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %54 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %55 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @vnt_get_duration_le(%struct.vnt_private* %53, i32 %56, i32 %57)
  %59 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %60 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %62 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %63 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @vnt_get_duration_le(%struct.vnt_private* %61, i32 %64, i32 %65)
  %67 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %68 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %69, i32 %70)
  %72 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %73 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %75 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %76 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %74, i32 %77)
  %79 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %80 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %82 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %83 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %82, i32 0, i32 1
  %84 = call i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context* %81, i32* %83)
  %85 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %86 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %4, align 8
  %88 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @le16_to_cpu(i8* %89)
  ret i32 %90
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

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
