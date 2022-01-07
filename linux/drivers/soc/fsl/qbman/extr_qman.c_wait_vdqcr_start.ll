; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_wait_vdqcr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_wait_vdqcr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }

@QMAN_VOLATILE_FLAG_WAIT_INT = common dso_local global i32 0, align 4
@affine_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal**, %struct.qman_fq*, i32, i32)* @wait_vdqcr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_vdqcr_start(%struct.qman_portal** %0, %struct.qman_fq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qman_portal**, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qman_portal** %0, %struct.qman_portal*** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @QMAN_VOLATILE_FLAG_WAIT_INT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32, i32* @affine_queue, align 4
  %16 = load %struct.qman_portal**, %struct.qman_portal*** %5, align 8
  %17 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @set_vdqcr(%struct.qman_portal** %16, %struct.qman_fq* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @wait_event_interruptible(i32 %15, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %34

24:                                               ; preds = %4
  %25 = load i32, i32* @affine_queue, align 4
  %26 = load %struct.qman_portal**, %struct.qman_portal*** %5, align 8
  %27 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @set_vdqcr(%struct.qman_portal** %26, %struct.qman_fq* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @wait_event(i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %14
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @set_vdqcr(%struct.qman_portal**, %struct.qman_fq*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
