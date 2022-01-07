; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_mc_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_mc_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QMAN_REV_MASK = common dso_local global i32 0, align 4
@QMAN_REV_5000 = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_CR_RT = common dso_local global i32 0, align 4
@QMAN_RT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_swp_mc_submit(%struct.qbman_swp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %11 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QMAN_REV_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @QMAN_REV_5000, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = call i32 (...) @dma_wmb()
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %23 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %21, %25
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %31 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = call i32 (...) @dma_wmb()
  %37 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %38 = load i32, i32* @QBMAN_CINH_SWP_CR_RT, align 4
  %39 = load i32, i32* @QMAN_RT_MODE, align 4
  %40 = call i32 @qbman_write_register(%struct.qbman_swp* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
