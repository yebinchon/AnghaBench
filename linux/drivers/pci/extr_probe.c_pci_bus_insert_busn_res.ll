; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_insert_busn_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_insert_busn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.TYPE_2__*, %struct.resource }
%struct.TYPE_2__ = type { %struct.resource }
%struct.resource = type { i32, i32, i32, i32 }

@IORESOURCE_BUS = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"busn_res: can not insert %pR under %s%pR (conflicts with %s %pR)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"domain \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 2
  store %struct.resource* %11, %struct.resource** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IORESOURCE_BUS, align 4
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %22 = call i64 @pci_is_root_bus(%struct.pci_bus* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.resource* %28, %struct.resource** %8, align 8
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = call i32 @pci_domain_nr(%struct.pci_bus* %30)
  %32 = call %struct.resource* @get_pci_domain_busn_res(i32 %31)
  store %struct.resource* %32, %struct.resource** %8, align 8
  %33 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = call %struct.resource* @request_resource_conflict(%struct.resource* %39, %struct.resource* %40)
  store %struct.resource* %41, %struct.resource** %9, align 8
  %42 = load %struct.resource*, %struct.resource** %9, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %46 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %49 = call i64 @pci_is_root_bus(%struct.pci_bus* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.resource*, %struct.resource** %9, align 8
  %58 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.resource* %47, i8* %52, %struct.resource* %53, i32 %56, %struct.resource* %57)
  br label %59

59:                                               ; preds = %44, %38
  %60 = load %struct.resource*, %struct.resource** %9, align 8
  %61 = icmp eq %struct.resource* %60, null
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local %struct.resource* @get_pci_domain_busn_res(i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.resource* @request_resource_conflict(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, i8*, %struct.resource*, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
