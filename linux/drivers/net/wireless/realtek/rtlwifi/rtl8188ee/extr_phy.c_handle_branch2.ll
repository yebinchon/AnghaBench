; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_branch2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_handle_branch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@MASKDWORD = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @handle_branch2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_branch2(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %166, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %169

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %29, -842150451
  br i1 %30, label %31, label %47

31:                                               ; preds = %17
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MASKDWORD, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %32, i32 %37, i32 %38, i32 %44)
  %46 = call i32 @udelay(i32 1)
  br label %166

47:                                               ; preds = %17
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 2
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %169

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @_rtl88e_check_condition(%struct.ieee80211_hw* %54, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @READ_NEXT_PAIR(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %83, %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 57005
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 52719
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 52685
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 2
  %80 = icmp slt i32 %77, %79
  br label %81

81:                                               ; preds = %76, %73, %70, %67
  %82 = phi i1 [ false, %73 ], [ false, %70 ], [ false, %67 ], [ %80, %76 ]
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @READ_NEXT_PAIR(i32 %84, i32 %85, i32 %86)
  br label %67

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %10, align 4
  br label %149

91:                                               ; preds = %53
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @READ_NEXT_PAIR(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %112, %91
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 57005
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 52719
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 52685
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %107, 2
  %109 = icmp slt i32 %106, %108
  br label %110

110:                                              ; preds = %105, %102, %99, %96
  %111 = phi i1 [ false, %102 ], [ false, %99 ], [ false, %96 ], [ %109, %105 ]
  br i1 %111, label %112, label %132

112:                                              ; preds = %110
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MASKDWORD, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %113, i32 %118, i32 %119, i32 %125)
  %127 = call i32 @udelay(i32 1)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @READ_NEXT_PAIR(i32 %128, i32 %129, i32 %130)
  br label %96

132:                                              ; preds = %110
  br label %133

133:                                              ; preds = %143, %132
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 57005
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, 2
  %140 = icmp slt i32 %137, %139
  br label %141

141:                                              ; preds = %136, %133
  %142 = phi i1 [ false, %133 ], [ %140, %136 ]
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @READ_NEXT_PAIR(i32 %144, i32 %145, i32 %146)
  br label %133

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %88
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %152 = load i32, i32* @COMP_INIT, align 4
  %153 = load i32, i32* @DBG_TRACE, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @RT_TRACE(%struct.rtl_priv* %151, i32 %152, i32 %153, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %164)
  br label %166

166:                                              ; preds = %150, %31
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %10, align 4
  br label %13

169:                                              ; preds = %52, %13
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl88e_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
