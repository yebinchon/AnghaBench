; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_detect_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_detect_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ips_mcp_limits = type { i32 }
%struct.ips_driver = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Non-IPS CPU detected.\0A\00", align 1
@IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@IA32_MISC_TURBO_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CPU       M\00", align 1
@ips_sv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"CPU       L\00", align 1
@ips_lv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"CPU       U\00", align 1
@ips_ulv_limits = common dso_local global %struct.ips_mcp_limits zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"No CPUID match found.\0A\00", align 1
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDP_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"CPU TDP doesn't match expected value (found %d, expected %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ips_mcp_limits* (%struct.ips_driver*)* @ips_detect_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ips_mcp_limits* @ips_detect_cpu(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_mcp_limits*, align 8
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ips_mcp_limits*, align 8
  %7 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %3, align 8
  store %struct.ips_mcp_limits* null, %struct.ips_mcp_limits** %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %15 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_info(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.ips_mcp_limits* null, %struct.ips_mcp_limits** %2, align 8
  br label %86

18:                                               ; preds = %10
  %19 = load i32, i32* @IA32_MISC_ENABLE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rdmsrl(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IA32_MISC_TURBO_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %28 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %34 = call i64 @strstr(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.ips_mcp_limits* @ips_sv_limits, %struct.ips_mcp_limits** %6, align 8
  br label %54

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %39 = call i64 @strstr(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.ips_mcp_limits* @ips_lv_limits, %struct.ips_mcp_limits** %6, align 8
  br label %53

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %44 = call i64 @strstr(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.ips_mcp_limits* @ips_ulv_limits, %struct.ips_mcp_limits** %6, align 8
  br label %52

47:                                               ; preds = %42
  %48 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %49 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_info(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store %struct.ips_mcp_limits* null, %struct.ips_mcp_limits** %2, align 8
  br label %86

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rdmsrl(i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TURBO_TDP_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %6, align 8
  %62 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sdiv i32 %64, 8
  %66 = mul nsw i32 %65, 1000
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %54
  %69 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %70 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %72, 8
  %74 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %6, align 8
  %75 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 1000
  %78 = call i32 (i32, i8*, ...) @dev_info(i32 %71, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %79, 8
  %81 = mul nsw i32 %80, 1000
  %82 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %6, align 8
  %83 = getelementptr inbounds %struct.ips_mcp_limits, %struct.ips_mcp_limits* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %68, %54
  %85 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %6, align 8
  store %struct.ips_mcp_limits* %85, %struct.ips_mcp_limits** %2, align 8
  br label %86

86:                                               ; preds = %84, %47, %13
  %87 = load %struct.ips_mcp_limits*, %struct.ips_mcp_limits** %2, align 8
  ret %struct.ips_mcp_limits* %87
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
