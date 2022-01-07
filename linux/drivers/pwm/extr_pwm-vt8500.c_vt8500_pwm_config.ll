; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.vt8500_chip = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STATUS_SCALAR_UPDATE = common dso_local global i32 0, align 4
@STATUS_PERIOD_UPDATE = common dso_local global i32 0, align 4
@STATUS_DUTY_UPDATE = common dso_local global i32 0, align 4
@CTRL_AUTOLOAD = common dso_local global i64 0, align 8
@STATUS_CTRL_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @vt8500_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vt8500_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip* %18)
  store %struct.vt8500_chip* %19, %struct.vt8500_chip** %10, align 8
  %20 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %21 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_enable(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %28 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %158

32:                                               ; preds = %4
  %33 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %34 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @clk_get_rate(i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @do_div(i64 %41, i32 1000000000)
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i64 1, i64* %12, align 8
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %48, 1
  %50 = udiv i64 %49, 4096
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %52, 1
  %54 = udiv i64 %51, %53
  %55 = sub i64 %54, 1
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp ugt i64 %56, 4095
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i64 4095, i64* %14, align 8
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i64, i64* %13, align 8
  %61 = icmp ugt i64 %60, 1023
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %64 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_disable(i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %158

69:                                               ; preds = %59
  %70 = load i64, i64* %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %70, %72
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @do_div(i64 %74, i32 %75)
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %80 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %83 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @REG_SCALAR(i32 %84)
  %86 = add nsw i64 %81, %85
  %87 = call i32 @writel(i64 %78, i64 %86)
  %88 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %89 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %90 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @STATUS_SCALAR_UPDATE, align 4
  %93 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %88, i32 %91, i32 %92)
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %96 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %99 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @REG_PERIOD(i32 %100)
  %102 = add nsw i64 %97, %101
  %103 = call i32 @writel(i64 %94, i64 %102)
  %104 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %105 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %106 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @STATUS_PERIOD_UPDATE, align 4
  %109 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %104, i32 %107, i32 %108)
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %112 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %115 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @REG_DUTY(i32 %116)
  %118 = add nsw i64 %113, %117
  %119 = call i32 @writel(i64 %110, i64 %118)
  %120 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %121 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %122 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @STATUS_DUTY_UPDATE, align 4
  %125 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %120, i32 %123, i32 %124)
  %126 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %127 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %130 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @REG_CTRL(i32 %131)
  %133 = add nsw i64 %128, %132
  %134 = call i64 @readl(i64 %133)
  store i64 %134, i64* %17, align 8
  %135 = load i64, i64* @CTRL_AUTOLOAD, align 8
  %136 = load i64, i64* %17, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %17, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %140 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %143 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @REG_CTRL(i32 %144)
  %146 = add nsw i64 %141, %145
  %147 = call i32 @writel(i64 %138, i64 %146)
  %148 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %149 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %150 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @STATUS_CTRL_UPDATE, align 4
  %153 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %148, i32 %151, i32 %152)
  %154 = load %struct.vt8500_chip*, %struct.vt8500_chip** %10, align 8
  %155 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_disable(i32 %156)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %69, %62, %26
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @REG_SCALAR(i32) #1

declare dso_local i32 @pwm_busy_wait(%struct.vt8500_chip*, i32, i32) #1

declare dso_local i64 @REG_PERIOD(i32) #1

declare dso_local i64 @REG_DUTY(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @REG_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
