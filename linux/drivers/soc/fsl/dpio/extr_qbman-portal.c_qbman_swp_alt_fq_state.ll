; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_alt_fq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_alt_fq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }
%struct.qbman_alt_fq_state_desc = type { i32 }
%struct.qbman_alt_fq_state_rslt = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@ALT_FQ_FQID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"qbman: mgmt cmd failed, no response (verb=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QBMAN_RESULT_MASK = common dso_local global i32 0, align 4
@QBMAN_MC_RSLT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"qbman: ALT FQID %d failed: verb = 0x%08x code = 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_swp_alt_fq_state(%struct.qbman_swp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qbman_swp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qbman_alt_fq_state_desc*, align 8
  %9 = alloca %struct.qbman_alt_fq_state_rslt*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %11 = call %struct.qbman_alt_fq_state_desc* @qbman_swp_mc_start(%struct.qbman_swp* %10)
  store %struct.qbman_alt_fq_state_desc* %11, %struct.qbman_alt_fq_state_desc** %8, align 8
  %12 = load %struct.qbman_alt_fq_state_desc*, %struct.qbman_alt_fq_state_desc** %8, align 8
  %13 = icmp ne %struct.qbman_alt_fq_state_desc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ALT_FQ_FQID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.qbman_alt_fq_state_desc*, %struct.qbman_alt_fq_state_desc** %8, align 8
  %23 = getelementptr inbounds %struct.qbman_alt_fq_state_desc, %struct.qbman_alt_fq_state_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %25 = load %struct.qbman_alt_fq_state_desc*, %struct.qbman_alt_fq_state_desc** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.qbman_alt_fq_state_rslt* @qbman_swp_mc_complete(%struct.qbman_swp* %24, %struct.qbman_alt_fq_state_desc* %25, i32 %26)
  store %struct.qbman_alt_fq_state_rslt* %27, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %28 = load %struct.qbman_alt_fq_state_rslt*, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %29 = icmp ne %struct.qbman_alt_fq_state_rslt* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %17
  %40 = load %struct.qbman_alt_fq_state_rslt*, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %41 = getelementptr inbounds %struct.qbman_alt_fq_state_rslt, %struct.qbman_alt_fq_state_rslt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @QBMAN_RESULT_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.qbman_alt_fq_state_rslt*, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %50 = getelementptr inbounds %struct.qbman_alt_fq_state_rslt, %struct.qbman_alt_fq_state_rslt* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QBMAN_MC_RSLT_OK, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.qbman_alt_fq_state_rslt*, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %60 = getelementptr inbounds %struct.qbman_alt_fq_state_rslt, %struct.qbman_alt_fq_state_rslt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qbman_alt_fq_state_rslt*, %struct.qbman_alt_fq_state_rslt** %9, align 8
  %63 = getelementptr inbounds %struct.qbman_alt_fq_state_rslt, %struct.qbman_alt_fq_state_rslt* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i64 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %57, %34, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.qbman_alt_fq_state_desc* @qbman_swp_mc_start(%struct.qbman_swp*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.qbman_alt_fq_state_rslt* @qbman_swp_mc_complete(%struct.qbman_swp*, %struct.qbman_alt_fq_state_desc*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
