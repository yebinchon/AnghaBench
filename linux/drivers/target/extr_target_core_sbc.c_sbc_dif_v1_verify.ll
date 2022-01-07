; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_dif_v1_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_dif_v1_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64 }
%struct.t10_pi_tuple = type { i64, i32 }

@TARGET_DIF_CHECK_GUARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"DIFv1 checksum failed on sector %llu guard tag 0x%04x csum 0x%04x\0A\00", align 1
@TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@TARGET_DIF_CHECK_REFTAG = common dso_local global i32 0, align 4
@TARGET_DIF_TYPE1_PROT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"DIFv1 Type 1 reference failed on sector: %llu tag: 0x%08x sector MSB: 0x%08x\0A\00", align 1
@TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED = common dso_local global i32 0, align 4
@TARGET_DIF_TYPE2_PROT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"DIFv1 Type 2 reference failed on sector: %llu tag: 0x%08x ei_lba: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.t10_pi_tuple*, i32, i32, i32)* @sbc_dif_v1_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_dif_v1_verify(%struct.se_cmd* %0, %struct.t10_pi_tuple* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.t10_pi_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.t10_pi_tuple* %1, %struct.t10_pi_tuple** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TARGET_DIF_CHECK_GUARD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %40

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %24 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %32 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @be16_to_cpu(i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @be16_to_cpu(i64 %35)
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %34, i32 %36)
  %38 = load i32, i32* @TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED, align 4
  store i32 %38, i32* %6, align 4
  br label %95

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TARGET_DIF_CHECK_REFTAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %95

48:                                               ; preds = %40
  %49 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TARGET_DIF_TYPE1_PROT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %56 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %65 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %67, i32 %68)
  %70 = load i32, i32* @TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED, align 4
  store i32 %70, i32* %6, align 4
  br label %95

71:                                               ; preds = %54, %48
  %72 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TARGET_DIF_TYPE2_PROT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %79 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @be32_to_cpu(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %8, align 8
  %88 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @be32_to_cpu(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %86, i32 %90, i32 %91)
  %93 = load i32, i32* @TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED, align 4
  store i32 %93, i32* %6, align 4
  br label %95

94:                                               ; preds = %77, %71
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %84, %61, %47, %28
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
