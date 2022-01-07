; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c___pci_epf_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c___pci_epf_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf_driver = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.module*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pci_epf_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_epf_register_driver(%struct.pci_epf_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_epf_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_epf_driver* %0, %struct.pci_epf_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %8 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %16 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %23 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %30 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %21, %14
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %28
  %39 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %40 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* @pci_epf_bus_type, i32** %41, align 8
  %42 = load %struct.module*, %struct.module** %5, align 8
  %43 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %44 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.module* %42, %struct.module** %45, align 8
  %46 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %47 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %46, i32 0, i32 0
  %48 = call i32 @driver_register(%struct.TYPE_4__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %38
  %54 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %4, align 8
  %55 = call i32 @pci_epf_add_cfs(%struct.pci_epf_driver* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %51, %35, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_epf_add_cfs(%struct.pci_epf_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
