; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ips_driver = type { i32, i64, i64, i32, i64, i64, i64, i64, i64 }

@i915_read_mch_val = common dso_local global i32 0, align 4
@i915_gpu_raise = common dso_local global i32 0, align 4
@i915_gpu_lower = common dso_local global i32 0, align 4
@i915_gpu_busy = common dso_local global i32 0, align 4
@i915_gpu_turbo_disable = common dso_local global i32 0, align 4
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDC_OVR_EN = common dso_local global i32 0, align 4
@TURBO_TDP_OVR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IPS driver removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ips_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ips_driver* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ips_driver* %6, %struct.ips_driver** %3, align 8
  %7 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %8 = call i32 @ips_debugfs_cleanup(%struct.ips_driver* %7)
  %9 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %10 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @i915_read_mch_val, align 4
  %15 = call i32 @symbol_put(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %18 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @i915_gpu_raise, align 4
  %23 = call i32 @symbol_put(i32 %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %26 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @i915_gpu_lower, align 4
  %31 = call i32 @symbol_put(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %34 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @i915_gpu_busy, align 4
  %39 = call i32 @symbol_put(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %42 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @i915_gpu_turbo_disable, align 4
  %47 = call i32 @symbol_put(i32 %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rdmsrl(i32 %49, i32 %50)
  %52 = load i32, i32* @TURBO_TDC_OVR_EN, align 4
  %53 = load i32, i32* @TURBO_TDP_OVR_EN, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @wrmsrl(i32 %58, i32 %59)
  %61 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %62 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %63 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @wrmsrl(i32 %61, i32 %64)
  %66 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %67 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %70 = call i32 @free_irq(i32 %68, %struct.ips_driver* %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %71)
  %73 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %74 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %48
  %78 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %79 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @kthread_stop(i64 %80)
  br label %82

82:                                               ; preds = %77, %48
  %83 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %84 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %89 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @kthread_stop(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ips_driver* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ips_debugfs_cleanup(%struct.ips_driver*) #1

declare dso_local i32 @symbol_put(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ips_driver*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
