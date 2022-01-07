; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i64, i32, i32 }

@QM_REG_EQCR_PI_CINH = common dso_local global i32 0, align 4
@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@QM_REG_EQCR_CI_CINH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"losing uncommitted EQCR entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"missing existing EQCR completions\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EQCR destroyed unquiesced\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qm_eqcr_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_eqcr_finish(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_eqcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_eqcr* %7, %struct.qm_eqcr** %3, align 8
  %8 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %9 = load i32, i32* @QM_REG_EQCR_PI_CINH, align 4
  %10 = call i32 @qm_in(%struct.qm_portal* %8, i32 %9)
  %11 = load i32, i32* @QM_EQCR_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %16 = load i32, i32* @QM_REG_EQCR_CI_CINH, align 4
  %17 = call i32 @qm_in(%struct.qm_portal* %15, i32 %16)
  %18 = load i32, i32* @QM_EQCR_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  %22 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %23 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @DPAA_ASSERT(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %31 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @eqcr_ptr2idx(i32 %32)
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %1
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %40 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %47 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %50 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @eqcr_ptr2idx(i32 %51)
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  ret void
}

declare dso_local i32 @qm_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i64 @eqcr_ptr2idx(i32) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
