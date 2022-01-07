; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_clean_submap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_clean_submap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32, i64 }

@subdevice_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maple_device*)* @maple_clean_submap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_clean_submap(%struct.maple_device* %0) #0 {
  %2 = alloca %struct.maple_device*, align 8
  %3 = alloca i32, align 4
  store %struct.maple_device* %0, %struct.maple_device** %2, align 8
  %4 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %5 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %10 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = and i32 %13, 31
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %8
  %17 = phi i32 [ %14, %8 ], [ 32, %15 ]
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** @subdevice_map, align 8
  %23 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %24 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %27, %28
  %30 = load i32*, i32** @subdevice_map, align 8
  %31 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %32 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
