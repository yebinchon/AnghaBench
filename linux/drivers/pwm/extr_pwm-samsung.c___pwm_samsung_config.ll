; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c___pwm_samsung_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c___pwm_samsung_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.samsung_pwm_chip = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_pwm_channel = type { i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"duty_ns=%d, period_ns=%d (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tin_rate=%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tin_ns=%u, tcmp=%u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Forcing manual update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32, i32)* @__pwm_samsung_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pwm_samsung_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwm_chip*, align 8
  %8 = alloca %struct.pwm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.samsung_pwm_chip*, align 8
  %13 = alloca %struct.samsung_pwm_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %7, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %21 = call %struct.samsung_pwm_chip* @to_samsung_pwm_chip(%struct.pwm_chip* %20)
  store %struct.samsung_pwm_chip* %21, %struct.samsung_pwm_chip** %12, align 8
  %22 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %23 = call %struct.samsung_pwm_channel* @pwm_get_chip_data(%struct.pwm_device* %22)
  store %struct.samsung_pwm_channel* %23, %struct.samsung_pwm_channel** %13, align 8
  %24 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %13, align 8
  %25 = getelementptr inbounds %struct.samsung_pwm_channel, %struct.samsung_pwm_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %166

33:                                               ; preds = %5
  %34 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %35 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @REG_TCNTB(i32 %39)
  %41 = add nsw i64 %36, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %44 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %47 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @REG_TCMPB(i32 %48)
  %50 = add nsw i64 %45, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  %54 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %13, align 8
  %55 = getelementptr inbounds %struct.samsung_pwm_channel, %struct.samsung_pwm_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %33
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %59, %33
  %63 = load i32, i32* @NSEC_PER_SEC, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %19, align 4
  %66 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %67 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %19, align 4
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %75 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %76 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i64 @pwm_samsung_calc_tin(%struct.samsung_pwm_chip* %74, i32 %77, i32 %78)
  store i64 %79, i64* %18, align 8
  %80 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %81 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %18, align 8
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @NSEC_PER_SEC, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %18, align 8
  %89 = udiv i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %62, %59
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ERANGE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %166

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %16, align 4
  %117 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %118 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 (i32, i8*, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %127 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %130 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @REG_TCNTB(i32 %131)
  %133 = add nsw i64 %128, %132
  %134 = call i32 @writel(i32 %125, i64 %133)
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %137 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %140 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @REG_TCMPB(i32 %141)
  %143 = add nsw i64 %138, %142
  %144 = call i32 @writel(i32 %135, i64 %143)
  %145 = load i32, i32* %17, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %156

147:                                              ; preds = %109
  %148 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %149 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @dev_dbg(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %12, align 8
  %154 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %155 = call i32 @pwm_samsung_manual_update(%struct.samsung_pwm_chip* %153, %struct.pwm_device* %154)
  br label %156

156:                                              ; preds = %147, %109
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %13, align 8
  %159 = getelementptr inbounds %struct.samsung_pwm_channel, %struct.samsung_pwm_channel* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %13, align 8
  %162 = getelementptr inbounds %struct.samsung_pwm_channel, %struct.samsung_pwm_channel* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %13, align 8
  %165 = getelementptr inbounds %struct.samsung_pwm_channel, %struct.samsung_pwm_channel* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %156, %97, %30
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.samsung_pwm_chip* @to_samsung_pwm_chip(%struct.pwm_chip*) #1

declare dso_local %struct.samsung_pwm_channel* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_TCNTB(i32) #1

declare dso_local i64 @REG_TCMPB(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @pwm_samsung_calc_tin(%struct.samsung_pwm_chip*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pwm_samsung_manual_update(%struct.samsung_pwm_chip*, %struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
