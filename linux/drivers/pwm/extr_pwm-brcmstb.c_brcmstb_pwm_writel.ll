; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_pwm = type { i64 }

@CONFIG_MIPS = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_pwm*, i32, i32)* @brcmstb_pwm_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_pwm_writel(%struct.brcmstb_pwm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmstb_pwm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmstb_pwm* %0, %struct.brcmstb_pwm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @CONFIG_MIPS, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %17 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @__raw_writel(i32 %15, i64 %21)
  br label %32

23:                                               ; preds = %10, %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %26 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel_relaxed(i32 %24, i64 %30)
  br label %32

32:                                               ; preds = %23, %14
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
