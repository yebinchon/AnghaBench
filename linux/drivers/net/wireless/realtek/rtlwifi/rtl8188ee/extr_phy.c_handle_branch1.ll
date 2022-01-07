; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_branch1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_branch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @handle_branch1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_branch1(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %126, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %129

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %26, -842150451
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @_rtl8188e_config_bb_reg(%struct.ieee80211_hw* %29, i32 %30, i32 %31)
  br label %125

33:                                               ; preds = %14
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 2
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %129

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_rtl88e_check_condition(%struct.ieee80211_hw* %40, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @READ_NEXT_PAIR(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %69, %48
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 57005
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 52719
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 52685
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br label %67

67:                                               ; preds = %62, %59, %56, %53
  %68 = phi i1 [ false, %59 ], [ false, %56 ], [ false, %53 ], [ %66, %62 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @READ_NEXT_PAIR(i32 %70, i32 %71, i32 %72)
  br label %53

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %9, align 4
  br label %124

77:                                               ; preds = %39
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @READ_NEXT_PAIR(i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %98, %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 57005
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 52719
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 52685
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %93, 2
  %95 = icmp slt i32 %92, %94
  br label %96

96:                                               ; preds = %91, %88, %85, %82
  %97 = phi i1 [ false, %88 ], [ false, %85 ], [ false, %82 ], [ %95, %91 ]
  br i1 %97, label %98, label %107

98:                                               ; preds = %96
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @_rtl8188e_config_bb_reg(%struct.ieee80211_hw* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @READ_NEXT_PAIR(i32 %103, i32 %104, i32 %105)
  br label %82

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 57005
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %113, 2
  %115 = icmp slt i32 %112, %114
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i1 [ false, %108 ], [ %115, %111 ]
  br i1 %117, label %118, label %123

118:                                              ; preds = %116
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @READ_NEXT_PAIR(i32 %119, i32 %120, i32 %121)
  br label %108

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %74
  br label %125

125:                                              ; preds = %124, %28
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %9, align 4
  br label %10

129:                                              ; preds = %38, %10
  ret void
}

declare dso_local i32 @_rtl8188e_config_bb_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl88e_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
