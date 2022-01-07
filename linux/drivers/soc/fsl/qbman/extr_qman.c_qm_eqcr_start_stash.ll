; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_start_stash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_start_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_eqcr_entry = type { i32 }
%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i32, i32, i32, %struct.qm_eqcr_entry* }

@QM_CL_EQCR_CI_CENA = common dso_local global i32 0, align 4
@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qm_eqcr_entry* (%struct.qm_portal*)* @qm_eqcr_start_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qm_eqcr_entry* @qm_eqcr_start_stash(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_eqcr_entry*, align 8
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_eqcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %7 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %8 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %7, i32 0, i32 0
  store %struct.qm_eqcr* %8, %struct.qm_eqcr** %4, align 8
  %9 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %10 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @DPAA_ASSERT(i32 %14)
  %16 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %17 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %1
  %21 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %22 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %25 = load i32, i32* @QM_CL_EQCR_CI_CENA, align 4
  %26 = call i32 @qm_ce_in(%struct.qm_portal* %24, i32 %25)
  %27 = load i32, i32* @QM_EQCR_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %31 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @QM_EQCR_SIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %35 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dpaa_cyc_diff(i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %40 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %20
  store %struct.qm_eqcr_entry* null, %struct.qm_eqcr_entry** %2, align 8
  br label %55

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %49 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %48, i32 0, i32 3
  %50 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %49, align 8
  %51 = call i32 @dpaa_zero(%struct.qm_eqcr_entry* %50)
  %52 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %53 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %52, i32 0, i32 3
  %54 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %53, align 8
  store %struct.qm_eqcr_entry* %54, %struct.qm_eqcr_entry** %2, align 8
  br label %55

55:                                               ; preds = %47, %45
  %56 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %2, align 8
  ret %struct.qm_eqcr_entry* %56
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @qm_ce_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @dpaa_cyc_diff(i32, i32, i32) #1

declare dso_local i32 @dpaa_zero(%struct.qm_eqcr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
