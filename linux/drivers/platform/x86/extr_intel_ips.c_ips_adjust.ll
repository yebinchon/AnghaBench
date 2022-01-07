; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"starting ips-adjust thread\0A\00", align 1
@IPS_ADJUST_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ips-adjust thread stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ips_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_adjust(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ips_driver*
  store %struct.ips_driver* %8, %struct.ips_driver** %3, align 8
  %9 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %10 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %95, %1
  %14 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %15 = call i32 @ips_cpu_busy(%struct.ips_driver* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %17 = call i32 @ips_gpu_busy(%struct.ips_driver* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %19 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %18, i32 0, i32 3
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %23 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %28 = call i32 @update_turbo_limits(%struct.ips_driver* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 3
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %35 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %40 = call i32 @ips_enable_cpu_turbo(%struct.ips_driver* %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %43 = call i32 @ips_disable_cpu_turbo(%struct.ips_driver* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %46 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %51 = call i32 @ips_enable_gpu_turbo(%struct.ips_driver* %50)
  br label %55

52:                                               ; preds = %44
  %53 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %54 = call i32 @ips_disable_gpu_turbo(%struct.ips_driver* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %57 = call i64 @mcp_exceeded(%struct.ips_driver* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %61 = call i32 @ips_cpu_lower(%struct.ips_driver* %60)
  %62 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %63 = call i32 @ips_gpu_lower(%struct.ips_driver* %62)
  br label %91

64:                                               ; preds = %55
  %65 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %66 = call i32 @cpu_exceeded(%struct.ips_driver* %65, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %73 = call i32 @ips_cpu_raise(%struct.ips_driver* %72)
  br label %77

74:                                               ; preds = %68, %64
  %75 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %76 = call i32 @ips_cpu_lower(%struct.ips_driver* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %79 = call i32 @mch_exceeded(%struct.ips_driver* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %86 = call i32 @ips_gpu_raise(%struct.ips_driver* %85)
  br label %90

87:                                               ; preds = %81, %77
  %88 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %89 = call i32 @ips_gpu_lower(%struct.ips_driver* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* @IPS_ADJUST_PERIOD, align 4
  %93 = call i32 @msecs_to_jiffies(i32 %92)
  %94 = call i32 @schedule_timeout_interruptible(i32 %93)
  br label %95

95:                                               ; preds = %91
  %96 = call i32 (...) @kthread_should_stop()
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %13, label %99

99:                                               ; preds = %95
  %100 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %101 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ips_cpu_busy(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_busy(%struct.ips_driver*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_turbo_limits(%struct.ips_driver*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ips_enable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_disable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_enable_gpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_disable_gpu_turbo(%struct.ips_driver*) #1

declare dso_local i64 @mcp_exceeded(%struct.ips_driver*) #1

declare dso_local i32 @ips_cpu_lower(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_lower(%struct.ips_driver*) #1

declare dso_local i32 @cpu_exceeded(%struct.ips_driver*, i32) #1

declare dso_local i32 @ips_cpu_raise(%struct.ips_driver*) #1

declare dso_local i32 @mch_exceeded(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_raise(%struct.ips_driver*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
