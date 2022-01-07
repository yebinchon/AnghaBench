; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_cts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i64, i32, i32, i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%union.vnt_tx_head = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vnt_rrv_time_cts }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %union.vnt_tx_data_head }
%struct.TYPE_4__ = type { %union.vnt_tx_data_head }
%union.vnt_tx_data_head = type { i32 }
%struct.vnt_rrv_time_cts = type { i32, i8*, i8* }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %union.vnt_tx_head*, i32)* @vnt_rxtx_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_cts(%struct.vnt_usb_send_context* %0, %union.vnt_tx_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_usb_send_context*, align 8
  %6 = alloca %union.vnt_tx_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnt_private*, align 8
  %9 = alloca %struct.vnt_rrv_time_cts*, align 8
  %10 = alloca %union.vnt_tx_data_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %5, align 8
  store %union.vnt_tx_head* %1, %union.vnt_tx_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %15 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %14, i32 0, i32 5
  %16 = load %struct.vnt_private*, %struct.vnt_private** %15, align 8
  store %struct.vnt_private* %16, %struct.vnt_private** %8, align 8
  %17 = load %union.vnt_tx_head*, %union.vnt_tx_head** %6, align 8
  %18 = bitcast %union.vnt_tx_head* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.vnt_rrv_time_cts* %19, %struct.vnt_rrv_time_cts** %9, align 8
  %20 = load %union.vnt_tx_head*, %union.vnt_tx_head** %6, align 8
  %21 = bitcast %union.vnt_tx_head* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %union.vnt_tx_data_head* %23, %union.vnt_tx_data_head** %10, align 8
  %24 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %25 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %28 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %31 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %34 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %35 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %33, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %9, align 8
  %42 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %44 = load i32, i32* @PK_TYPE_11B, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %43, i32 %44, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %9, align 8
  %52 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %54 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %55 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %53, i32 3, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %9, align 8
  %61 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %3
  %65 = load %union.vnt_tx_head*, %union.vnt_tx_head** %6, align 8
  %66 = bitcast %union.vnt_tx_head* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %union.vnt_tx_data_head* %69, %union.vnt_tx_data_head** %10, align 8
  br label %70

70:                                               ; preds = %64, %3
  %71 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %72 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %77 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %10, align 8
  %78 = call i32 @vnt_fill_cts_fb_head(%struct.vnt_usb_send_context* %76, %union.vnt_tx_data_head* %77)
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %81 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %10, align 8
  %82 = call i32 @vnt_fill_cts_head(%struct.vnt_usb_send_context* %80, %union.vnt_tx_data_head* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i32 @vnt_get_rtscts_rsvtime_le(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i32 @vnt_fill_cts_fb_head(%struct.vnt_usb_send_context*, %union.vnt_tx_data_head*) #1

declare dso_local i32 @vnt_fill_cts_head(%struct.vnt_usb_send_context*, %union.vnt_tx_data_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
