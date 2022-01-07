; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_write_eqcr_am_rt_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_write_eqcr_am_rt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }

@QBMAN_CINH_SWP_EQCR_AM_RT = common dso_local global i64 0, align 8
@QMAN_RT_MODE = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_EQCR_AM_RT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qbman_swp*, i32)* @qbman_write_eqcr_am_rt_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qbman_write_eqcr_am_rt_register(%struct.qbman_swp* %0, i32 %1) #0 {
  %3 = alloca %struct.qbman_swp*, align 8
  %4 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %9 = load i64, i64* @QBMAN_CINH_SWP_EQCR_AM_RT, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load i32, i32* @QMAN_RT_MODE, align 4
  %15 = call i32 @qbman_write_register(%struct.qbman_swp* %8, i64 %13, i32 %14)
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %18 = load i64, i64* @QBMAN_CINH_SWP_EQCR_AM_RT2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 16
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load i32, i32* @QMAN_RT_MODE, align 4
  %25 = call i32 @qbman_write_register(%struct.qbman_swp* %17, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
