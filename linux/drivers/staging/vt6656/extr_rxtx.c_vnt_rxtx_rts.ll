; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i64, i32, i32, i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%union.vnt_tx_head = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vnt_rrv_time_rts }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %union.vnt_tx_data_head }
%struct.TYPE_4__ = type { %union.vnt_tx_data_head }
%union.vnt_tx_data_head = type { i32 }
%struct.vnt_rrv_time_rts = type { i8*, i8*, i8*, i8*, i8* }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %union.vnt_tx_head*, i32)* @vnt_rxtx_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_rts(%struct.vnt_usb_send_context* %0, %union.vnt_tx_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_usb_send_context*, align 8
  %6 = alloca %union.vnt_tx_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnt_private*, align 8
  %9 = alloca %struct.vnt_rrv_time_rts*, align 8
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
  store %struct.vnt_rrv_time_rts* %19, %struct.vnt_rrv_time_rts** %9, align 8
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
  %39 = call i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %33, i32 2, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %9, align 8
  %41 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %43 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %44 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %42, i32 1, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %9, align 8
  %50 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %52 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %53 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %51, i32 0, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %9, align 8
  %59 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %61 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %62 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %60, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %9, align 8
  %69 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %71 = load i32, i32* @PK_TYPE_11B, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %70, i32 %71, i32 %72, i32 %75, i32 %76)
  %78 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %9, align 8
  %79 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %3
  %83 = load %union.vnt_tx_head*, %union.vnt_tx_head** %6, align 8
  %84 = bitcast %union.vnt_tx_head* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store %union.vnt_tx_data_head* %87, %union.vnt_tx_data_head** %10, align 8
  br label %88

88:                                               ; preds = %82, %3
  %89 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %90 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %95 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %10, align 8
  %96 = bitcast %union.vnt_tx_data_head* %95 to i32*
  %97 = call i32 @vnt_rxtx_rts_g_fb_head(%struct.vnt_usb_send_context* %94, i32* %96)
  store i32 %97, i32* %4, align 4
  br label %103

98:                                               ; preds = %88
  %99 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %100 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %10, align 8
  %101 = bitcast %union.vnt_tx_data_head* %100 to i32*
  %102 = call i32 @vnt_rxtx_rts_g_head(%struct.vnt_usb_send_context* %99, i32* %101)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i32 @vnt_rxtx_rts_g_fb_head(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @vnt_rxtx_rts_g_head(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
