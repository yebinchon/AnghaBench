; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mr_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.qm_mr_entry = type { i32 }
%struct.qm_portal = type { %struct.qm_mr }
%struct.qm_mr = type { %union.qm_mr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.qm_mr_entry* (%struct.qm_portal*)* @qm_mr_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal* %0) #0 {
  %2 = alloca %union.qm_mr_entry*, align 8
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_mr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 0
  store %struct.qm_mr* %6, %struct.qm_mr** %4, align 8
  %7 = load %struct.qm_mr*, %struct.qm_mr** %4, align 8
  %8 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %union.qm_mr_entry* null, %union.qm_mr_entry** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.qm_mr*, %struct.qm_mr** %4, align 8
  %14 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %13, i32 0, i32 0
  %15 = load %union.qm_mr_entry*, %union.qm_mr_entry** %14, align 8
  store %union.qm_mr_entry* %15, %union.qm_mr_entry** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %union.qm_mr_entry*, %union.qm_mr_entry** %2, align 8
  ret %union.qm_mr_entry* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
