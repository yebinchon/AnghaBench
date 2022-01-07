; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_mc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_mc }
%struct.qm_mc = type { i32, i64, i32, %struct.TYPE_2__*, %union.qm_mc_result* }
%struct.TYPE_2__ = type { i32 }
%union.qm_mc_result = type { i32 }

@qman_mc_user = common dso_local global i64 0, align 8
@qman_mc_hw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*, i32)* @qm_mc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_mc_commit(%struct.qm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_mc*, align 8
  %6 = alloca %union.qm_mc_result*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %8 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %7, i32 0, i32 0
  store %struct.qm_mc* %8, %struct.qm_mc** %5, align 8
  %9 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %10 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %9, i32 0, i32 4
  %11 = load %union.qm_mc_result*, %union.qm_mc_result** %10, align 8
  %12 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %13 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.qm_mc_result, %union.qm_mc_result* %11, i64 %15
  store %union.qm_mc_result* %16, %union.qm_mc_result** %6, align 8
  %17 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %18 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @qman_mc_user, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @DPAA_ASSERT(i32 %22)
  %24 = call i32 (...) @dma_wmb()
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %27 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %31 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.qm_mc*, %struct.qm_mc** %5, align 8
  %35 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @dpaa_flush(%struct.TYPE_2__* %36)
  %38 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %39 = call i32 @dpaa_invalidate_touch_ro(%union.qm_mc_result* %38)
  ret void
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @dpaa_flush(%struct.TYPE_2__*) #1

declare dso_local i32 @dpaa_invalidate_touch_ro(%union.qm_mc_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
