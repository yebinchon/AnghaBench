; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_start_no_stash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_start_no_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_eqcr_entry = type { i32 }
%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i32, %struct.qm_eqcr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qm_eqcr_entry* (%struct.qm_portal*)* @qm_eqcr_start_no_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qm_eqcr_entry* @qm_eqcr_start_no_stash(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_eqcr_entry*, align 8
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_eqcr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 0
  store %struct.qm_eqcr* %6, %struct.qm_eqcr** %4, align 8
  %7 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %8 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @DPAA_ASSERT(i32 %12)
  %14 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %15 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.qm_eqcr_entry* null, %struct.qm_eqcr_entry** %2, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %21 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %20, i32 0, i32 1
  %22 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %21, align 8
  %23 = call i32 @dpaa_zero(%struct.qm_eqcr_entry* %22)
  %24 = load %struct.qm_eqcr*, %struct.qm_eqcr** %4, align 8
  %25 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %24, i32 0, i32 1
  %26 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %25, align 8
  store %struct.qm_eqcr_entry* %26, %struct.qm_eqcr_entry** %2, align 8
  br label %27

27:                                               ; preds = %19, %18
  %28 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %2, align 8
  ret %struct.qm_eqcr_entry* %28
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dpaa_zero(%struct.qm_eqcr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
