; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.TYPE_2__, %struct.bm_rcr }
%struct.TYPE_2__ = type { i64 }
%struct.bm_rcr = type { i32, i32, i32, i32, i64, i64, i32, i64, i64 }

@BM_CL_RCR = common dso_local global i64 0, align 8
@BM_REG_RCR_CI_CINH = common dso_local global i32 0, align 4
@BM_RCR_SIZE = common dso_local global i32 0, align 4
@BM_REG_RCR_PI_CINH = common dso_local global i32 0, align 4
@BM_RCR_VERB_VBIT = common dso_local global i32 0, align 4
@BM_REG_RCR_ITR = common dso_local global i32 0, align 4
@BM_REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm_portal*, i32, i32)* @bm_rcr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm_rcr_init(%struct.bm_portal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bm_portal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bm_rcr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bm_portal* %0, %struct.bm_portal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %11 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %10, i32 0, i32 1
  store %struct.bm_rcr* %11, %struct.bm_rcr** %7, align 8
  %12 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %13 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BM_CL_RCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %19 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %18, i32 0, i32 7
  store i64 %17, i64* %19, align 8
  %20 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %21 = load i32, i32* @BM_REG_RCR_CI_CINH, align 4
  %22 = call i32 @bm_in(%struct.bm_portal* %20, i32 %21)
  %23 = load i32, i32* @BM_RCR_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %27 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %29 = load i32, i32* @BM_REG_RCR_PI_CINH, align 4
  %30 = call i32 @bm_in(%struct.bm_portal* %28, i32 %29)
  %31 = load i32, i32* @BM_RCR_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %35 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %41 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %40, i32 0, i32 8
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %43 = load i32, i32* @BM_REG_RCR_PI_CINH, align 4
  %44 = call i32 @bm_in(%struct.bm_portal* %42, i32 %43)
  %45 = load i32, i32* @BM_RCR_SIZE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @BM_RCR_VERB_VBIT, align 4
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %54 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @BM_RCR_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* @BM_RCR_SIZE, align 4
  %59 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %60 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @dpaa_cyc_diff(i32 %58, i32 %61, i32 %62)
  %64 = sub nsw i64 %57, %63
  %65 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %66 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %68 = load i32, i32* @BM_REG_RCR_ITR, align 4
  %69 = call i32 @bm_in(%struct.bm_portal* %67, i32 %68)
  %70 = load %struct.bm_rcr*, %struct.bm_rcr** %7, align 8
  %71 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %73 = load i32, i32* @BM_REG_CFG, align 4
  %74 = call i32 @bm_in(%struct.bm_portal* %72, i32 %73)
  %75 = and i32 %74, -32
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 3
  %78 = or i32 %75, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %80 = load i32, i32* @BM_REG_CFG, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @bm_out(%struct.bm_portal* %79, i32 %80, i32 %81)
  ret i32 0
}

declare dso_local i32 @bm_in(%struct.bm_portal*, i32) #1

declare dso_local i64 @dpaa_cyc_diff(i32, i32, i32) #1

declare dso_local i32 @bm_out(%struct.bm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
