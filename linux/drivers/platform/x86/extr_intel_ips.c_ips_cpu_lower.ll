; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_cpu_lower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_cpu_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32 }

@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDP_MASK = common dso_local global i32 0, align 4
@THM_MPCPC = common dso_local global i32 0, align 4
@TURBO_TDC_OVR_EN = common dso_local global i32 0, align 4
@TURBO_TDP_OVR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ips_driver*)* @ips_cpu_lower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_cpu_lower(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %6 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @rdmsrl(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TURBO_TDP_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %16 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TURBO_TDP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %23 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TURBO_TDP_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* @THM_MPCPC, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 10
  %31 = sdiv i32 %30, 8
  %32 = call i32 @thm_writew(i32 %28, i32 %31)
  %33 = load i32, i32* @TURBO_TDC_OVR_EN, align 4
  %34 = load i32, i32* @TURBO_TDP_OVR_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @wrmsrl(i32 %38, i32 %39)
  %41 = load i32, i32* @TURBO_TDP_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @wrmsrl(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @thm_writew(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
