; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_fd_neq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_fd_neq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_fd = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_fd*, %struct.qm_fd*)* @fd_neq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_neq(%struct.qm_fd* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca %struct.qm_fd*, align 8
  %4 = alloca %struct.qm_fd*, align 8
  %5 = alloca i32, align 4
  store %struct.qm_fd* %0, %struct.qm_fd** %3, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %4, align 8
  %6 = load %struct.qm_fd*, %struct.qm_fd** %3, align 8
  %7 = call i64 @qm_fd_addr_get64(%struct.qm_fd* %6)
  %8 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %9 = call i64 @qm_fd_addr_get64(%struct.qm_fd* %8)
  %10 = icmp ne i64 %7, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.qm_fd*, %struct.qm_fd** %3, align 8
  %13 = call i64 @qm_fd_get_format(%struct.qm_fd* %12)
  %14 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %15 = call i64 @qm_fd_get_format(%struct.qm_fd* %14)
  %16 = icmp ne i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.qm_fd*, %struct.qm_fd** %3, align 8
  %21 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %24 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qm_fd*, %struct.qm_fd** %3, align 8
  %31 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %34 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @qm_fd_addr_get64(%struct.qm_fd*) #1

declare dso_local i64 @qm_fd_get_format(%struct.qm_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
