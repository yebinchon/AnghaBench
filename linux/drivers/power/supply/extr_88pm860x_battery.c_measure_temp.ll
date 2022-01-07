; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i64, i32 }

@PM860X_TEMP_TINT = common dso_local global i64 0, align 8
@PM8607_TINT_MEAS1 = common dso_local global i32 0, align 4
@PM8607_GPADC1_MEAS1 = common dso_local global i32 0, align 4
@GPBIAS2_GPADC1_UA = common dso_local global i32 0, align 4
@TBAT_NEG_25D = common dso_local global i32 0, align 4
@TBAT_NEG_10D = common dso_local global i32 0, align 4
@TBAT_0D = common dso_local global i32 0, align 4
@TBAT_40D = common dso_local global i32 0, align 4
@TBAT_10D = common dso_local global i32 0, align 4
@TBAT_20D = common dso_local global i32 0, align 4
@TBAT_30D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"temp_C:%d C,temp_mv:%d mv\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, i32*)* @measure_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_temp(%struct.pm860x_battery_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm860x_battery_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %11 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PM860X_TEMP_TINT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %17 = load i32, i32* @PM8607_TINT_MEAS1, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @measure_12bit_voltage(%struct.pm860x_battery_info* %16, i32 %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %187

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 884
  %28 = mul nsw i32 %27, 1000
  %29 = sdiv i32 %28, 3611
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %186

31:                                               ; preds = %2
  %32 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %33 = load i32, i32* @PM8607_GPADC1_MEAS1, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @measure_12bit_voltage(%struct.pm860x_battery_info* %32, i32 %33, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %187

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TBAT_NEG_25D, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  store i32 -30, i32* %7, align 4
  %52 = load i32, i32* @TBAT_NEG_10D, align 4
  %53 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 1000
  store i32 %55, i32* %9, align 4
  %56 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %56, i32 0, i32 %57)
  br label %176

59:                                               ; preds = %40
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TBAT_NEG_10D, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  store i32 -15, i32* %7, align 4
  %65 = load i32, i32* @TBAT_NEG_10D, align 4
  %66 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 1000
  store i32 %68, i32* %9, align 4
  %69 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %69, i32 0, i32 %70)
  br label %175

72:                                               ; preds = %59
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TBAT_0D, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  store i32 -5, i32* %7, align 4
  %78 = load i32, i32* @TBAT_NEG_10D, align 4
  %79 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sdiv i32 %80, 1000
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @TBAT_40D, align 4
  %83 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 1000
  store i32 %85, i32* %9, align 4
  %86 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %86, i32 %87, i32 %88)
  br label %174

90:                                               ; preds = %72
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TBAT_10D, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  store i32 5, i32* %7, align 4
  %96 = load i32, i32* @TBAT_NEG_10D, align 4
  %97 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 1000
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @TBAT_40D, align 4
  %101 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sdiv i32 %102, 1000
  store i32 %103, i32* %9, align 4
  %104 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %104, i32 %105, i32 %106)
  br label %173

108:                                              ; preds = %90
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TBAT_20D, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  store i32 15, i32* %7, align 4
  %114 = load i32, i32* @TBAT_NEG_10D, align 4
  %115 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sdiv i32 %116, 1000
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @TBAT_40D, align 4
  %119 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 1000
  store i32 %121, i32* %9, align 4
  %122 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %122, i32 %123, i32 %124)
  br label %172

126:                                              ; preds = %108
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @TBAT_30D, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
  store i32 25, i32* %7, align 4
  %132 = load i32, i32* @TBAT_NEG_10D, align 4
  %133 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sdiv i32 %134, 1000
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @TBAT_40D, align 4
  %137 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sdiv i32 %138, 1000
  store i32 %139, i32* %9, align 4
  %140 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %140, i32 %141, i32 %142)
  br label %171

144:                                              ; preds = %126
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TBAT_40D, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  store i32 35, i32* %7, align 4
  %150 = load i32, i32* @TBAT_NEG_10D, align 4
  %151 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sdiv i32 %152, 1000
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* @TBAT_40D, align 4
  %155 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sdiv i32 %156, 1000
  store i32 %157, i32* %9, align 4
  %158 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %158, i32 %159, i32 %160)
  br label %170

162:                                              ; preds = %144
  %163 = load i32, i32* @TBAT_40D, align 4
  %164 = load i32, i32* @GPBIAS2_GPADC1_UA, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sdiv i32 %165, 1000
  store i32 %166, i32* %8, align 4
  %167 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @set_temp_threshold(%struct.pm860x_battery_info* %167, i32 %168, i32 0)
  store i32 45, i32* %7, align 4
  br label %170

170:                                              ; preds = %162, %149
  br label %171

171:                                              ; preds = %170, %131
  br label %172

172:                                              ; preds = %171, %113
  br label %173

173:                                              ; preds = %172, %95
  br label %174

174:                                              ; preds = %173, %77
  br label %175

175:                                              ; preds = %174, %64
  br label %176

176:                                              ; preds = %175, %51
  %177 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %178 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dev_dbg(i32 %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = load i32*, i32** %5, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %176, %24
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %38, %22
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @measure_12bit_voltage(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @set_temp_threshold(%struct.pm860x_battery_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
