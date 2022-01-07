; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_set_ithresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_set_ithresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i32 }

@BM_REG_RCR_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bm_portal*, i32)* @bm_rcr_set_ithresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bm_rcr_set_ithresh(%struct.bm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm_rcr*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_rcr* %7, %struct.bm_rcr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %10 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %12 = load i32, i32* @BM_REG_RCR_ITR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bm_out(%struct.bm_portal* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @bm_out(%struct.bm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
