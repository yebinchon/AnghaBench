; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_gpu_turbo_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_gpu_turbo_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i32 }

@late_i915_load = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"i915 driver attached, reenabling gpu turbo\0A\00", align 1
@THM_HTS = common dso_local global i32 0, align 4
@HTS_GTD_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*)* @ips_gpu_turbo_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_gpu_turbo_enabled(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %3 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %4 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @late_i915_load, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %12 = call i64 @ips_get_i915_syms(%struct.ips_driver* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %16 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @THM_HTS, align 4
  %20 = call i32 @thm_readl(i32 %19)
  %21 = load i32, i32* @HTS_GTD_DIS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %27 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %14, %10
  br label %29

29:                                               ; preds = %28, %7, %1
  %30 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

declare dso_local i64 @ips_get_i915_syms(%struct.ips_driver*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @thm_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
