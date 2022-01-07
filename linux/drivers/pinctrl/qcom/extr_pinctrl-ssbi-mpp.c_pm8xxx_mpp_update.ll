; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_mpp_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_mpp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_mpp = type { i32, i32 }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PM8XXX_MPP_TYPE_DTEST_OUTPUT = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_D_BI_DIR = common dso_local global i32 0, align 4
@PM8XXX_MPP_BI_PULLUP_OPEN = common dso_local global i32 0, align 4
@PM8XXX_MPP_BI_PULLUP_1KOHM = common dso_local global i32 0, align 4
@PM8XXX_MPP_BI_PULLUP_10KOHM = common dso_local global i32 0, align 4
@PM8XXX_MPP_BI_PULLUP_30KOHM = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_D_INPUT = common dso_local global i32 0, align 4
@PM8XXX_MPP_DIN_TO_INT = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_D_OUTPUT = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_A_OUTPUT = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_A_INPUT = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_DTEST_SINK = common dso_local global i32 0, align 4
@PM8XXX_MPP_TYPE_SINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to write register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_mpp*, %struct.pm8xxx_pin_data*)* @pm8xxx_mpp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_mpp_update(%struct.pm8xxx_mpp* %0, %struct.pm8xxx_pin_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8xxx_mpp*, align 8
  %5 = alloca %struct.pm8xxx_pin_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pm8xxx_mpp* %0, %struct.pm8xxx_mpp** %4, align 8
  store %struct.pm8xxx_pin_data* %1, %struct.pm8xxx_pin_data** %5, align 8
  %11 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %163 [
    i32 129, label %14
    i32 130, label %104
    i32 128, label %132
  ]

14:                                               ; preds = %2
  %15 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %16 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @PM8XXX_MPP_TYPE_DTEST_OUTPUT, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %22 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %100

25:                                               ; preds = %14
  %26 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %32 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load i32, i32* @PM8XXX_MPP_TYPE_D_BI_DIR, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %38 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PM8XXX_MPP_BI_PULLUP_OPEN, align 4
  store i32 %42, i32* %7, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %45 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 600
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PM8XXX_MPP_BI_PULLUP_1KOHM, align 4
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %52 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 10000
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @PM8XXX_MPP_BI_PULLUP_10KOHM, align 4
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @PM8XXX_MPP_BI_PULLUP_30KOHM, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %41
  br label %99

62:                                               ; preds = %30, %25
  %63 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %64 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i32, i32* @PM8XXX_MPP_TYPE_D_INPUT, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %70 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %75 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @PM8XXX_MPP_DIN_TO_INT, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %73
  br label %98

80:                                               ; preds = %62
  %81 = load i32, i32* @PM8XXX_MPP_TYPE_D_OUTPUT, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %83 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %90 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = call i32 @BIT(i32 1)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %80
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %61
  br label %100

100:                                              ; preds = %99, %19
  %101 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %102 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %6, align 4
  br label %166

104:                                              ; preds = %2
  %105 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %106 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i32, i32* @PM8XXX_MPP_TYPE_A_OUTPUT, align 4
  store i32 %110, i32* %8, align 4
  %111 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %112 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  %114 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %115 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  %117 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %118 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = call i32 @BIT(i32 1)
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %109
  br label %131

126:                                              ; preds = %104
  %127 = load i32, i32* @PM8XXX_MPP_TYPE_A_INPUT, align 4
  store i32 %127, i32* %8, align 4
  %128 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %129 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %126, %125
  br label %166

132:                                              ; preds = %2
  %133 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %134 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 5
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  %138 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %139 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %132
  %143 = load i32, i32* @PM8XXX_MPP_TYPE_DTEST_SINK, align 4
  store i32 %143, i32* %8, align 4
  %144 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %145 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %162

148:                                              ; preds = %132
  %149 = load i32, i32* @PM8XXX_MPP_TYPE_SINK, align 4
  store i32 %149, i32* %8, align 4
  %150 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %151 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %7, align 4
  %153 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %154 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = call i32 @BIT(i32 1)
  %159 = load i32, i32* %7, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %157, %148
  br label %162

162:                                              ; preds = %161, %142
  br label %166

163:                                              ; preds = %2
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %191

166:                                              ; preds = %162, %131, %100
  %167 = load i32, i32* %8, align 4
  %168 = shl i32 %167, 5
  %169 = load i32, i32* %6, align 4
  %170 = shl i32 %169, 2
  %171 = or i32 %168, %170
  %172 = load i32, i32* %7, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %10, align 4
  %174 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %4, align 8
  %175 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %178 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @regmap_write(i32 %176, i32 %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %166
  %185 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %4, align 8
  %186 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_err(i32 %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %184, %166
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %163
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
