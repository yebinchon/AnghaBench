; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_type_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_type_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { i32 }

@SIOX_STATUS_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siox_device*, i32)* @siox_device_type_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siox_device_type_error(%struct.siox_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siox_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.siox_device* %0, %struct.siox_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SIOX_STATUS_TYPE, align 4
  %9 = and i32 %7, %8
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.siox_device*, %struct.siox_device** %4, align 8
  %12 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.siox_device*, %struct.siox_device** %4, align 8
  %18 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %28

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %26 [
    i32 0, label %25
    i32 15, label %25
  ]

25:                                               ; preds = %23, %23
  store i32 1, i32* %3, align 4
  br label %28

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
