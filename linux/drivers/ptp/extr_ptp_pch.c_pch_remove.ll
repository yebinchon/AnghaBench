; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pch_dev = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pch_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pch_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pch_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.pch_dev* %5, %struct.pch_dev** %3, align 8
  %6 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ptp_clock_unregister(i32 %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.pch_dev* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @iounmap(i32* %28)
  %30 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @release_mem_region(i64 %40, i32 %43)
  %45 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_disable_device(%struct.pci_dev* %48)
  %50 = load %struct.pch_dev*, %struct.pch_dev** %3, align 8
  %51 = call i32 @kfree(%struct.pch_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.pch_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @free_irq(i64, %struct.pch_dev*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pch_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
