; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_get_tx_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_get_tx_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i64**, i64**, i64**, i64** }

@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64*, i64*, i64*, i64*)* @get_tx_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tx_power_index(%struct.adapter* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.hal_data_8188e*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %18, align 8
  store %struct.hal_data_8188e* %19, %struct.hal_data_8188e** %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 1, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %22

22:                                               ; preds = %194, %6
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* %16, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %197

26:                                               ; preds = %22
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @RF_PATH_A, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %32 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds i64*, i64** %33, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  %43 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %44 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %43, i32 0, i32 1
  %45 = load i64**, i64*** %44, align 8
  %46 = load i64, i64* @RF_PATH_A, align 8
  %47 = getelementptr inbounds i64*, i64** %45, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %53 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %52, i32 0, i32 2
  %54 = load i64**, i64*** %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds i64*, i64** %54, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @RF_PATH_A, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %51, %60
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %66 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %65, i32 0, i32 1
  %67 = load i64**, i64*** %66, align 8
  %68 = load i64, i64* @RF_PATH_A, align 8
  %69 = getelementptr inbounds i64*, i64** %67, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %75 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %74, i32 0, i32 3
  %76 = load i64**, i64*** %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i64*, i64** %76, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @RF_PATH_A, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %73, %82
  %84 = load i64*, i64** %11, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %88 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %87, i32 0, i32 1
  %89 = load i64**, i64*** %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i64*, i64** %89, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %12, align 8
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  br label %193

99:                                               ; preds = %26
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @RF_PATH_B, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %192

103:                                              ; preds = %99
  %104 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %105 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %104, i32 0, i32 0
  %106 = load i64**, i64*** %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i64*, i64** %106, i64 %107
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %117 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %116, i32 0, i32 1
  %118 = load i64**, i64*** %117, align 8
  %119 = load i64, i64* @RF_PATH_A, align 8
  %120 = getelementptr inbounds i64*, i64** %118, i64 %119
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %126 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %125, i32 0, i32 3
  %127 = load i64**, i64*** %126, align 8
  %128 = load i64, i64* @RF_PATH_A, align 8
  %129 = getelementptr inbounds i64*, i64** %127, i64 %128
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %124, %133
  %135 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %136 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %135, i32 0, i32 3
  %137 = load i64**, i64*** %136, align 8
  %138 = load i64, i64* %15, align 8
  %139 = getelementptr inbounds i64*, i64** %137, i64 %138
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %134, %143
  %145 = load i64*, i64** %10, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64 %144, i64* %147, align 8
  %148 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %149 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %148, i32 0, i32 1
  %150 = load i64**, i64*** %149, align 8
  %151 = load i64, i64* @RF_PATH_A, align 8
  %152 = getelementptr inbounds i64*, i64** %150, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %158 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %157, i32 0, i32 3
  %159 = load i64**, i64*** %158, align 8
  %160 = load i64, i64* %15, align 8
  %161 = getelementptr inbounds i64*, i64** %159, i64 %160
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @RF_PATH_A, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %156, %165
  %167 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %168 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %167, i32 0, i32 3
  %169 = load i64**, i64*** %168, align 8
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds i64*, i64** %169, i64 %170
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %166, %175
  %177 = load i64*, i64** %11, align 8
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %176, i64* %179, align 8
  %180 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %181 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %180, i32 0, i32 1
  %182 = load i64**, i64*** %181, align 8
  %183 = load i64, i64* %15, align 8
  %184 = getelementptr inbounds i64*, i64** %182, i64 %183
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64 %188, i64* %191, align 8
  br label %192

192:                                              ; preds = %103, %99
  br label %193

193:                                              ; preds = %192, %30
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %15, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %15, align 8
  br label %22

197:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
