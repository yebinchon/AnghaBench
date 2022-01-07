; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pwm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i64 }
%struct.meson_pwm_channel = type { i32, i32, i32, i32 }

@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"invalid source clock frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fin_freq: %lu Hz\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MISC_CLK_DIV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to get period pre_div\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to get period cnt\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"period=%u pre_div=%u cnt=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to get duty cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"duty=%u pre_div=%u duty_cnt=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pwm*, %struct.pwm_device*, %struct.pwm_state*)* @meson_pwm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_calc(%struct.meson_pwm* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pwm*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.meson_pwm_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.meson_pwm* %0, %struct.meson_pwm** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %15 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %16 = call %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device* %15)
  store %struct.meson_pwm_channel* %16, %struct.meson_pwm_channel** %8, align 8
  store i64 -1, i64* %14, align 8
  %17 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %24 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %34 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @clk_get_rate(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %41 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %170

47:                                               ; preds = %32
  %48 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %49 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = mul i64 %55, %57
  %59 = load i32, i32* @NSEC_PER_SEC, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, 65535
  %62 = trunc i64 %61 to i32
  %63 = call i32 @div64_u64(i64 %58, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MISC_CLK_DIV_MASK, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %69 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %170

75:                                               ; preds = %47
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = load i32, i32* @NSEC_PER_SEC, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  %83 = mul i32 %80, %82
  %84 = call i32 @div64_u64(i64 %79, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ugt i32 %85, 65535
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %89 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %170

95:                                               ; preds = %75
  %96 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %97 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %110 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %113 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %115 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %114, i32 0, i32 2
  store i32 0, i32* %115, align 4
  br label %169

116:                                              ; preds = %95
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %122 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %124 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %127 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %168

128:                                              ; preds = %116
  %129 = load i64, i64* %14, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = load i32, i32* @NSEC_PER_SEC, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %134, 1
  %136 = mul i32 %133, %135
  %137 = call i32 @div64_u64(i64 %132, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ugt i32 %138, 65535
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %142 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %170

148:                                              ; preds = %128
  %149 = load %struct.meson_pwm*, %struct.meson_pwm** %5, align 8
  %150 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %159 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %162 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %13, align 4
  %165 = sub i32 %163, %164
  %166 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %167 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %148, %119
  br label %169

169:                                              ; preds = %168, %107
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %140, %87, %67, %39
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @div64_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
