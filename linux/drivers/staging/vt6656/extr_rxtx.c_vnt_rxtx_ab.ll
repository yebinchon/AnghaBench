; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_ab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_rxtx_ab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i64, i32, i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%union.vnt_tx_head = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vnt_rrv_time_ab }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %union.vnt_tx_data_head }
%struct.TYPE_4__ = type { %union.vnt_tx_data_head }
%union.vnt_tx_data_head = type { i32 }
%struct.vnt_rrv_time_ab = type { i8*, i32 }

@PK_TYPE_11B = common dso_local global i32 0, align 4
@PK_TYPE_11A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %union.vnt_tx_head*, i32, i32)* @vnt_rxtx_ab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rxtx_ab(%struct.vnt_usb_send_context* %0, %union.vnt_tx_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnt_usb_send_context*, align 8
  %7 = alloca %union.vnt_tx_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnt_private*, align 8
  %11 = alloca %struct.vnt_rrv_time_ab*, align 8
  %12 = alloca %union.vnt_tx_data_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %6, align 8
  store %union.vnt_tx_head* %1, %union.vnt_tx_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %17 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %16, i32 0, i32 5
  %18 = load %struct.vnt_private*, %struct.vnt_private** %17, align 8
  store %struct.vnt_private* %18, %struct.vnt_private** %10, align 8
  %19 = load %union.vnt_tx_head*, %union.vnt_tx_head** %7, align 8
  %20 = bitcast %union.vnt_tx_head* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.vnt_rrv_time_ab* %21, %struct.vnt_rrv_time_ab** %11, align 8
  %22 = load %union.vnt_tx_head*, %union.vnt_tx_head** %7, align 8
  %23 = bitcast %union.vnt_tx_head* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %union.vnt_tx_data_head* %25, %union.vnt_tx_data_head** %12, align 8
  %26 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %27 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %30 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %33 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %36 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %37 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %35, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %11, align 8
  %44 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %union.vnt_tx_head*, %union.vnt_tx_head** %7, align 8
  %49 = bitcast %union.vnt_tx_head* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %union.vnt_tx_data_head* %52, %union.vnt_tx_data_head** %12, align 8
  br label %53

53:                                               ; preds = %47, %4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %58 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PK_TYPE_11B, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %64 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %65 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %63, i32 0, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %11, align 8
  %71 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %82

72:                                               ; preds = %56
  %73 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %74 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %75 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %73, i32 2, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %11, align 8
  %81 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %72, %62
  %83 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %84 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %89 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PK_TYPE_11A, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %95 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %12, align 8
  %96 = bitcast %union.vnt_tx_data_head* %95 to i32*
  %97 = call i32 @vnt_rxtx_rts_a_fb_head(%struct.vnt_usb_send_context* %94, i32* %96)
  store i32 %97, i32* %5, align 4
  br label %119

98:                                               ; preds = %87, %82
  %99 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %100 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %12, align 8
  %101 = bitcast %union.vnt_tx_data_head* %100 to i32*
  %102 = call i32 @vnt_rxtx_rts_ab_head(%struct.vnt_usb_send_context* %99, i32* %101)
  store i32 %102, i32* %5, align 4
  br label %119

103:                                              ; preds = %53
  %104 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %105 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PK_TYPE_11A, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %111 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %12, align 8
  %112 = bitcast %union.vnt_tx_data_head* %111 to i32*
  %113 = call i32 @vnt_rxtx_datahead_a_fb(%struct.vnt_usb_send_context* %110, i32* %112)
  store i32 %113, i32* %5, align 4
  br label %119

114:                                              ; preds = %103
  %115 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %6, align 8
  %116 = load %union.vnt_tx_data_head*, %union.vnt_tx_data_head** %12, align 8
  %117 = bitcast %union.vnt_tx_data_head* %116 to i32*
  %118 = call i32 @vnt_rxtx_datahead_ab(%struct.vnt_usb_send_context* %115, i32* %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %109, %98, %93
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @vnt_rxtx_rsvtime_le16(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i8* @vnt_get_rtscts_rsvtime_le(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i32 @vnt_rxtx_rts_a_fb_head(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @vnt_rxtx_rts_ab_head(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @vnt_rxtx_datahead_a_fb(%struct.vnt_usb_send_context*, i32*) #1

declare dso_local i32 @vnt_rxtx_datahead_ab(%struct.vnt_usb_send_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
