; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.atmel_tcb_pwm_chip = type { %struct.atmel_tcb_pwm_device**, %struct.atmel_tc* }
%struct.atmel_tcb_pwm_device = type { i64, i64, i32 }
%struct.atmel_tc = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@atmel_tc_divisors = common dso_local global i32* null, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"failed to configure period_ns: PWM group already configured with a different value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @atmel_tcb_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tcb_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atmel_tcb_pwm_chip*, align 8
  %11 = alloca %struct.atmel_tcb_pwm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.atmel_tcb_pwm_device*, align 8
  %15 = alloca %struct.atmel_tc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %24 = call %struct.atmel_tcb_pwm_chip* @to_tcb_chip(%struct.pwm_chip* %23)
  store %struct.atmel_tcb_pwm_chip* %24, %struct.atmel_tcb_pwm_chip** %10, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %26 = call %struct.atmel_tcb_pwm_device* @pwm_get_chip_data(%struct.pwm_device* %25)
  store %struct.atmel_tcb_pwm_device* %26, %struct.atmel_tcb_pwm_device** %11, align 8
  %27 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %28 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %12, align 4
  %31 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %32 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 2
  store i32 %34, i32* %13, align 4
  store %struct.atmel_tcb_pwm_device* null, %struct.atmel_tcb_pwm_device** %14, align 8
  %35 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %10, align 8
  %36 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %35, i32 0, i32 1
  %37 = load %struct.atmel_tc*, %struct.atmel_tc** %36, align 8
  store %struct.atmel_tc* %37, %struct.atmel_tc** %15, align 8
  store i32 0, i32* %17, align 4
  %38 = load %struct.atmel_tc*, %struct.atmel_tc** %15, align 8
  %39 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_get_rate(i32 %44)
  store i32 %45, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %83, %4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = load i32*, i32** @atmel_tc_divisors, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %17, align 4
  br label %83

58:                                               ; preds = %49
  %59 = load i32, i32* @NSEC_PER_SEC, align 4
  %60 = load i32*, i32** @atmel_tc_divisors, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i32, i32* %20, align 4
  %67 = zext i32 %66 to i64
  %68 = call i8* @div_u64(i32 %65, i64 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %21, align 8
  %70 = load i64, i64* %21, align 8
  %71 = load %struct.atmel_tc*, %struct.atmel_tc** %15, align 8
  %72 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = shl i64 %70, %75
  store i64 %76, i64* %22, align 8
  %77 = load i64, i64* %22, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  br label %86

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %46

86:                                               ; preds = %81, %46
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %16, align 4
  %91 = load %struct.atmel_tc*, %struct.atmel_tc** %15, align 8
  %92 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_get_rate(i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* @NSEC_PER_SEC, align 4
  %96 = load i32, i32* %20, align 4
  %97 = zext i32 %96 to i64
  %98 = call i8* @div_u64(i32 %95, i64 %97)
  %99 = ptrtoint i8* %98 to i64
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* %21, align 8
  %101 = load %struct.atmel_tc*, %struct.atmel_tc** %15, align 8
  %102 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = shl i64 %100, %105
  store i64 %106, i64* %22, align 8
  %107 = load i64, i64* %22, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %89
  %112 = load i32, i32* @ERANGE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %204

114:                                              ; preds = %89
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i32, i32* %8, align 4
  %117 = load i64, i64* %21, align 8
  %118 = call i8* @div_u64(i32 %116, i64 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i64, i64* %21, align 8
  %122 = call i8* @div_u64(i32 %120, i64 %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %115
  %127 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %10, align 8
  %128 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %127, i32 0, i32 0
  %129 = load %struct.atmel_tcb_pwm_device**, %struct.atmel_tcb_pwm_device*** %128, align 8
  %130 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %131 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %129, i64 %134
  %136 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %135, align 8
  store %struct.atmel_tcb_pwm_device* %136, %struct.atmel_tcb_pwm_device** %14, align 8
  br label %148

137:                                              ; preds = %115
  %138 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %10, align 8
  %139 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %138, i32 0, i32 0
  %140 = load %struct.atmel_tcb_pwm_device**, %struct.atmel_tcb_pwm_device*** %139, align 8
  %141 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %142 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %140, i64 %145
  %147 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %146, align 8
  store %struct.atmel_tcb_pwm_device* %147, %struct.atmel_tcb_pwm_device** %14, align 8
  br label %148

148:                                              ; preds = %137, %126
  %149 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %150 = icmp ne %struct.atmel_tcb_pwm_device* %149, null
  br i1 %150, label %151, label %184

151:                                              ; preds = %148
  %152 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %153 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %158 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %161 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %156
  %165 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %166 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %164
  %171 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %14, align 8
  %172 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %18, align 4
  %175 = zext i32 %174 to i64
  %176 = icmp ne i64 %173, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %170, %164
  %178 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %179 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_err(i32 %180, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %204

184:                                              ; preds = %170, %156, %151, %148
  %185 = load i32, i32* %18, align 4
  %186 = zext i32 %185 to i64
  %187 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %11, align 8
  %188 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %11, align 8
  %191 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %19, align 4
  %193 = zext i32 %192 to i64
  %194 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %11, align 8
  %195 = getelementptr inbounds %struct.atmel_tcb_pwm_device, %struct.atmel_tcb_pwm_device* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %197 = call i64 @pwm_is_enabled(%struct.pwm_device* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %184
  %200 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %201 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %202 = call i32 @atmel_tcb_pwm_enable(%struct.pwm_chip* %200, %struct.pwm_device* %201)
  br label %203

203:                                              ; preds = %199, %184
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %203, %177, %111
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.atmel_tcb_pwm_chip* @to_tcb_chip(%struct.pwm_chip*) #1

declare dso_local %struct.atmel_tcb_pwm_device* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i8* @div_u64(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @atmel_tcb_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
