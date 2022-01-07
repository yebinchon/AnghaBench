; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_alloc_txb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_alloc_txb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txb = type { i32, %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_txb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_txb* (i32, i32, i32)* @ieee80211_alloc_txb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_txb* @ieee80211_alloc_txb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_txb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_txb*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = add i64 24, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.ieee80211_txb* @kmalloc(i32 %14, i32 %15)
  store %struct.ieee80211_txb* %16, %struct.ieee80211_txb** %8, align 8
  %17 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %18 = icmp ne %struct.ieee80211_txb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.ieee80211_txb* null, %struct.ieee80211_txb** %4, align 8
  br label %98

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %22 = call i32 @memset(%struct.ieee80211_txb* %21, i32 0, i32 24)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @__cpu_to_le16(i32 %26)
  %28 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %69, %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_3__* @dev_alloc_skb(i32 %35)
  %37 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %72

58:                                               ; preds = %34
  %59 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %66, align 8
  %68 = call i32 @memset(%struct.ieee80211_txb* %67, i32 0, i32 8)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %30

72:                                               ; preds = %55, %30
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %83, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.TYPE_3__* %91)
  br label %80

93:                                               ; preds = %80
  %94 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %95 = call i32 @kfree(%struct.ieee80211_txb* %94)
  store %struct.ieee80211_txb* null, %struct.ieee80211_txb** %4, align 8
  br label %98

96:                                               ; preds = %72
  %97 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  store %struct.ieee80211_txb* %97, %struct.ieee80211_txb** %4, align 8
  br label %98

98:                                               ; preds = %96, %93, %19
  %99 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %4, align 8
  ret %struct.ieee80211_txb* %99
}

declare dso_local %struct.ieee80211_txb* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_txb*, i32, i32) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_3__* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.ieee80211_txb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
