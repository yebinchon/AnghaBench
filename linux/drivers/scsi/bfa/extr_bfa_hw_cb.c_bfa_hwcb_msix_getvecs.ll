; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_msix_getvecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_msix_getvecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }

@__HFN_INT_CPE_Q0 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q1 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q2 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q3 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q0 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q1 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q2 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q3 = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU0 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q4 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q5 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q6 = common dso_local global i32 0, align 4
@__HFN_INT_CPE_Q7 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q4 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q5 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q6 = common dso_local global i32 0, align 4
@__HFN_INT_RME_Q7 = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU1 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_EMC = common dso_local global i32 0, align 4
@__HFN_INT_ERR_LPU0 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_LPU1 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_PSS = common dso_local global i32 0, align 4
@__HFN_NUMINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_hwcb_msix_getvecs(%struct.bfa_s* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %9, i32 0, i32 0
  %11 = call i64 @bfa_ioc_pcifn(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %4
  %14 = load i32, i32* @__HFN_INT_CPE_Q0, align 4
  %15 = load i32, i32* @__HFN_INT_CPE_Q1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @__HFN_INT_CPE_Q2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @__HFN_INT_CPE_Q3, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @__HFN_INT_RME_Q0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @__HFN_INT_RME_Q1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @__HFN_INT_RME_Q2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @__HFN_INT_RME_Q3, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @__HFN_INT_MBOX_LPU0, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @__HFN_INT_MBOX_LPU0, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %55

34:                                               ; preds = %4
  %35 = load i32, i32* @__HFN_INT_CPE_Q4, align 4
  %36 = load i32, i32* @__HFN_INT_CPE_Q5, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @__HFN_INT_CPE_Q6, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @__HFN_INT_CPE_Q7, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @__HFN_INT_RME_Q4, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @__HFN_INT_RME_Q5, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @__HFN_INT_RME_Q6, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @__HFN_INT_RME_Q7, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @__HFN_INT_MBOX_LPU1, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @__HFN_INT_MBOX_LPU1, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %34, %13
  %56 = load i32, i32* @__HFN_INT_ERR_EMC, align 4
  %57 = load i32, i32* @__HFN_INT_ERR_LPU0, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @__HFN_INT_ERR_LPU1, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @__HFN_INT_ERR_PSS, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 13, i32* %66, align 4
  ret void
}

declare dso_local i64 @bfa_ioc_pcifn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
