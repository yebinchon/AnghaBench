; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.TYPE_2__, %struct.qm_mr }
%struct.TYPE_2__ = type { i64 }
%struct.qm_mr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@QM_CL_MR = common dso_local global i64 0, align 8
@QM_REG_MR_PI_CINH = common dso_local global i32 0, align 4
@QM_MR_SIZE = common dso_local global i32 0, align 4
@QM_REG_MR_CI_CINH = common dso_local global i32 0, align 4
@QM_MR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_REG_MR_ITR = common dso_local global i32 0, align 4
@QM_REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, i32, i32)* @qm_mr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_mr_init(%struct.qm_portal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qm_portal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qm_mr*, align 8
  %8 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %10 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %9, i32 0, i32 1
  store %struct.qm_mr* %10, %struct.qm_mr** %7, align 8
  %11 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %12 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QM_CL_MR, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %18 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %17, i32 0, i32 7
  store i64 %16, i64* %18, align 8
  %19 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %20 = load i32, i32* @QM_REG_MR_PI_CINH, align 4
  %21 = call i32 @qm_in(%struct.qm_portal* %19, i32 %20)
  %22 = load i32, i32* @QM_MR_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %26 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %28 = load i32, i32* @QM_REG_MR_CI_CINH, align 4
  %29 = call i32 @qm_in(%struct.qm_portal* %27, i32 %28)
  %30 = load i32, i32* @QM_MR_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %34 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %36 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %39 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %44 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @QM_MR_SIZE, align 4
  %46 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %47 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %50 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dpaa_cyc_diff(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %54 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %56 = load i32, i32* @QM_REG_MR_PI_CINH, align 4
  %57 = call i32 @qm_in(%struct.qm_portal* %55, i32 %56)
  %58 = load i32, i32* @QM_MR_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %3
  %62 = load i32, i32* @QM_MR_VERB_VBIT, align 4
  br label %64

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %67 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %69 = load i32, i32* @QM_REG_MR_ITR, align 4
  %70 = call i32 @qm_in(%struct.qm_portal* %68, i32 %69)
  %71 = load %struct.qm_mr*, %struct.qm_mr** %7, align 8
  %72 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %74 = load i32, i32* @QM_REG_CFG, align 4
  %75 = call i32 @qm_in(%struct.qm_portal* %73, i32 %74)
  %76 = and i32 %75, -3841
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 1
  %79 = shl i32 %78, 8
  %80 = or i32 %76, %79
  store i32 %80, i32* %8, align 4
  %81 = load %struct.qm_portal*, %struct.qm_portal** %4, align 8
  %82 = load i32, i32* @QM_REG_CFG, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @qm_out(%struct.qm_portal* %81, i32 %82, i32 %83)
  ret i32 0
}

declare dso_local i32 @qm_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @dpaa_cyc_diff(i32, i32, i32) #1

declare dso_local i32 @qm_out(%struct.qm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
