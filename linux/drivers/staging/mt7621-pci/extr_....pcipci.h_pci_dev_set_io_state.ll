; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_....pcipci.h_pci_dev_set_io_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_....pcipci.h_pci_dev_set_io_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_dev_set_io_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dev_set_io_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = call i32 @device_lock_assert(i32* %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %28 [
    i32 128, label %10
    i32 130, label %16
    i32 129, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %10, %10, %10
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %10, %14
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %21 [
    i32 130, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %16, %16
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %20
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 130, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %22, %22
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %26
  br label %28

28:                                               ; preds = %2, %27, %21, %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @device_lock_assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
