; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_wsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_wsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsm_tx = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.cw1200_common = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cw1200_txinfo = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Bug: no space allocated for WSM header. headroom: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wsm_tx* (%struct.cw1200_common*, %struct.cw1200_txinfo*)* @cw1200_tx_h_wsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wsm_tx* @cw1200_tx_h_wsm(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1) #0 {
  %3 = alloca %struct.wsm_tx*, align 8
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.cw1200_txinfo*, align 8
  %6 = alloca %struct.wsm_tx*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %5, align 8
  %7 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %8 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = call i32 @skb_headroom(%struct.TYPE_9__* %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 24
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %15 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %20 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call i32 @skb_headroom(%struct.TYPE_9__* %21)
  %23 = call i32 @wiphy_err(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.wsm_tx* null, %struct.wsm_tx** %3, align 8
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %26 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call %struct.wsm_tx* @skb_push(%struct.TYPE_9__* %27, i32 24)
  store %struct.wsm_tx* %28, %struct.wsm_tx** %6, align 8
  %29 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %30 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 24
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %37 = call i32 @memset(%struct.wsm_tx* %36, i32 0, i32 24)
  %38 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %39 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @__cpu_to_le16(i32 %42)
  %44 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %45 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = call i8* @__cpu_to_le16(i32 4)
  %48 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %49 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %52 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wsm_queue_id_to_wsm(i32 %53)
  %55 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %56 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  store %struct.wsm_tx* %57, %struct.wsm_tx** %3, align 8
  br label %58

58:                                               ; preds = %24, %13
  %59 = load %struct.wsm_tx*, %struct.wsm_tx** %3, align 8
  ret %struct.wsm_tx* %59
}

declare dso_local i32 @skb_headroom(%struct.TYPE_9__*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local %struct.wsm_tx* @skb_push(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(%struct.wsm_tx*, i32, i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @wsm_queue_id_to_wsm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
