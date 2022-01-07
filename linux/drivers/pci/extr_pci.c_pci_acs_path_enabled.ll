; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_path_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_acs_path_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_acs_path_enabled(%struct.pci_dev* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %9, align 8
  br label %11

11:                                               ; preds = %34, %3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @pci_acs_enabled(%struct.pci_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %39

18:                                               ; preds = %11
  %19 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i64 @pci_is_root_bus(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = icmp eq %struct.pci_dev* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %9, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = icmp ne %struct.pci_dev* %35, %36
  br i1 %37, label %11, label %38

38:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %24, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @pci_acs_enabled(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
