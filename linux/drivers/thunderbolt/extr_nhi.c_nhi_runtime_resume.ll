; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.tb = type { %struct.tb_nhi* }
%struct.tb_nhi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tb_nhi*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nhi_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhi_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.tb_nhi*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.tb* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.tb* %11, %struct.tb** %5, align 8
  %12 = load %struct.tb*, %struct.tb** %5, align 8
  %13 = getelementptr inbounds %struct.tb, %struct.tb* %12, i32 0, i32 0
  %14 = load %struct.tb_nhi*, %struct.tb_nhi** %13, align 8
  store %struct.tb_nhi* %14, %struct.tb_nhi** %6, align 8
  %15 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %16 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %21 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.tb_nhi*)*, i32 (%struct.tb_nhi*)** %23, align 8
  %25 = icmp ne i32 (%struct.tb_nhi*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %28 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.tb_nhi*)*, i32 (%struct.tb_nhi*)** %30, align 8
  %32 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %33 = call i32 %31(%struct.tb_nhi* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %19, %1
  %40 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %41 = call i32 @nhi_enable_int_throttling(%struct.tb_nhi* %40)
  %42 = load %struct.tb*, %struct.tb** %5, align 8
  %43 = call i32 @tb_domain_runtime_resume(%struct.tb* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.tb* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nhi_enable_int_throttling(%struct.tb_nhi*) #1

declare dso_local i32 @tb_domain_runtime_resume(%struct.tb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
