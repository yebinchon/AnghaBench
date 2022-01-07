; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_portal_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_portal_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_portal = type { i32, %struct.bm_portal }
%struct.bm_portal = type { i32 }

@BM_REG_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @portal_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portal_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bman_portal*, align 8
  %7 = alloca %struct.bm_portal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bman_portal*
  store %struct.bman_portal* %11, %struct.bman_portal** %6, align 8
  %12 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %13 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %12, i32 0, i32 1
  store %struct.bm_portal* %13, %struct.bm_portal** %7, align 8
  %14 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %15 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.bm_portal*, %struct.bm_portal** %7, align 8
  %18 = load i32, i32* @BM_REG_ISR, align 4
  %19 = call i32 @bm_in(%struct.bm_portal* %17, i32 %18)
  %20 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %21 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @poll_portal_slow(%struct.bman_portal* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.bm_portal*, %struct.bm_portal** %7, align 8
  %39 = load i32, i32* @BM_REG_ISR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bm_out(%struct.bm_portal* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @bm_in(%struct.bm_portal*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @poll_portal_slow(%struct.bman_portal*, i32) #1

declare dso_local i32 @bm_out(%struct.bm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
