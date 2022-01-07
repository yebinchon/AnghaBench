; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_pvb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_pvb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_mr }
%struct.qm_mr = type { i32, i64, i32, i32, i32 }
%union.qm_mr_entry = type { i32 }

@qm_mr_pvb = common dso_local global i64 0, align 8
@QM_MR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_MR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qm_mr_pvb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_mr_pvb_update(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_mr*, align 8
  %4 = alloca %union.qm_mr_entry*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 0
  store %struct.qm_mr* %6, %struct.qm_mr** %3, align 8
  %7 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %8 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %11 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %union.qm_mr_entry* @qm_cl(i32 %9, i32 %12)
  store %union.qm_mr_entry* %13, %union.qm_mr_entry** %4, align 8
  %14 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %15 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @qm_mr_pvb, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @DPAA_ASSERT(i32 %19)
  %21 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %22 = bitcast %union.qm_mr_entry* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @QM_MR_VERB_VBIT, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %27 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %1
  %31 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %32 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @QM_MR_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %39 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %41 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @QM_MR_VERB_VBIT, align 4
  %46 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %47 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %30
  %51 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %52 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %56 = call %union.qm_mr_entry* @mr_inc(%union.qm_mr_entry* %55)
  store %union.qm_mr_entry* %56, %union.qm_mr_entry** %4, align 8
  br label %57

57:                                               ; preds = %50, %1
  %58 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %59 = call i32 @dpaa_invalidate_touch_ro(%union.qm_mr_entry* %58)
  ret void
}

declare dso_local %union.qm_mr_entry* @qm_cl(i32, i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local %union.qm_mr_entry* @mr_inc(%union.qm_mr_entry*) #1

declare dso_local i32 @dpaa_invalidate_touch_ro(%union.qm_mr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
