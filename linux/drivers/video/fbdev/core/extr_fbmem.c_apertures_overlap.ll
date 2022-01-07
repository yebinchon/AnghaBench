; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_apertures_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_apertures_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aperture = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aperture*, %struct.aperture*)* @apertures_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apertures_overlap(%struct.aperture* %0, %struct.aperture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aperture*, align 8
  %5 = alloca %struct.aperture*, align 8
  store %struct.aperture* %0, %struct.aperture** %4, align 8
  store %struct.aperture* %1, %struct.aperture** %5, align 8
  %6 = load %struct.aperture*, %struct.aperture** %4, align 8
  %7 = getelementptr inbounds %struct.aperture, %struct.aperture* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.aperture*, %struct.aperture** %5, align 8
  %10 = getelementptr inbounds %struct.aperture, %struct.aperture* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.aperture*, %struct.aperture** %4, align 8
  %16 = getelementptr inbounds %struct.aperture, %struct.aperture* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.aperture*, %struct.aperture** %5, align 8
  %19 = getelementptr inbounds %struct.aperture, %struct.aperture* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.aperture*, %struct.aperture** %4, align 8
  %24 = getelementptr inbounds %struct.aperture, %struct.aperture* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.aperture*, %struct.aperture** %5, align 8
  %27 = getelementptr inbounds %struct.aperture, %struct.aperture* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.aperture*, %struct.aperture** %5, align 8
  %30 = getelementptr inbounds %struct.aperture, %struct.aperture* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %22, %14
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
