; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_pwm = type { i64 }

@CONFIG_MIPS = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_pwm*, i32)* @brcmstb_pwm_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_pwm_readl(%struct.brcmstb_pwm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmstb_pwm*, align 8
  %5 = alloca i32, align 4
  store %struct.brcmstb_pwm* %0, %struct.brcmstb_pwm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @CONFIG_MIPS, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %15 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %9, %2
  %22 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %23 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
