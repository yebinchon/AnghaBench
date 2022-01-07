; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_generate_tx_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_generate_tx_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i64 }
%struct.vnt_tx_buffer = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.vnt_mic_hdr }
%struct.vnt_mic_hdr = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.vnt_mic_hdr }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.vnt_mic_hdr }

@PK_TYPE_11GB = common dso_local global i64 0, align 8
@PK_TYPE_11GA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, %struct.vnt_tx_buffer*, %struct.vnt_mic_hdr**, i64, i32)* @vnt_generate_tx_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_generate_tx_parameter(%struct.vnt_usb_send_context* %0, %struct.vnt_tx_buffer* %1, %struct.vnt_mic_hdr** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnt_usb_send_context*, align 8
  %8 = alloca %struct.vnt_tx_buffer*, align 8
  %9 = alloca %struct.vnt_mic_hdr**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %7, align 8
  store %struct.vnt_tx_buffer* %1, %struct.vnt_tx_buffer** %8, align 8
  store %struct.vnt_mic_hdr** %2, %struct.vnt_mic_hdr*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %13 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PK_TYPE_11GB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %19 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PK_TYPE_11GA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %31 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.vnt_mic_hdr**, %struct.vnt_mic_hdr*** %9, align 8
  store %struct.vnt_mic_hdr* %35, %struct.vnt_mic_hdr** %36, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %39 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %40 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @vnt_rxtx_rts(%struct.vnt_usb_send_context* %38, %struct.TYPE_13__* %40, i64 %41)
  store i32 %42, i32* %6, align 4
  br label %78

43:                                               ; preds = %23
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.vnt_mic_hdr**, %struct.vnt_mic_hdr*** %9, align 8
  store %struct.vnt_mic_hdr* %52, %struct.vnt_mic_hdr** %53, align 8
  br label %54

54:                                               ; preds = %46, %43
  %55 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %56 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @vnt_rxtx_cts(%struct.vnt_usb_send_context* %55, %struct.TYPE_13__* %57, i64 %58)
  store i32 %59, i32* %6, align 4
  br label %78

60:                                               ; preds = %17
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.vnt_mic_hdr**, %struct.vnt_mic_hdr*** %9, align 8
  store %struct.vnt_mic_hdr* %69, %struct.vnt_mic_hdr** %70, align 8
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %73 = load %struct.vnt_tx_buffer*, %struct.vnt_tx_buffer** %8, align 8
  %74 = getelementptr inbounds %struct.vnt_tx_buffer, %struct.vnt_tx_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %11, align 4
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @vnt_rxtx_ab(%struct.vnt_usb_send_context* %72, %struct.TYPE_13__* %74, i32 %75, i64 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %71, %54, %37
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @vnt_rxtx_rts(%struct.vnt_usb_send_context*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @vnt_rxtx_cts(%struct.vnt_usb_send_context*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @vnt_rxtx_ab(%struct.vnt_usb_send_context*, %struct.TYPE_13__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
