; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c___nhi_suspend_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c___nhi_suspend_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.tb = type { %struct.tb_nhi* }
%struct.tb_nhi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tb_nhi*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @__nhi_suspend_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nhi_suspend_noirq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.tb*, align 8
  %8 = alloca %struct.tb_nhi*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(%struct.device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call %struct.tb* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.tb* %13, %struct.tb** %7, align 8
  %14 = load %struct.tb*, %struct.tb** %7, align 8
  %15 = getelementptr inbounds %struct.tb, %struct.tb* %14, i32 0, i32 0
  %16 = load %struct.tb_nhi*, %struct.tb_nhi** %15, align 8
  store %struct.tb_nhi* %16, %struct.tb_nhi** %8, align 8
  %17 = load %struct.tb*, %struct.tb** %7, align 8
  %18 = call i32 @tb_domain_suspend_noirq(%struct.tb* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.tb_nhi*, %struct.tb_nhi** %8, align 8
  %25 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.tb_nhi*, %struct.tb_nhi** %8, align 8
  %30 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.tb_nhi*, i32)*, i32 (%struct.tb_nhi*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.tb_nhi*, i32)* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.tb_nhi*, %struct.tb_nhi** %8, align 8
  %37 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.tb_nhi*, i32)*, i32 (%struct.tb_nhi*, i32)** %39, align 8
  %41 = load %struct.tb*, %struct.tb** %7, align 8
  %42 = getelementptr inbounds %struct.tb, %struct.tb* %41, i32 0, i32 0
  %43 = load %struct.tb_nhi*, %struct.tb_nhi** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %40(%struct.tb_nhi* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %28, %23
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.tb* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @tb_domain_suspend_noirq(%struct.tb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
