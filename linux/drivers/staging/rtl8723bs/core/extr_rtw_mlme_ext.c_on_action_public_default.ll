; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_on_action_public_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_on_action_public_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.adapter*, i32 }
%struct.adapter = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s(token:%u)\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.recv_frame*, i32)* @on_action_public_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_action_public_default(%union.recv_frame* %0, i32 %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @_FAIL, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %20 = bitcast %union.recv_frame* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %8, align 8
  %26 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %27 = bitcast %union.recv_frame* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.adapter*, %struct.adapter** %29, align 8
  store %struct.adapter* %30, %struct.adapter** %10, align 8
  store i32 0, i32* %11, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @rtw_action_public_decache(%union.recv_frame* %34, i32 %35)
  %37 = load i32, i32* @_FAIL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %59

40:                                               ; preds = %2
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %4, align 4
  %46 = call i8* @action_public_str(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @sprintf(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load %struct.adapter*, %struct.adapter** %10, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %57 = call i32 @rtw_cfg80211_rx_action(%struct.adapter* %53, i32* %54, i32 %55, i8* %56)
  %58 = load i32, i32* @_SUCCESS, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %40, %39
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @rtw_action_public_decache(%union.recv_frame*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @action_public_str(i32) #1

declare dso_local i32 @rtw_cfg80211_rx_action(%struct.adapter*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
