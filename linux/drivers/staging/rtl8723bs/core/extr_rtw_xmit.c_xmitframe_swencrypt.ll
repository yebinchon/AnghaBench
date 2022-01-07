; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_xmitframe_swencrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_xmitframe_swencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.xmit_frame = type { %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i64 }

@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_alert_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"### xmitframe_swencrypt\0A\00", align 1
@_drv_notice_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"### xmitframe_hwencrypt\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.xmit_frame*)* @xmitframe_swencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmitframe_swencrypt(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca %struct.pkt_attrib*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %6 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %7 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %6, i32 0, i32 0
  store %struct.pkt_attrib* %7, %struct.pkt_attrib** %5, align 8
  %8 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %9 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %14 = load i32, i32* @_drv_alert_, align 4
  %15 = call i32 @RT_TRACE(i32 %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %17 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %34 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %24
    i32 131, label %29
  ]

19:                                               ; preds = %12, %12
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %22 = bitcast %struct.xmit_frame* %21 to i32*
  %23 = call i32 @rtw_wep_encrypt(%struct.adapter* %20, i32* %22)
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %27 = bitcast %struct.xmit_frame* %26 to i32*
  %28 = call i32 @rtw_tkip_encrypt(%struct.adapter* %25, i32* %27)
  br label %35

29:                                               ; preds = %12
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %32 = bitcast %struct.xmit_frame* %31 to i32*
  %33 = call i32 @rtw_aes_encrypt(%struct.adapter* %30, i32* %32)
  br label %35

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34, %29, %24, %19
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %38 = load i32, i32* @_drv_notice_, align 4
  %39 = call i32 @RT_TRACE(i32 %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* @_SUCCESS, align 4
  ret i32 %41
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_wep_encrypt(%struct.adapter*, i32*) #1

declare dso_local i32 @rtw_tkip_encrypt(%struct.adapter*, i32*) #1

declare dso_local i32 @rtw_aes_encrypt(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
