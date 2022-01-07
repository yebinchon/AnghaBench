; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_set_hold_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_set_hold_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.stm32_rproc* }
%struct.stm32_rproc = type { i64, %struct.stm32_syscon }
%struct.stm32_syscon = type { i32, i32, i32 }
%struct.arm_smccc_res = type { i32 }

@HOLD_BOOT = common dso_local global i32 0, align 4
@RELEASE_BOOT = common dso_local global i32 0, align 4
@CONFIG_HAVE_ARM_SMCCC = common dso_local global i32 0, align 4
@STM32_SMC_RCC = common dso_local global i32 0, align 4
@STM32_SMC_REG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to set hold boot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, i32)* @stm32_rproc_set_hold_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_set_hold_boot(%struct.rproc* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_rproc*, align 8
  %6 = alloca %struct.stm32_syscon, align 4
  %7 = alloca %struct.arm_smccc_res, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rproc*, %struct.rproc** %3, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 1
  %12 = load %struct.stm32_rproc*, %struct.stm32_rproc** %11, align 8
  store %struct.stm32_rproc* %12, %struct.stm32_rproc** %5, align 8
  %13 = load %struct.stm32_rproc*, %struct.stm32_rproc** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %13, i32 0, i32 1
  %15 = bitcast %struct.stm32_syscon* %6 to i8*
  %16 = bitcast %struct.stm32_syscon* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 12, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HOLD_BOOT, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @RELEASE_BOOT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @CONFIG_HAVE_ARM_SMCCC, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.stm32_rproc*, %struct.stm32_rproc** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* @STM32_SMC_RCC, align 4
  %35 = load i32, i32* @STM32_SMC_REG_WRITE, align 4
  %36 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @arm_smccc_smc(i32 %34, i32 %35, i32 %37, i32 %38, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %7)
  %40 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %28, %23
  %43 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @regmap_update_bits(i32 %44, i32 %46, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.rproc*, %struct.rproc** %3, align 8
  %56 = getelementptr inbounds %struct.rproc, %struct.rproc* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
