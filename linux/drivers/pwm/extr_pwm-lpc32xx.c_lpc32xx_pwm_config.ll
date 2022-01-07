; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc32xx.c_lpc32xx_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc32xx.c_lpc32xx_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lpc32xx_pwm_chip = type { i64, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @lpc32xx_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpc32xx_pwm_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %16 = call %struct.lpc32xx_pwm_chip* @to_lpc32xx_pwm_chip(%struct.pwm_chip* %15)
  store %struct.lpc32xx_pwm_chip* %16, %struct.lpc32xx_pwm_chip** %10, align 8
  %17 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %10, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @clk_get_rate(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  %25 = load i64, i64* @NSEC_PER_SEC, align 8
  %26 = mul i64 %25, 256
  %27 = trunc i64 %26 to i32
  %28 = call i32 @div64_u64(i64 %24, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 256
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 256
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @div64_u64(i64 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 255, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %10, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %61 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %59, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, -65536
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.lpc32xx_pwm_chip*, %struct.lpc32xx_pwm_chip** %10, align 8
  %77 = getelementptr inbounds %struct.lpc32xx_pwm_chip, %struct.lpc32xx_pwm_chip* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %80 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %78, %83
  %85 = call i32 @writel(i32 %75, i64 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %56, %34
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.lpc32xx_pwm_chip* @to_lpc32xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @div64_u64(i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
