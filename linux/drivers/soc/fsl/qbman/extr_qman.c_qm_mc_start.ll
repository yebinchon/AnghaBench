; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.qm_mc_command = type { i32 }
%struct.qm_portal = type { %struct.qm_mc }
%struct.qm_mc = type { i64, %union.qm_mc_command* }

@qman_mc_idle = common dso_local global i64 0, align 8
@qman_mc_user = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.qm_mc_command* (%struct.qm_portal*)* @qm_mc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.qm_mc_command* @qm_mc_start(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_mc*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %4 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %5 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %4, i32 0, i32 0
  store %struct.qm_mc* %5, %struct.qm_mc** %3, align 8
  %6 = load %struct.qm_mc*, %struct.qm_mc** %3, align 8
  %7 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @qman_mc_idle, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @DPAA_ASSERT(i32 %11)
  %13 = load %struct.qm_mc*, %struct.qm_mc** %3, align 8
  %14 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %13, i32 0, i32 1
  %15 = load %union.qm_mc_command*, %union.qm_mc_command** %14, align 8
  %16 = call i32 @dpaa_zero(%union.qm_mc_command* %15)
  %17 = load %struct.qm_mc*, %struct.qm_mc** %3, align 8
  %18 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %17, i32 0, i32 1
  %19 = load %union.qm_mc_command*, %union.qm_mc_command** %18, align 8
  ret %union.qm_mc_command* %19
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dpaa_zero(%union.qm_mc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
