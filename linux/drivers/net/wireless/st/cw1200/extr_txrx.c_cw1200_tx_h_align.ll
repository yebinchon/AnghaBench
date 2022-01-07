; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cw1200_txinfo = type { i64, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"Bug: attempt to transmit a frame with wrong alignment: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Bug: no space allocated for DMA alignment. headroom: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WSM_TX_2BYTES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.cw1200_txinfo*, i32*)* @cw1200_tx_h_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_tx_h_align(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.cw1200_txinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %10 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 3
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @wiphy_err(i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %18
  %33 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %34 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i64 @skb_headroom(%struct.TYPE_7__* %35)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %46 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i64 @skb_headroom(%struct.TYPE_7__* %47)
  %49 = call i32 @wiphy_err(i32 %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %32
  %53 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %54 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @skb_push(%struct.TYPE_7__* %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %60 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %65 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* @WSM_TX_2BYTES_SHIFT, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %74 = call i32 @cw1200_debug_tx_align(%struct.cw1200_common* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %52, %39, %22, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @wiphy_err(i32, i8*, i64) #1

declare dso_local i64 @skb_headroom(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_push(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @cw1200_debug_tx_align(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
