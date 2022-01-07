; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_pa_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_pa_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8**, i32)* @_rtl8821ae_read_pa_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_read_pa_type(%struct.ieee80211_hw* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %110, label %15

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 188
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 189
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %29 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %42

32:                                               ; preds = %15
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %39 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32, %15
  %43 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %44 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BIT(i32 5)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %54 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 7)
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 188
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %68 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 191
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %74 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %76 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %89

79:                                               ; preds = %42
  %80 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %81 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 255
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %86 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %85, i32 0, i32 4
  store i32 0, i32* %86, align 4
  %87 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %88 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %87, i32 0, i32 5
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %79, %42
  %90 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %91 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BIT(i32 1)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %101 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BIT(i32 7)
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %109 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  br label %119

110:                                              ; preds = %3
  %111 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %112 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  %113 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %114 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %113, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %116 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %115, i32 0, i32 6
  store i32 0, i32* %116, align 4
  %117 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %118 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %117, i32 0, i32 7
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %89
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
