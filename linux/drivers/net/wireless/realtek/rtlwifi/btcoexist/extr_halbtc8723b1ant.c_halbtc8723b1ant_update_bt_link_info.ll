; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_update_bt_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_update_bt_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_update_bt_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_update_bt_link_info(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 1
  store %struct.btc_bt_link_info* %6, %struct.btc_bt_link_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 0
  %9 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %8, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %12 = call i32 %9(%struct.btc_coexist* %10, i32 %11, i32* %4)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %17 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %22 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %27 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %32 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %37 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %42 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %47 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %49 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %52 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %57 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %62 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %67 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %72 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %76

73:                                               ; preds = %65, %60, %55, %50
  %74 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %75 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %78 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %76
  %82 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %83 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %88 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %93 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %98 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  br label %102

99:                                               ; preds = %91, %86, %81, %76
  %100 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %101 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %104 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %102
  %108 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %109 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %107
  %113 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %114 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %119 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %124 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %123, i32 0, i32 4
  store i32 1, i32* %124, align 8
  br label %128

125:                                              ; preds = %117, %112, %107, %102
  %126 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %127 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %126, i32 0, i32 4
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %130 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %128
  %134 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %135 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %133
  %139 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %140 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %145 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %150 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %149, i32 0, i32 5
  store i32 1, i32* %150, align 4
  br label %154

151:                                              ; preds = %143, %138, %133, %128
  %152 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %153 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %152, i32 0, i32 5
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
