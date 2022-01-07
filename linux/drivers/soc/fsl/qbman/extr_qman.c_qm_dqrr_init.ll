; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_dqrr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_dqrr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.TYPE_2__, %struct.qm_dqrr }
%struct.TYPE_2__ = type { i64 }
%struct.qm_dqrr = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.qm_portal_config = type { i32 }

@QM_REG_DQRR_SDQCR = common dso_local global i32 0, align 4
@QM_REG_DQRR_VDQCR = common dso_local global i32 0, align 4
@QM_REG_DQRR_PDQCR = common dso_local global i32 0, align 4
@QM_CL_DQRR = common dso_local global i64 0, align 8
@QM_REG_DQRR_PI_CINH = common dso_local global i32 0, align 4
@QM_DQRR_SIZE = common dso_local global i32 0, align 4
@QM_REG_DQRR_CI_CINH = common dso_local global i32 0, align 4
@QM_DQRR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_REG_DQRR_ITR = common dso_local global i32 0, align 4
@QM_REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, %struct.qm_portal_config*, i32, i32, i32, i32)* @qm_dqrr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_dqrr_init(%struct.qm_portal* %0, %struct.qm_portal_config* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.qm_portal*, align 8
  %8 = alloca %struct.qm_portal_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qm_dqrr*, align 8
  %14 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %7, align 8
  store %struct.qm_portal_config* %1, %struct.qm_portal_config** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %16 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %15, i32 0, i32 1
  store %struct.qm_dqrr* %16, %struct.qm_dqrr** %13, align 8
  %17 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %18 = load i32, i32* @QM_REG_DQRR_SDQCR, align 4
  %19 = call i32 @qm_out(%struct.qm_portal* %17, i32 %18, i32 0)
  %20 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %21 = load i32, i32* @QM_REG_DQRR_VDQCR, align 4
  %22 = call i32 @qm_out(%struct.qm_portal* %20, i32 %21, i32 0)
  %23 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %24 = load i32, i32* @QM_REG_DQRR_PDQCR, align 4
  %25 = call i32 @qm_out(%struct.qm_portal* %23, i32 %24, i32 0)
  %26 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %27 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QM_CL_DQRR, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %33 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %32, i32 0, i32 6
  store i64 %31, i64* %33, align 8
  %34 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %35 = load i32, i32* @QM_REG_DQRR_PI_CINH, align 4
  %36 = call i32 @qm_in(%struct.qm_portal* %34, i32 %35)
  %37 = load i32, i32* @QM_DQRR_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %41 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %43 = load i32, i32* @QM_REG_DQRR_CI_CINH, align 4
  %44 = call i32 @qm_in(%struct.qm_portal* %42, i32 %43)
  %45 = load i32, i32* @QM_DQRR_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %49 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %51 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %54 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %59 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %58, i32 0, i32 9
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @QM_DQRR_SIZE, align 4
  %61 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %62 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %65 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dpaa_cyc_diff(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %69 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %71 = load i32, i32* @QM_REG_DQRR_PI_CINH, align 4
  %72 = call i32 @qm_in(%struct.qm_portal* %70, i32 %71)
  %73 = load i32, i32* @QM_DQRR_SIZE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %6
  %77 = load i32, i32* @QM_DQRR_VERB_VBIT, align 4
  br label %79

78:                                               ; preds = %6
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %82 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %84 = load i32, i32* @QM_REG_DQRR_ITR, align 4
  %85 = call i32 @qm_in(%struct.qm_portal* %83, i32 %84)
  %86 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %87 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %99, %79
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @QM_DQRR_SIZE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load %struct.qm_dqrr*, %struct.qm_dqrr** %13, align 8
  %94 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @qm_cl(i64 %95, i32 %96)
  %98 = call i32 @dpaa_invalidate(i32 %97)
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %88

102:                                              ; preds = %88
  %103 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %104 = load i32, i32* @QM_REG_CFG, align 4
  %105 = call i32 @qm_in(%struct.qm_portal* %103, i32 %104)
  %106 = and i32 %105, -16773376
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @QM_DQRR_SIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  %111 = shl i32 %110, 20
  %112 = or i32 %106, %111
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 1
  %115 = shl i32 %114, 18
  %116 = or i32 %112, %115
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 3
  %119 = shl i32 %118, 16
  %120 = or i32 %116, %119
  %121 = or i32 %120, 160
  store i32 %121, i32* %14, align 4
  %122 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %123 = load i32, i32* @QM_REG_CFG, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @qm_out(%struct.qm_portal* %122, i32 %123, i32 %124)
  %126 = load %struct.qm_portal*, %struct.qm_portal** %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @qm_dqrr_set_maxfill(%struct.qm_portal* %126, i32 %127)
  ret i32 0
}

declare dso_local i32 @qm_out(%struct.qm_portal*, i32, i32) #1

declare dso_local i32 @qm_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @dpaa_cyc_diff(i32, i32, i32) #1

declare dso_local i32 @dpaa_invalidate(i32) #1

declare dso_local i32 @qm_cl(i64, i32) #1

declare dso_local i32 @qm_dqrr_set_maxfill(%struct.qm_portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
