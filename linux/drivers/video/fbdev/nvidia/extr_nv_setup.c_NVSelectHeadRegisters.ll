; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_NVSelectHeadRegisters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_NVSelectHeadRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*, i32)* @NVSelectHeadRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVSelectHeadRegisters(%struct.nvidia_par* %0, i32 %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %9 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 8192
  %12 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %13 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %12, i32 0, i32 7
  store i64 %11, i64* %13, align 8
  %14 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %15 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 2048
  %18 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %19 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %18, i32 0, i32 5
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %21 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 2048
  %24 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %25 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %27 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 8192
  %30 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %31 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %34 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %37 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %36, i32 0, i32 7
  store i64 %35, i64* %37, align 8
  %38 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %39 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %42 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %44 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %47 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %49 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %52 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %32, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
