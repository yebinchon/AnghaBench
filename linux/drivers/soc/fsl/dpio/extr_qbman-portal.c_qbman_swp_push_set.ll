; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_push_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_push_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }

@QB_SDQCR_SRC_SHIFT = common dso_local global i32 0, align 4
@QB_SDQCR_SRC_MASK = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_SDQCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_swp_push_set(%struct.qbman_swp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 15
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %18 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %26 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21, %14
  %30 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %31 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QB_SDQCR_SRC_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* @QB_SDQCR_SRC_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %41 = load i32, i32* @QBMAN_CINH_SWP_SDQCR, align 4
  %42 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %43 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qbman_write_register(%struct.qbman_swp* %40, i32 %41, i32 %44)
  br label %50

46:                                               ; preds = %29
  %47 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %48 = load i32, i32* @QBMAN_CINH_SWP_SDQCR, align 4
  %49 = call i32 @qbman_write_register(%struct.qbman_swp* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %46, %39
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
