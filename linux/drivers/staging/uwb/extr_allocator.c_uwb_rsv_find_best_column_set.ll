; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_find_best_column_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_find_best_column_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i32, i32, i32, i32, %struct.uwb_rsv_col_info* }
%struct.uwb_rsv_col_info = type { i32, i32, i32*, %struct.uwb_rsv_col_set_info }
%struct.uwb_rsv_col_set_info = type { i32, i32, i32, i32 }

@UWB_RSV_ALLOC_NOT_FOUND = common dso_local global i32 0, align 4
@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rsv_alloc_info*, i32, i32, i32)* @uwb_rsv_find_best_column_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rsv_find_best_column_set(%struct.uwb_rsv_alloc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_rsv_col_info*, align 8
  %10 = alloca %struct.uwb_rsv_col_set_info*, align 8
  %11 = alloca %struct.uwb_rsv_col_set_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %23 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %22, i32 0, i32 4
  %24 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %23, align 8
  store %struct.uwb_rsv_col_info* %24, %struct.uwb_rsv_col_info** %9, align 8
  %25 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %9, align 8
  %26 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %25, i32 0, i32 3
  store %struct.uwb_rsv_col_set_info* %26, %struct.uwb_rsv_col_set_info** %10, align 8
  %27 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  store i32 %27, i32* %21, align 4
  %28 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %11, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %154, %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %12, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %157

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %42 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  store i32 %42, i32* %19, align 4
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %123, %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 1, %45
  %47 = icmp sle i32 %44, %46
  br i1 %47, label %48, label %126

48:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %102, %48
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @UWB_NUM_ZONES, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %53
  %58 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %57
  %67 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %9, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %67, i64 %69
  %71 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %9, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %76, i64 %78
  %80 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %75
  %89 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %89, i64 %91
  %93 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %88, %75
  br label %101

100:                                              ; preds = %66, %57
  store i32 0, i32* %18, align 4
  br label %106

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  br label %53

106:                                              ; preds = %100, %53
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %17, align 4
  %116 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %11, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %110, %106
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %43

126:                                              ; preds = %43
  %127 = load i32, i32* %19, align 4
  %128 = icmp slt i32 %127, 8
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.uwb_rsv_col_set_info*, %struct.uwb_rsv_col_set_info** %10, align 8
  %133 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @UWB_RSV_ALLOC_FOUND, align 4
  store i32 %134, i32* %21, align 4
  br label %157

135:                                              ; preds = %126
  %136 = load i32, i32* %19, align 4
  %137 = icmp sgt i32 %136, 8
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %11, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.uwb_rsv_col_set_info*, %struct.uwb_rsv_col_set_info** %10, align 8
  %150 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @UWB_RSV_ALLOC_FOUND, align 4
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %146, %142, %138, %135
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %33

157:                                              ; preds = %129, %33
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @UWB_RSV_ALLOC_FOUND, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %197

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.uwb_rsv_col_set_info*, %struct.uwb_rsv_col_set_info** %10, align 8
  %164 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.uwb_rsv_col_set_info*, %struct.uwb_rsv_col_set_info** %10, align 8
  %167 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.uwb_rsv_col_set_info*, %struct.uwb_rsv_col_set_info** %10, align 8
  %170 = getelementptr inbounds %struct.uwb_rsv_col_set_info, %struct.uwb_rsv_col_set_info* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @UWB_NUM_ZONES, align 4
  %172 = load i32, i32* %6, align 4
  %173 = sdiv i32 %171, %172
  %174 = load i32, i32* %7, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %177 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @UWB_NUM_ZONES, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sdiv i32 %178, %179
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %184 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %186 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %189 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  %192 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %193 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %5, align 8
  %196 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %161, %157
  %198 = load i32, i32* %21, align 4
  ret i32 %198
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
