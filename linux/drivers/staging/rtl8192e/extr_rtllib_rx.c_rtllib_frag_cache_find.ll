; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_frag_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_frag_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_frag_entry = type { i32, i32, i32, i32, i32*, i64 }
%struct.rtllib_device = type { i32, %struct.rtllib_frag_entry** }

@RTLLIB_FRAG_CACHE_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"expiring fragment cache entry seq=%u last_frag=%u\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtllib_frag_entry* (%struct.rtllib_device*, i32, i32, i64, i64*, i64*)* @rtllib_frag_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtllib_frag_entry* @rtllib_frag_cache_find(%struct.rtllib_device* %0, i32 %1, i32 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.rtllib_frag_entry*, align 8
  %8 = alloca %struct.rtllib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.rtllib_frag_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %102, %6
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* @RTLLIB_FRAG_CACHE_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %105

20:                                               ; preds = %16
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 1
  %23 = load %struct.rtllib_frag_entry**, %struct.rtllib_frag_entry*** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %23, i64 %24
  %26 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %25, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %26, i64 %28
  store %struct.rtllib_frag_entry* %29, %struct.rtllib_frag_entry** %14, align 8
  %30 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %31 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %20
  %35 = load i32, i32* @jiffies, align 4
  %36 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %37 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i64 @time_after(i32 %35, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %50 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %53 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netdev_dbg(i32 %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %57 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @dev_kfree_skb_any(i32* %58)
  %60 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %61 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %45, %34, %20
  %63 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %64 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %101

67:                                               ; preds = %62
  %68 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %69 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %67
  %74 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %75 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %101

83:                                               ; preds = %80, %73
  %84 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %85 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i64*, i64** %12, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i64 @memcmp(i32 %86, i64* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  %93 = getelementptr inbounds %struct.rtllib_frag_entry, %struct.rtllib_frag_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64*, i64** %13, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i64 @memcmp(i32 %94, i64* %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %14, align 8
  store %struct.rtllib_frag_entry* %100, %struct.rtllib_frag_entry** %7, align 8
  br label %106

101:                                              ; preds = %91, %83, %80, %67, %62
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %16

105:                                              ; preds = %16
  store %struct.rtllib_frag_entry* null, %struct.rtllib_frag_entry** %7, align 8
  br label %106

106:                                              ; preds = %105, %99
  %107 = load %struct.rtllib_frag_entry*, %struct.rtllib_frag_entry** %7, align 8
  ret %struct.rtllib_frag_entry* %107
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
