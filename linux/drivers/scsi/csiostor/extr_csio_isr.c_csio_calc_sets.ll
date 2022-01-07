; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_calc_sets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_calc_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity = type { i32, i32*, %struct.csio_hw* }
%struct.csio_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_affinity*, i32)* @csio_calc_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_calc_sets(%struct.irq_affinity* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_affinity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_affinity* %0, %struct.irq_affinity** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %8 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %7, i32 0, i32 2
  %9 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  store %struct.csio_hw* %9, %struct.csio_hw** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %21 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %24 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  br label %54

27:                                               ; preds = %13
  %28 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %29 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %32 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %51, %27
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %36 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %43 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = udiv i32 %41, %44
  %46 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %47 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %33

54:                                               ; preds = %12, %19, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
