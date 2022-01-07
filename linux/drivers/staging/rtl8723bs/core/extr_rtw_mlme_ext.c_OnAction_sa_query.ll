; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_OnAction_sa_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_OnAction_sa_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"OnAction_sa_query\0A\00", align 1
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"OnAction_sa_query request, action =%d, tid =%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"OnAction_sa_query response, action =%d, tid =%04x, cancel timer\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OnAction_sa_query(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca i16, align 2
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %9 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %10 = bitcast %union.recv_frame* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.rx_pkt_attrib* %17, %struct.rx_pkt_attrib** %6, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  store %struct.mlme_ext_priv* %19, %struct.mlme_ext_priv** %7, align 8
  %20 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %65 [
    i32 0, label %27
    i32 1, label %48
  ]

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call i32 @memcpy(i16* %8, i32* %32, i32 2)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  %42 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @GetAddr2Ptr(i32* %44)
  %46 = load i16, i16* %8, align 2
  %47 = call i32 @issue_action_SA_Query(%struct.adapter* %43, i32 %45, i32 1, i16 zeroext %46)
  br label %66

48:                                               ; preds = %2
  %49 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %50 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %49, i32 0, i32 0
  %51 = call i32 @del_timer_sync(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %63)
  br label %66

65:                                               ; preds = %2
  br label %66

66:                                               ; preds = %65, %48, %27
  %67 = load i32, i32* @_SUCCESS, align 4
  ret i32 %67
}

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i32 @memcpy(i16*, i32*, i32) #1

declare dso_local i32 @issue_action_SA_Query(%struct.adapter*, i32, i32, i16 zeroext) #1

declare dso_local i32 @GetAddr2Ptr(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
