; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_pin_field_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_pin_field_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_pin_reg_calc* }
%struct.mtk_pin_reg_calc = type { i32, %struct.mtk_pin_field_calc* }
%struct.mtk_pin_field_calc = type { i64, i64, i32, i32, i32, i32, i32, i64, i64 }
%struct.mtk_pin_desc = type { i64, i32 }
%struct.mtk_pin_field = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Not support field %d for pin %d (%s)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Not support field %d for pin = %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Invalid base for field %d for pin = %d (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, %struct.mtk_pin_field*)* @mtk_hw_pin_field_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hw_pin_field_lookup(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2, %struct.mtk_pin_field* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_pin_field*, align 8
  %10 = alloca %struct.mtk_pin_field_calc*, align 8
  %11 = alloca %struct.mtk_pin_field_calc*, align 8
  %12 = alloca %struct.mtk_pin_reg_calc*, align 8
  %13 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %6, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mtk_pin_field* %3, %struct.mtk_pin_field** %9, align 8
  %14 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mtk_pin_reg_calc*, %struct.mtk_pin_reg_calc** %17, align 8
  %19 = icmp ne %struct.mtk_pin_reg_calc* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %4
  %21 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.mtk_pin_reg_calc*, %struct.mtk_pin_reg_calc** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mtk_pin_reg_calc, %struct.mtk_pin_reg_calc* %25, i64 %27
  %29 = getelementptr inbounds %struct.mtk_pin_reg_calc, %struct.mtk_pin_reg_calc* %28, i32 0, i32 1
  %30 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %29, align 8
  %31 = icmp ne %struct.mtk_pin_field_calc* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %34 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.mtk_pin_reg_calc*, %struct.mtk_pin_reg_calc** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mtk_pin_reg_calc, %struct.mtk_pin_reg_calc* %37, i64 %39
  store %struct.mtk_pin_reg_calc* %40, %struct.mtk_pin_reg_calc** %12, align 8
  br label %55

41:                                               ; preds = %20, %4
  %42 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %50 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %48, i32 %51)
  %53 = load i32, i32* @ENOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %216

55:                                               ; preds = %32
  %56 = load %struct.mtk_pin_reg_calc*, %struct.mtk_pin_reg_calc** %12, align 8
  %57 = getelementptr inbounds %struct.mtk_pin_reg_calc, %struct.mtk_pin_reg_calc* %56, i32 0, i32 1
  %58 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %57, align 8
  store %struct.mtk_pin_field_calc* %58, %struct.mtk_pin_field_calc** %10, align 8
  %59 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %60 = load %struct.mtk_pin_reg_calc*, %struct.mtk_pin_reg_calc** %12, align 8
  %61 = getelementptr inbounds %struct.mtk_pin_reg_calc, %struct.mtk_pin_reg_calc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %59, i64 %63
  store %struct.mtk_pin_field_calc* %64, %struct.mtk_pin_field_calc** %11, align 8
  br label %65

65:                                               ; preds = %86, %55
  %66 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %67 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %11, align 8
  %68 = icmp ult %struct.mtk_pin_field_calc* %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %71 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %74 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %79 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %82 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %89

86:                                               ; preds = %77, %69
  %87 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %88 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %87, i32 1
  store %struct.mtk_pin_field_calc* %88, %struct.mtk_pin_field_calc** %10, align 8
  br label %65

89:                                               ; preds = %85, %65
  %90 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %91 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %11, align 8
  %92 = icmp uge %struct.mtk_pin_field_calc* %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %95 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %99 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %102 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %100, i32 %103)
  %105 = load i32, i32* @ENOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %216

107:                                              ; preds = %89
  %108 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %109 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %112 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = icmp sgt i32 %110, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %107
  %117 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %118 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %122 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %125 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %120, i64 %123, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %216

130:                                              ; preds = %107
  %131 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %132 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %137 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  br label %158

140:                                              ; preds = %130
  %141 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %142 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %146 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %149 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %153 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %151, %155
  %157 = add nsw i64 %144, %156
  br label %158

158:                                              ; preds = %140, %135
  %159 = phi i64 [ %139, %135 ], [ %157, %140 ]
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %13, align 4
  %161 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %162 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %165 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %167 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %170 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %174 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %172, %175
  %177 = mul nsw i32 %171, %176
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %168, %178
  %180 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %181 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %180, i32 0, i32 4
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %184 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = srem i32 %182, %185
  %187 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %188 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %190 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = shl i32 1, %191
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %195 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %197 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %200 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %198, %201
  %203 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %204 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = icmp sgt i32 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %158
  %208 = load %struct.mtk_pin_field_calc*, %struct.mtk_pin_field_calc** %10, align 8
  %209 = getelementptr inbounds %struct.mtk_pin_field_calc, %struct.mtk_pin_field_calc* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  br label %212

211:                                              ; preds = %158
  br label %212

212:                                              ; preds = %211, %207
  %213 = phi i32 [ %210, %207 ], [ 0, %211 ]
  %214 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %9, align 8
  %215 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %212, %116, %93, %41
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
