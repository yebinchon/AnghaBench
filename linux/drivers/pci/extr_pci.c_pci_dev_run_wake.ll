; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_run_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_run_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.pci_bus* }
%struct.pci_bus = type { i32*, %struct.pci_bus*, %struct.pci_dev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_dev_run_wake(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 2
  %8 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  store %struct.pci_bus* %8, %struct.pci_bus** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @pci_target_state(%struct.pci_dev* %16, i32 1)
  %18 = call i32 @pci_pme_capable(%struct.pci_dev* %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %57

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @device_can_wakeup(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %57

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %42, %27
  %29 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 1
  %31 = load %struct.pci_bus*, %struct.pci_bus** %30, align 8
  %32 = icmp ne %struct.pci_bus* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 2
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  store %struct.pci_dev* %36, %struct.pci_dev** %5, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @device_can_wakeup(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %44 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %43, i32 0, i32 1
  %45 = load %struct.pci_bus*, %struct.pci_bus** %44, align 8
  store %struct.pci_bus* %45, %struct.pci_bus** %4, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %48 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %53 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @device_can_wakeup(i32* %54)
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %51, %41, %26, %20, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pci_pme_capable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_target_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
