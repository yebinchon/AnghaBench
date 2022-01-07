; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_update_bt_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_update_bt_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_update_bt_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_update_bt_link_info(%struct.btc_coexist* %0) #0 {
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
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %22 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
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
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %37 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %42 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %44 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %47 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %52 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  %56 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %57 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %62 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %67 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %71

68:                                               ; preds = %60, %55, %50, %45
  %69 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %70 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %73 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %71
  %77 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %78 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %83 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %88 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %93 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  br label %97

94:                                               ; preds = %86, %81, %76, %71
  %95 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %96 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %99 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %97
  %103 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %104 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %109 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %114 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %119 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %118, i32 0, i32 4
  store i32 1, i32* %119, align 8
  br label %123

120:                                              ; preds = %112, %107, %102, %97
  %121 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %122 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %121, i32 0, i32 4
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %125 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %123
  %129 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %130 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %128
  %134 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %135 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %140 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %145 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %144, i32 0, i32 5
  store i32 1, i32* %145, align 4
  br label %149

146:                                              ; preds = %138, %133, %128, %123
  %147 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %148 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %147, i32 0, i32 5
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %143
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
