; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_get_i915_syms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_get_i915_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i8*, i8*, i8*, i8*, i8* }

@i915_read_mch_val = common dso_local global i32 0, align 4
@i915_gpu_raise = common dso_local global i32 0, align 4
@i915_gpu_lower = common dso_local global i32 0, align 4
@i915_gpu_busy = common dso_local global i32 0, align 4
@i915_gpu_turbo_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*)* @ips_get_i915_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_get_i915_syms(%struct.ips_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ips_driver*, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %3, align 8
  %4 = load i32, i32* @i915_read_mch_val, align 4
  %5 = call i8* @symbol_get(i32 %4)
  %6 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %7 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %6, i32 0, i32 4
  store i8* %5, i8** %7, align 8
  %8 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %9 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  %14 = load i32, i32* @i915_gpu_raise, align 4
  %15 = call i8* @symbol_get(i32 %14)
  %16 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %17 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %19 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %63

23:                                               ; preds = %13
  %24 = load i32, i32* @i915_gpu_lower, align 4
  %25 = call i8* @symbol_get(i32 %24)
  %26 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %27 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %29 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %60

33:                                               ; preds = %23
  %34 = load i32, i32* @i915_gpu_busy, align 4
  %35 = call i8* @symbol_get(i32 %34)
  %36 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %37 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %39 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %57

43:                                               ; preds = %33
  %44 = load i32, i32* @i915_gpu_turbo_disable, align 4
  %45 = call i8* @symbol_get(i32 %44)
  %46 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %47 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %49 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %54

53:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %67

54:                                               ; preds = %52
  %55 = load i32, i32* @i915_gpu_busy, align 4
  %56 = call i32 @symbol_put(i32 %55)
  br label %57

57:                                               ; preds = %54, %42
  %58 = load i32, i32* @i915_gpu_lower, align 4
  %59 = call i32 @symbol_put(i32 %58)
  br label %60

60:                                               ; preds = %57, %32
  %61 = load i32, i32* @i915_gpu_raise, align 4
  %62 = call i32 @symbol_put(i32 %61)
  br label %63

63:                                               ; preds = %60, %22
  %64 = load i32, i32* @i915_read_mch_val, align 4
  %65 = call i32 @symbol_put(i32 %64)
  br label %66

66:                                               ; preds = %63, %12
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @symbol_get(i32) #1

declare dso_local i32 @symbol_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
