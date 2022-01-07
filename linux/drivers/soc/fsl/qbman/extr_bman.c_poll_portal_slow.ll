; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_poll_portal_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_poll_portal_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_portal = type { i32 }

@BM_PIRQ_RCRI = common dso_local global i32 0, align 4
@BM_REG_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bman_portal*, i32)* @poll_portal_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_portal_slow(%struct.bman_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.bman_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bman_portal* %0, %struct.bman_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BM_PIRQ_RCRI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.bman_portal*, %struct.bman_portal** %3, align 8
  %13 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %12, i32 0, i32 0
  %14 = call i32 @bm_rcr_cce_update(i32* %13)
  %15 = load %struct.bman_portal*, %struct.bman_portal** %3, align 8
  %16 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %15, i32 0, i32 0
  %17 = call i32 @bm_rcr_set_ithresh(i32* %16, i32 0)
  %18 = load %struct.bman_portal*, %struct.bman_portal** %3, align 8
  %19 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %18, i32 0, i32 0
  %20 = load i32, i32* @BM_REG_ISR, align 4
  %21 = load i32, i32* @BM_PIRQ_RCRI, align 4
  %22 = call i32 @bm_out(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @BM_PIRQ_RCRI, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %11, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @DPAA_ASSERT(i32 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @bm_rcr_cce_update(i32*) #1

declare dso_local i32 @bm_rcr_set_ithresh(i32*, i32) #1

declare dso_local i32 @bm_out(i32*, i32, i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
