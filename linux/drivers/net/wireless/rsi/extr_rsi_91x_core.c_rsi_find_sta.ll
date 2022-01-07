; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_find_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_find_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_sta = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rsi_common = type { i32, %struct.rsi_sta* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsi_sta* @rsi_find_sta(%struct.rsi_common* %0, i32* %1) #0 {
  %3 = alloca %struct.rsi_sta*, align 8
  %4 = alloca %struct.rsi_common*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %10 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %15 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %14, i32 0, i32 1
  %16 = load %struct.rsi_sta*, %struct.rsi_sta** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rsi_sta, %struct.rsi_sta* %16, i64 %18
  %20 = getelementptr inbounds %struct.rsi_sta, %struct.rsi_sta* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %47

24:                                               ; preds = %13
  %25 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %26 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %25, i32 0, i32 1
  %27 = load %struct.rsi_sta*, %struct.rsi_sta** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rsi_sta, %struct.rsi_sta* %27, i64 %29
  %31 = getelementptr inbounds %struct.rsi_sta, %struct.rsi_sta* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcmp(i32 %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %24
  %40 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %41 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %40, i32 0, i32 1
  %42 = load %struct.rsi_sta*, %struct.rsi_sta** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rsi_sta, %struct.rsi_sta* %42, i64 %44
  store %struct.rsi_sta* %45, %struct.rsi_sta** %3, align 8
  br label %51

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %7

50:                                               ; preds = %7
  store %struct.rsi_sta* null, %struct.rsi_sta** %3, align 8
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.rsi_sta*, %struct.rsi_sta** %3, align 8
  ret %struct.rsi_sta* %52
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
