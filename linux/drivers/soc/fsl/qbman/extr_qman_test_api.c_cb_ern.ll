; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_ern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_ern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%union.qm_mr_entry = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cb_ern() unimplemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*, %struct.qman_fq*, %union.qm_mr_entry*)* @cb_ern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_ern(%struct.qman_portal* %0, %struct.qman_fq* %1, %union.qm_mr_entry* %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %union.qm_mr_entry*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store %union.qm_mr_entry* %2, %union.qm_mr_entry** %6, align 8
  %7 = call i32 @pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @WARN_ON(i32 1)
  ret void
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
