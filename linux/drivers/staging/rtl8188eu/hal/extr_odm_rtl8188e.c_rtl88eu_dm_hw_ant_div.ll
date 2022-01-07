; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_hw_ant_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_hw_ant_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, %struct.sta_info**, %struct.rtw_dig, %struct.fast_ant_train }
%struct.sta_info = type { i32 }
%struct.rtw_dig = type { i64, i64 }
%struct.fast_ant_train = type { i64*, i64*, i64*, i64*, i64 }

@ODM_ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@MAIN_ANT = common dso_local global i64 0, align 8
@AUX_ANT = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*)* @rtl88eu_dm_hw_ant_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88eu_dm_hw_ant_div(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.fast_ant_train*, align 8
  %4 = alloca %struct.rtw_dig*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %17 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %16, i32 0, i32 3
  store %struct.fast_ant_train* %17, %struct.fast_ant_train** %3, align 8
  %18 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %18, i32 0, i32 2
  store %struct.rtw_dig* %19, %struct.rtw_dig** %4, align 8
  store i64 255, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %14, align 4
  store i32 7, i32* %15, align 4
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %176, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ODM_ASSOCIATE_ENTRY_NUM, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %179

24:                                               ; preds = %20
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %26 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %25, i32 0, i32 1
  %27 = load %struct.sta_info**, %struct.sta_info*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %27, i64 %28
  %30 = load %struct.sta_info*, %struct.sta_info** %29, align 8
  store %struct.sta_info* %30, %struct.sta_info** %5, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = call i64 @IS_STA_VALID(%struct.sta_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %24
  %35 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %36 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %44 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %50 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = udiv i64 %48, %54
  br label %57

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %42
  %58 = phi i64 [ %55, %42 ], [ 0, %56 ]
  store i64 %58, i64* %12, align 8
  %59 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %60 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %68 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %74 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = udiv i64 %72, %78
  br label %81

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %66
  %82 = phi i64 [ %79, %66 ], [ 0, %80 ]
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @MAIN_ANT, align 8
  br label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @AUX_ANT, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %15, align 4
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i64 @max(i64 %93, i64 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %100, 40
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %102, %99, %90
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %112 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MAIN_ANT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i64, i64* %12, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64, i64* %13, align 8
  store i64 %120, i64* %12, align 8
  br label %133

121:                                              ; preds = %116, %110
  %122 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %123 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AUX_ANT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i64, i64* %13, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %130, %127, %121
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @min(i64 %134, i64 %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %7, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  store i64 %141, i64* %7, align 8
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %140, %133
  %144 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %145 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @update_tx_ant_88eu(%struct.odm_dm_struct* %150, i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %149, %143
  br label %155

155:                                              ; preds = %154, %24
  %156 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %157 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 0, i64* %160, align 8
  %161 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %162 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64 0, i64* %165, align 8
  %166 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %167 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %6, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  store i64 0, i64* %170, align 8
  %171 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %172 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %6, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %155
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %6, align 8
  br label %20

179:                                              ; preds = %20
  %180 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct* %180, i32 %181)
  %183 = load i64, i64* %8, align 8
  %184 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %185 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %188 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  ret void
}

declare dso_local i64 @IS_STA_VALID(%struct.sta_info*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @update_tx_ant_88eu(%struct.odm_dm_struct*, i32, i64) #1

declare dso_local i32 @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
