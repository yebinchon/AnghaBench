; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_read_pa_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_read_pa_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8**, i32)* @_rtl8812ae_read_pa_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_read_pa_type(%struct.ieee80211_hw* %0, i8** %1, i32 %2) #0 {
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
  br i1 %14, label %146, label %15

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
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 4)
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %49, %42
  %57 = phi i1 [ false, %42 ], [ %55, %49 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %61 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @BIT(i32 7)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %70 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BIT(i32 3)
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %68, %56
  %76 = phi i1 [ false, %56 ], [ %74, %68 ]
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %80 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 188
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %86 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 191
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %94 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %107

97:                                               ; preds = %75
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 255
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %104 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %103, i32 0, i32 4
  store i32 0, i32* %104, align 4
  %105 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %106 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %105, i32 0, i32 5
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %97, %75
  %108 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %109 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @BIT(i32 1)
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %116 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BIT(i32 0)
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %114, %107
  %122 = phi i1 [ false, %107 ], [ %120, %114 ]
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %126 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %128 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BIT(i32 7)
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %121
  %134 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %135 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @BIT(i32 3)
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %133, %121
  %141 = phi i1 [ false, %121 ], [ %139, %133 ]
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %145 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  br label %155

146:                                              ; preds = %3
  %147 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %148 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %147, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %150 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  %151 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %152 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %151, i32 0, i32 6
  store i32 0, i32* %152, align 4
  %153 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %154 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %153, i32 0, i32 7
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %146, %140
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
