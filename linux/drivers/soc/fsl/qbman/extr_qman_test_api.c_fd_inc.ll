; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_fd_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_fd_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_fd*)* @fd_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_inc(%struct.qm_fd* %0) #0 {
  %2 = alloca %struct.qm_fd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qm_fd* %0, %struct.qm_fd** %2, align 8
  %8 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %9 = call i32 @qm_fd_addr_get64(%struct.qm_fd* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 40
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @qm_fd_addr_set64(%struct.qm_fd* %20, i32 %21)
  %23 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %24 = call i32 @qm_fd_get_format(%struct.qm_fd* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %26 = call i32 @qm_fd_get_offset(%struct.qm_fd* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %28 = call i32 @qm_fd_get_length(%struct.qm_fd* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @qm_fd_set_param(%struct.qm_fd* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %37 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be32_to_cpu(i32 %38)
  %40 = add nsw i64 %39, 1
  %41 = call i32 @cpu_to_be32(i64 %40)
  %42 = load %struct.qm_fd*, %struct.qm_fd** %2, align 8
  %43 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @qm_fd_addr_get64(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_addr_set64(%struct.qm_fd*, i32) #1

declare dso_local i32 @qm_fd_get_format(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_get_offset(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_get_length(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_set_param(%struct.qm_fd*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
