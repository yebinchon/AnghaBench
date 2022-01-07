; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_rx_filter_flatten_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_rx_filter_flatten_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl12xx_rx_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.wl12xx_rx_filter_field = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1271_rx_filter_flatten_fields(%struct.wl12xx_rx_filter* %0, i32* %1) #0 {
  %3 = alloca %struct.wl12xx_rx_filter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl12xx_rx_filter_field*, align 8
  store %struct.wl12xx_rx_filter* %0, %struct.wl12xx_rx_filter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %66, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %3, align 8
  %10 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %7
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.wl12xx_rx_filter_field*
  store %struct.wl12xx_rx_filter_field* %15, %struct.wl12xx_rx_filter_field** %6, align 8
  %16 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %3, align 8
  %17 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %25 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %3, align 8
  %27 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %35 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %3, align 8
  %37 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %45 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %47 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %46, i32 0, i32 1
  %48 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %3, align 8
  %49 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %57 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32* %47, i32 %55, i64 %58)
  %60 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %6, align 8
  %61 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 16, %62
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %13
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %7

69:                                               ; preds = %7
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
