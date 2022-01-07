; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.TYPE_2__, %struct.qm_eqcr }
%struct.TYPE_2__ = type { i64 }
%struct.qm_eqcr = type { i32, i32, i32, i64, i64, i32, i64, i64 }

@QM_CL_EQCR = common dso_local global i64 0, align 8
@QM_REG_EQCR_CI_CINH = common dso_local global i32 0, align 4
@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@QM_CL_EQCR_CI_CENA = common dso_local global i32 0, align 4
@QM_REG_EQCR_PI_CINH = common dso_local global i32 0, align 4
@QM_EQCR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_REG_EQCR_ITR = common dso_local global i32 0, align 4
@QM_REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, i32, i32, i32)* @qm_eqcr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_eqcr_init(%struct.qm_portal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qm_portal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qm_eqcr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %13 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %12, i32 0, i32 1
  store %struct.qm_eqcr* %13, %struct.qm_eqcr** %9, align 8
  %14 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %15 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QM_CL_EQCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %21 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %20, i32 0, i32 6
  store i64 %19, i64* %21, align 8
  %22 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %23 = load i32, i32* @QM_REG_EQCR_CI_CINH, align 4
  %24 = call i32 @qm_in(%struct.qm_portal* %22, i32 %23)
  %25 = load i32, i32* @QM_EQCR_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  %28 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %29 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %31 = load i32, i32* @QM_CL_EQCR_CI_CENA, align 4
  %32 = call i32 @qm_cl_invalidate(%struct.qm_portal* %30, i32 %31)
  %33 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %34 = load i32, i32* @QM_REG_EQCR_PI_CINH, align 4
  %35 = call i32 @qm_in(%struct.qm_portal* %33, i32 %34)
  %36 = load i32, i32* @QM_EQCR_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %40 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %46 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %45, i32 0, i32 7
  store i64 %44, i64* %46, align 8
  %47 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %48 = load i32, i32* @QM_REG_EQCR_PI_CINH, align 4
  %49 = call i32 @qm_in(%struct.qm_portal* %47, i32 %48)
  %50 = load i32, i32* @QM_EQCR_SIZE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @QM_EQCR_VERB_VBIT, align 4
  br label %56

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %59 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @QM_EQCR_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* @QM_EQCR_SIZE, align 4
  %64 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %65 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @dpaa_cyc_diff(i32 %63, i32 %66, i32 %67)
  %69 = sub nsw i64 %62, %68
  %70 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %71 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %73 = load i32, i32* @QM_REG_EQCR_ITR, align 4
  %74 = call i32 @qm_in(%struct.qm_portal* %72, i32 %73)
  %75 = load %struct.qm_eqcr*, %struct.qm_eqcr** %9, align 8
  %76 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %78 = load i32, i32* @QM_REG_CFG, align 4
  %79 = call i32 @qm_in(%struct.qm_portal* %77, i32 %78)
  %80 = and i32 %79, 16777215
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 28
  %83 = or i32 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 26
  %86 = or i32 %83, %85
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 3
  %89 = shl i32 %88, 24
  %90 = or i32 %86, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %92 = load i32, i32* @QM_REG_CFG, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @qm_out(%struct.qm_portal* %91, i32 %92, i32 %93)
  ret i32 0
}

declare dso_local i32 @qm_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @qm_cl_invalidate(%struct.qm_portal*, i32) #1

declare dso_local i64 @dpaa_cyc_diff(i32, i32, i32) #1

declare dso_local i32 @qm_out(%struct.qm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
