; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_dqrr_pvb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_dqrr_pvb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_dqrr }
%struct.qm_dqrr = type { i32, i64, i32, i32, i32 }
%struct.qm_dqrr_entry = type { i32 }

@qm_dqrr_pvb = common dso_local global i64 0, align 8
@QM_DQRR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_DQRR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qm_dqrr_pvb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_dqrr_pvb_update(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_dqrr*, align 8
  %4 = alloca %struct.qm_dqrr_entry*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 0
  store %struct.qm_dqrr* %6, %struct.qm_dqrr** %3, align 8
  %7 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %8 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %11 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.qm_dqrr_entry* @qm_cl(i32 %9, i32 %12)
  store %struct.qm_dqrr_entry* %13, %struct.qm_dqrr_entry** %4, align 8
  %14 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %15 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @qm_dqrr_pvb, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @DPAA_ASSERT(i32 %19)
  %21 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %4, align 8
  %22 = call i32 @dpaa_invalidate_touch_ro(%struct.qm_dqrr_entry* %21)
  %23 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %4, align 8
  %24 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QM_DQRR_VERB_VBIT, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %29 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %1
  %33 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %34 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @QM_DQRR_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %41 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %43 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @QM_DQRR_VERB_VBIT, align 4
  %48 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %49 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = xor i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %32
  %53 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %54 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %1
  ret void
}

declare dso_local %struct.qm_dqrr_entry* @qm_cl(i32, i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dpaa_invalidate_touch_ro(%struct.qm_dqrr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
