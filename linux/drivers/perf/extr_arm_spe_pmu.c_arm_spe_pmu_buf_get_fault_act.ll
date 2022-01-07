; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_buf_get_fault_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_buf_get_fault_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }

@nsh = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1 = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_S_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_BUF_FAULT_ACT_SPURIOUS = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_DL_SHIFT = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_PARTIAL = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_COLL_SHIFT = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_COLLISION = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_EC_MASK = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_EC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected buffer fault\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown error code\00", align 1
@SYS_PMBSR_EL1_BUF_BSC_MASK = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1_BUF_BSC_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_BUF_FAULT_ACT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown buffer status code\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"%s on CPU %d [PMBSR=0x%016llx, PMBPTR=0x%016llx, PMBLIMITR=0x%016llx]\0A\00", align 1
@SYS_PMBPTR_EL1 = common dso_local global i32 0, align 4
@SYS_PMBLIMITR_EL1 = common dso_local global i32 0, align 4
@SPE_PMU_BUF_FAULT_ACT_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_output_handle*)* @arm_spe_pmu_buf_get_fault_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_buf_get_fault_act(%struct.perf_output_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_output_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %3, align 8
  %7 = call i32 (...) @psb_csync()
  %8 = load i32, i32* @nsh, align 4
  %9 = call i32 @dsb(i32 %8)
  %10 = call i32 (...) @isb()
  %11 = load i32, i32* @SYS_PMBSR_EL1, align 4
  %12 = call i32 @read_sysreg_s(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SYS_PMBSR_EL1_S_SHIFT, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @SPE_PMU_BUF_FAULT_ACT_SPURIOUS, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SYS_PMBSR_EL1_DL_SHIFT, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %28 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %29 = load i32, i32* @PERF_AUX_FLAG_PARTIAL, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SYS_PMBSR_EL1_COLL_SHIFT, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %40 = load i32, i32* @PERF_AUX_FLAG_COLLISION, align 4
  %41 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SYS_PMBSR_EL1_EC_MASK, align 4
  %45 = load i32, i32* @SYS_PMBSR_EL1_EC_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = and i32 %43, %46
  switch i32 %47, label %50 [
    i32 130, label %48
    i32 129, label %49
    i32 128, label %49
  ]

48:                                               ; preds = %42
  br label %51

49:                                               ; preds = %42, %42
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %61

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SYS_PMBSR_EL1_BUF_BSC_MASK, align 4
  %54 = load i32, i32* @SYS_PMBSR_EL1_BUF_BSC_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = and i32 %52, %55
  switch i32 %56, label %59 [
    i32 131, label %57
  ]

57:                                               ; preds = %51
  %58 = load i32, i32* @SPE_PMU_BUF_FAULT_ACT_OK, align 4
  store i32 %58, i32* %6, align 4
  br label %71

59:                                               ; preds = %51
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %50, %49
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (...) @smp_processor_id()
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SYS_PMBPTR_EL1, align 4
  %66 = call i32 @read_sysreg_s(i32 %65)
  %67 = load i32, i32* @SYS_PMBLIMITR_EL1, align 4
  %68 = call i32 @read_sysreg_s(i32 %67)
  %69 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %63, i32 %64, i32 %66, i32 %68)
  %70 = load i32, i32* @SPE_PMU_BUF_FAULT_ACT_FATAL, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %57
  %72 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %73 = call i32 @arm_spe_perf_aux_output_end(%struct.perf_output_handle* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @psb_csync(...) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @read_sysreg_s(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @arm_spe_perf_aux_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
