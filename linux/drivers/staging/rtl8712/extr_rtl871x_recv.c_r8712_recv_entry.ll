; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_recv_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_recv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct._adapter* }
%struct._adapter = type { %struct.TYPE_8__, %struct.TYPE_5__, %struct.recv_priv }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct._adapter*, i32)* }
%struct.recv_priv = type { i64, i32, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@LED_CTL_RX = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_recv_entry(%union.recv_frame* %0) #0 {
  %2 = alloca %union.recv_frame*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.recv_priv*, align 8
  %5 = alloca i64, align 8
  store %union.recv_frame* %0, %union.recv_frame** %2, align 8
  %6 = load i64, i64* @_SUCCESS, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %union.recv_frame*, %union.recv_frame** %2, align 8
  %8 = bitcast %union.recv_frame* %7 to %struct.TYPE_7__*
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct._adapter*, %struct._adapter** %10, align 8
  store %struct._adapter* %11, %struct._adapter** %3, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  store %struct.recv_priv* %13, %struct.recv_priv** %4, align 8
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (%struct._adapter*, i32)*, i32 (%struct._adapter*, i32)** %16, align 8
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = load i32, i32* @LED_CTL_RX, align 4
  %20 = call i32 %17(%struct._adapter* %18, i32 %19)
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = load %union.recv_frame*, %union.recv_frame** %2, align 8
  %23 = call i64 @recv_func(%struct._adapter* %21, %union.recv_frame* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @_FAIL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %50

28:                                               ; preds = %1
  %29 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %30 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %union.recv_frame*, %union.recv_frame** %2, align 8
  %34 = bitcast %union.recv_frame* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %union.recv_frame*, %union.recv_frame** %2, align 8
  %39 = bitcast %union.recv_frame* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %37, %42
  %44 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %45 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  br label %61

50:                                               ; preds = %27
  %51 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %52 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %56 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct._adapter*, %struct._adapter** %3, align 8
  %59 = getelementptr inbounds %struct._adapter, %struct._adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %28
  ret void
}

declare dso_local i64 @recv_func(%struct._adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
