; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_ps_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_ps_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_4__ = type { %struct.rtl_p2p_ps_info }
%struct.rtl_p2p_ps_info = type { i32, i32, i32*, i32*, i32, i32*, i32*, i32, i32, i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" p2p state %x\0A\00", align 1
@HW_VAR_H2C_FW_P2P_PS_OFFLOAD = common dso_local global i32 0, align 4
@P2P_PS_NONE = common dso_local global i32 0, align 4
@HW_VAR_H2C_FW_PWRMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ctwindow %x oppps %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"count %x duration %x index %x interval %x start time %x noa num %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  %7 = alloca %struct.rtl_p2p_ps_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.rtl_p2p_ps_info* %15, %struct.rtl_p2p_ps_info** %7, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = load i32, i32* @COMP_FW, align 4
  %18 = load i32, i32* @DBG_LOUD, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %141 [
    i32 131, label %22
    i32 130, label %73
    i32 129, label %120
    i32 128, label %120
    i32 132, label %120
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %31, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* @HW_VAR_H2C_FW_P2P_PS_OFFLOAD, align 4
  %35 = call i32 %32(%struct.ieee80211_hw* %33, i32 %34, i32* %4)
  %36 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %39 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %38, i32 0, i32 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %40, i32 0, i32 7
  store i32 0, i32* %41, align 8
  %42 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %43 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @P2P_PS_NONE, align 4
  %45 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %46 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %22
  %52 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %57, i32 0, i32 0
  store i32 2, i32* %58, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %64, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* @HW_VAR_H2C_FW_PWRMODE, align 4
  %68 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %69 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %68, i32 0, i32 1
  %70 = call i32 %65(%struct.ieee80211_hw* %66, i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %56, %51
  br label %72

72:                                               ; preds = %71, %22
  br label %142

73:                                               ; preds = %2
  %74 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %75 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @P2P_PS_NONE, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %82 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %84 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %79
  %88 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %89 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %100, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load i32, i32* @HW_VAR_H2C_FW_PWRMODE, align 4
  %104 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %105 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %104, i32 0, i32 1
  %106 = call i32 %101(%struct.ieee80211_hw* %102, i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %92, %87
  br label %108

108:                                              ; preds = %107, %79
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %114, align 8
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = load i32, i32* @HW_VAR_H2C_FW_P2P_PS_OFFLOAD, align 4
  %118 = call i32 %115(%struct.ieee80211_hw* %116, i32 %117, i32* %4)
  br label %119

119:                                              ; preds = %108, %73
  br label %142

120:                                              ; preds = %2, %2, %2
  %121 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %122 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @P2P_PS_NONE, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %129 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %135, align 8
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load i32, i32* @HW_VAR_H2C_FW_P2P_PS_OFFLOAD, align 4
  %139 = call i32 %136(%struct.ieee80211_hw* %137, i32 %138, i32* %4)
  br label %140

140:                                              ; preds = %126, %120
  br label %142

141:                                              ; preds = %2
  br label %142

142:                                              ; preds = %141, %140, %119, %72
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %144 = load i32, i32* @COMP_FW, align 4
  %145 = load i32, i32* @DBG_LOUD, align 4
  %146 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %147 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %150 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %143, i32 %144, i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %154 = load i32, i32* @COMP_FW, align 4
  %155 = load i32, i32* @DBG_LOUD, align 4
  %156 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %157 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %162 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %167 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %170 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %175 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %7, align 8
  %180 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %165, i32 %168, i32 %173, i32 %178, i32 %181)
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %184 = load i32, i32* @COMP_FW, align 4
  %185 = load i32, i32* @DBG_LOUD, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
