; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tkip_data = type { i64, i32, i32, i32 }

@TKIP_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8*)* @ieee80211_tkip_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tkip_get_key(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_tkip_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.ieee80211_tkip_data*
  store %struct.ieee80211_tkip_data* %14, %struct.ieee80211_tkip_data** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @TKIP_KEY_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %87

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %87

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TKIP_KEY_LEN, align 4
  %31 = call i32 @memcpy(i8* %26, i32 %29, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %85

34:                                               ; preds = %25
  %35 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %11, align 8
  %49 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = ashr i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 16
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 24
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %46, %25
  %86 = load i32, i32* @TKIP_KEY_LEN, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %24, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
