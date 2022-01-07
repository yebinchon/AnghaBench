; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_a_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_datahead_a_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, i32, i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%struct.vnt_tx_datahead_a_fb = type { i8*, i32, i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_tx_datahead_a_fb*)* @vnt_rxtx_datahead_a_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_datahead_a_fb(%struct.vnt_usb_send_context* %0, %struct.vnt_tx_datahead_a_fb* %1) #0 {
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca %struct.vnt_tx_datahead_a_fb*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %3, align 8
  store %struct.vnt_tx_datahead_a_fb* %1, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %10 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %11 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %10, i32 0, i32 5
  %12 = load %struct.vnt_private*, %struct.vnt_private** %11, align 8
  store %struct.vnt_private* %12, %struct.vnt_private** %5, align 8
  %13 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %17 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %20 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %23 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %30 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %29, i32 0, i32 5
  %31 = call i32 @vnt_get_phy_field(%struct.vnt_private* %25, i32 %26, i32 %27, i32 %28, i32* %30)
  %32 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @vnt_get_duration_le(%struct.vnt_private* %32, i32 %33, i32 %34)
  %36 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %37 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @vnt_get_duration_le(%struct.vnt_private* %38, i32 %39, i32 %40)
  %42 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %43 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @vnt_get_duration_le(%struct.vnt_private* %44, i32 %45, i32 %46)
  %48 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %49 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @vnt_time_stamp_off(%struct.vnt_private* %50, i32 %51)
  %53 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %54 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %56 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %57 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %56, i32 0, i32 1
  %58 = call i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context* %55, i32* %57)
  %59 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %60 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %4, align 8
  %62 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @le16_to_cpu(i8* %63)
  ret i32 %64
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i8* @vnt_get_duration_le(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_time_stamp_off(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_mac_hdr_pos(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
