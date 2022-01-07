; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_run_coex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_run_coex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_coex }
%struct.rtw_coex = type { i32, i64, i64, i64, %struct.rtw_coex_stat, %struct.rtw_coex_dm }
%struct.rtw_coex_stat = type { i64, i64, i64, i64, i64, i32, i64, i64, i32, i32*, i64 }
%struct.rtw_coex_dm = type { i64, i32 }

@COEX_CNT_WL_COEXRUN = common dso_local global i64 0, align 8
@COEX_WLINK_5G = common dso_local global i32 0, align 4
@COEX_WLINK_2G1PORT = common dso_local global i32 0, align 4
@COEX_SCBD_FIX2M = common dso_local global i32 0, align 4
@COEX_BTSTATUS_NCON_IDLE = common dso_local global i64 0, align 8
@COEX_BTSTATUS_CON_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw_coex_run_coex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_run_coex(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca %struct.rtw_coex_stat*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 1
  store %struct.rtw_coex* %9, %struct.rtw_coex** %5, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 5
  store %struct.rtw_coex_dm* %11, %struct.rtw_coex_dm** %6, align 8
  %12 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %12, i32 0, i32 4
  store %struct.rtw_coex_stat* %13, %struct.rtw_coex_stat** %7, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %19 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @rtw_coex_update_wl_link_info(%struct.rtw_dev* %20, i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = call i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev* %23)
  %25 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %26 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %163

30:                                               ; preds = %2
  %31 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %163

36:                                               ; preds = %30
  %37 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %38 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %43 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %163

47:                                               ; preds = %41, %36
  %48 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %49 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %48, i32 0, i32 9
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @COEX_CNT_WL_COEXRUN, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %56 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %58 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load i32, i32* @COEX_WLINK_5G, align 4
  %63 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %64 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = call i32 @rtw_coex_action_wl_under5g(%struct.rtw_dev* %65)
  br label %158

67:                                               ; preds = %47
  %68 = load i32, i32* @COEX_WLINK_2G1PORT, align 4
  %69 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %70 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %72 = load i32, i32* @COEX_SCBD_FIX2M, align 4
  %73 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %71, i32 %72, i32 0)
  %74 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %75 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %80 = call i32 @rtw_coex_action_wl_only(%struct.rtw_dev* %79)
  br label %158

81:                                               ; preds = %67
  %82 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %83 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %88 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = call i32 @rtw_coex_action_wl_native_lps(%struct.rtw_dev* %92)
  br label %158

94:                                               ; preds = %86, %81
  %95 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %96 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %101 = call i32 @rtw_coex_action_bt_whql_test(%struct.rtw_dev* %100)
  br label %158

102:                                              ; preds = %94
  %103 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %104 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %109 = call i32 @rtw_coex_action_bt_relink(%struct.rtw_dev* %108)
  br label %158

110:                                              ; preds = %102
  %111 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %112 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %117 = call i32 @rtw_coex_action_bt_inquiry(%struct.rtw_dev* %116)
  br label %158

118:                                              ; preds = %110
  %119 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %120 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @COEX_BTSTATUS_NCON_IDLE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %126 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @COEX_BTSTATUS_CON_IDLE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124, %118
  %131 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %132 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %137 = call i32 @rtw_coex_action_bt_idle(%struct.rtw_dev* %136)
  br label %158

138:                                              ; preds = %130, %124
  %139 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %140 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %145 = call i32 @rtw_coex_action_wl_linkscan(%struct.rtw_dev* %144)
  br label %158

146:                                              ; preds = %138
  %147 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %7, align 8
  %148 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %153 = call i32 @rtw_coex_action_wl_connected(%struct.rtw_dev* %152)
  br label %157

154:                                              ; preds = %146
  %155 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %156 = call i32 @rtw_coex_action_wl_not_connected(%struct.rtw_dev* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %143, %135, %115, %107, %99, %91, %78, %61
  %159 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %160 = call i32 @rtw_coex_set_gnt_fix(%struct.rtw_dev* %159)
  %161 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %162 = call i32 @rtw_coex_limited_wl(%struct.rtw_dev* %161)
  br label %163

163:                                              ; preds = %158, %46, %35, %29
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rtw_coex_update_wl_link_info(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_wl_under5g(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_action_wl_only(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_wl_native_lps(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_whql_test(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_relink(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_inquiry(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_idle(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_wl_linkscan(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_wl_connected(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_wl_not_connected(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_set_gnt_fix(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_limited_wl(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
