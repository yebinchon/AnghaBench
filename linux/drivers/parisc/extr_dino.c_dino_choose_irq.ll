; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_dino.c_dino_choose_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_dino.c_dino_choose_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dino_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parisc_device*, i8*)* @dino_choose_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dino_choose_irq(%struct.parisc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dino_device*, align 8
  store %struct.parisc_device* %0, %struct.parisc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dino_device*
  store %struct.dino_device* %8, %struct.dino_device** %6, align 8
  %9 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %10 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 132, label %13
    i32 140, label %14
    i32 150, label %15
  ]

13:                                               ; preds = %2
  store i32 8, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  store i32 10, i32* %5, align 4
  br label %17

15:                                               ; preds = %2
  store i32 8, i32* %5, align 4
  br label %17

16:                                               ; preds = %2
  br label %23

17:                                               ; preds = %15, %14, %13
  %18 = load %struct.dino_device*, %struct.dino_device** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %21 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %20, i32 0, i32 0
  %22 = call i32 @dino_assign_irq(%struct.dino_device* %18, i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @dino_assign_irq(%struct.dino_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
