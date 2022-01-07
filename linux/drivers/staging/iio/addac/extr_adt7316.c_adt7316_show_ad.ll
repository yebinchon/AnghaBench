; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 }

@ADT7316_AD_SINGLE_CH_MODE = common dso_local global i32 0, align 4
@ADT7516_AD_SINGLE_CH_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ADT7316_LSB_IN_TEMP_VDD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ADT7316_AD_MSB_DATA_BASE = common dso_local global i64 0, align 8
@ADT7316_T_VALUE_FLOAT_OFFSET = common dso_local global i32 0, align 4
@ADT7316_LSB_IN_TEMP_MASK = common dso_local global i32 0, align 4
@ADT7316_LSB_VDD_MASK = common dso_local global i32 0, align 4
@ADT7316_LSB_VDD_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ADT7316_LSB_EX_TEMP_AIN = common dso_local global i32 0, align 4
@ADT7316_LSB_EX_TEMP_MASK = common dso_local global i32 0, align 4
@ADT7516_LSB_AIN_SHIFT = common dso_local global i32 0, align 4
@ADT7316_MSB_EX_TEMP = common dso_local global i64 0, align 8
@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@ADT7316_T_VALUE_SIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%c%d.%.2d\0A\00", align 1
@ADT7316_T_VALUE_FLOAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7316_chip_info*, i32, i8*)* @adt7316_show_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_ad(%struct.adt7316_chip_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adt7316_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.adt7316_chip_info* %0, %struct.adt7316_chip_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8 32, i8* %11, align 1
  %13 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %14 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ADT7316_AD_SINGLE_CH_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %22 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ADT7516_AD_SINGLE_CH_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %218

30:                                               ; preds = %19, %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %128 [
    i32 129, label %32
    i32 128, label %77
  ]

32:                                               ; preds = %30
  %33 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %34 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %35, align 8
  %37 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %38 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ADT7316_LSB_IN_TEMP_VDD, align 4
  %42 = call i32 %36(i32 %40, i32 %41, i32* %10)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %218

48:                                               ; preds = %32
  %49 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %50 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %51, align 8
  %53 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %54 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @ADT7316_AD_MSB_DATA_BASE, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 %52(i32 %56, i32 %61, i32* %9)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %218

68:                                               ; preds = %48
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ADT7316_T_VALUE_FLOAT_OFFSET, align 4
  %71 = shl i32 %69, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ADT7316_LSB_IN_TEMP_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %197

77:                                               ; preds = %30
  %78 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %79 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %80, align 8
  %82 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %83 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ADT7316_LSB_IN_TEMP_VDD, align 4
  %87 = call i32 %81(i32 %85, i32 %86, i32* %10)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %218

93:                                               ; preds = %77
  %94 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %95 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %96, align 8
  %98 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %99 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @ADT7316_AD_MSB_DATA_BASE, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 %97(i32 %101, i32 %106, i32* %9)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %218

113:                                              ; preds = %93
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @ADT7316_T_VALUE_FLOAT_OFFSET, align 4
  %116 = shl i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @ADT7316_LSB_VDD_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @ADT7316_LSB_VDD_OFFSET, align 4
  %121 = ashr i32 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = trunc i32 %125 to i8
  %127 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %126)
  store i32 %127, i32* %4, align 4
  br label %218

128:                                              ; preds = %30
  %129 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %130 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %131, align 8
  %133 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %134 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ADT7316_LSB_EX_TEMP_AIN, align 4
  %138 = call i32 %132(i32 %136, i32 %137, i32* %10)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %128
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %218

144:                                              ; preds = %128
  %145 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %146 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %147, align 8
  %149 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %150 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* @ADT7316_AD_MSB_DATA_BASE, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 %148(i32 %152, i32 %157, i32* %9)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %144
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %218

164:                                              ; preds = %144
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @ADT7316_T_VALUE_FLOAT_OFFSET, align 4
  %167 = shl i32 %165, %166
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @ADT7316_LSB_EX_TEMP_MASK, align 4
  %170 = load i32, i32* @ADT7516_LSB_AIN_SHIFT, align 4
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* @ADT7316_MSB_EX_TEMP, align 8
  %175 = load i64, i64* @ADT7316_AD_MSB_DATA_BASE, align 8
  %176 = sub nsw i64 %174, %175
  %177 = sub nsw i64 %173, %176
  %178 = mul nsw i64 %171, %177
  %179 = trunc i64 %178 to i32
  %180 = shl i32 %169, %179
  %181 = and i32 %168, %180
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %5, align 8
  %185 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @ID_FAMILY_MASK, align 4
  %188 = and i32 %186, %187
  %189 = load i32, i32* @ID_ADT75XX, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %164
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = trunc i32 %193 to i8
  %195 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %194)
  store i32 %195, i32* %4, align 4
  br label %218

196:                                              ; preds = %164
  br label %197

197:                                              ; preds = %196, %68
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ADT7316_T_VALUE_SIGN, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load i32, i32* @ADT7316_T_VALUE_SIGN, align 4
  %204 = shl i32 %203, 1
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 %204, %205
  store i32 %206, i32* %8, align 4
  store i8 45, i8* %11, align 1
  br label %207

207:                                              ; preds = %202, %197
  %208 = load i8*, i8** %7, align 8
  %209 = load i8, i8* %11, align 1
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @ADT7316_T_VALUE_FLOAT_OFFSET, align 4
  %212 = ashr i32 %210, %211
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @ADT7316_T_VALUE_FLOAT_MASK, align 4
  %215 = and i32 %213, %214
  %216 = mul nsw i32 %215, 25
  %217 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8 signext %209, i32 %212, i32 %216)
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %207, %191, %161, %141, %113, %110, %90, %65, %45, %27
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
