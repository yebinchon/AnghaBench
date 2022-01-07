; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_to_linux_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_to_linux_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_to_linux_sector(%struct.se_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.se_device*, %struct.se_device** %4, align 8
  %7 = getelementptr inbounds %struct.se_device, %struct.se_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 4096, label %10
    i32 2048, label %13
    i32 1024, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 3
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 2
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %16, %13, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
