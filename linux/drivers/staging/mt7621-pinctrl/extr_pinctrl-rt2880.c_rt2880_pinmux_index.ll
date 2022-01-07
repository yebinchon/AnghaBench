; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pinmux_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pinmux_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2880_pmx_func = type { i32*, i32 }
%struct.rt2880_priv = type { i32, i32, i32, %struct.rt2880_pmx_group*, %struct.rt2880_pmx_func**, i64* }
%struct.rt2880_pmx_group = type { i32, %struct.rt2880_pmx_func*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gpio_func = common dso_local global %struct.rt2880_pmx_func zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2880_priv*)* @rt2880_pinmux_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2880_pinmux_index(%struct.rt2880_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2880_priv*, align 8
  %4 = alloca %struct.rt2880_pmx_func**, align 8
  %5 = alloca %struct.rt2880_pmx_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2880_priv* %0, %struct.rt2880_priv** %3, align 8
  %9 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %9, i32 0, i32 3
  %11 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %10, align 8
  store %struct.rt2880_pmx_group* %11, %struct.rt2880_pmx_group** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %5, align 8
  %14 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %5, align 8
  %23 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %22, i32 1
  store %struct.rt2880_pmx_group* %23, %struct.rt2880_pmx_group** %5, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kcalloc(i32 %27, i32 %30, i32 8, i32 %31)
  %33 = bitcast i8* %32 to i64*
  %34 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %34, i32 0, i32 5
  store i64* %33, i64** %35, align 8
  %36 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %203

41:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %49, i32 0, i32 3
  %51 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %51, i64 %53
  %55 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %57, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  %63 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %63, i32 0, i32 3
  %65 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %65, i64 %67
  %69 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %48
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @devm_kcalloc(i32 %85, i32 %88, i32 16, i32 %89)
  %91 = bitcast i8* %90 to %struct.rt2880_pmx_func**
  %92 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %92, i32 0, i32 4
  store %struct.rt2880_pmx_func** %91, %struct.rt2880_pmx_func*** %93, align 8
  store %struct.rt2880_pmx_func** %91, %struct.rt2880_pmx_func*** %4, align 8
  %94 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %95 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @devm_kcalloc(i32 %96, i32 %99, i32 4, i32 %100)
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** getelementptr inbounds (%struct.rt2880_pmx_func, %struct.rt2880_pmx_func* @gpio_func, i32 0, i32 0), align 8
  %103 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %104 = icmp ne %struct.rt2880_pmx_func** %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %78
  %106 = load i32*, i32** getelementptr inbounds (%struct.rt2880_pmx_func, %struct.rt2880_pmx_func* @gpio_func, i32 0, i32 0), align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %78
  store i32 -1, i32* %2, align 4
  br label %203

109:                                              ; preds = %105
  %110 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %111 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* getelementptr inbounds (%struct.rt2880_pmx_func, %struct.rt2880_pmx_func* @gpio_func, i32 0, i32 1), align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %123, %109
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.rt2880_pmx_func, %struct.rt2880_pmx_func* @gpio_func, i32 0, i32 1), align 8
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i32*, i32** getelementptr inbounds (%struct.rt2880_pmx_func, %struct.rt2880_pmx_func* @gpio_func, i32 0, i32 0), align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %113

126:                                              ; preds = %113
  %127 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %127, i64 %129
  store %struct.rt2880_pmx_func* @gpio_func, %struct.rt2880_pmx_func** %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %199, %126
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %202

139:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %195, %139
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %143 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %142, i32 0, i32 3
  %144 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %144, i64 %146
  %148 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %141, %149
  br i1 %150, label %151, label %198

151:                                              ; preds = %140
  %152 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %153 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %152, i32 0, i32 3
  %154 = load %struct.rt2880_pmx_group*, %struct.rt2880_pmx_group** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %154, i64 %156
  %158 = getelementptr inbounds %struct.rt2880_pmx_group, %struct.rt2880_pmx_group* %157, i32 0, i32 1
  %159 = load %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.rt2880_pmx_func, %struct.rt2880_pmx_func* %159, i64 %161
  %163 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %163, i64 %165
  store %struct.rt2880_pmx_func* %162, %struct.rt2880_pmx_func** %166, align 8
  %167 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %168 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i32* @devm_kzalloc(i32 %169, i32 4, i32 %170)
  %172 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %172, i64 %174
  %176 = load %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %175, align 8
  %177 = getelementptr inbounds %struct.rt2880_pmx_func, %struct.rt2880_pmx_func* %176, i32 0, i32 0
  store i32* %171, i32** %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %179, i64 %181
  %183 = load %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %182, align 8
  %184 = getelementptr inbounds %struct.rt2880_pmx_func, %struct.rt2880_pmx_func* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %178, i32* %186, align 4
  %187 = load %struct.rt2880_pmx_func**, %struct.rt2880_pmx_func*** %4, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %187, i64 %189
  %191 = load %struct.rt2880_pmx_func*, %struct.rt2880_pmx_func** %190, align 8
  %192 = getelementptr inbounds %struct.rt2880_pmx_func, %struct.rt2880_pmx_func* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %151
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %140

198:                                              ; preds = %140
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %133

202:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %108, %40
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
