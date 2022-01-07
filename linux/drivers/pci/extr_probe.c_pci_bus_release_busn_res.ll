; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_release_busn_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_release_busn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.resource }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"busn_res: %pR %s released\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"can not be\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"is\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_bus_release_busn_res(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %6 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 1
  store %struct.resource* %6, %struct.resource** %3, align 8
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.resource*, %struct.resource** %3, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = call i32 @release_resource(%struct.resource* %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.resource* %22, i8* %26)
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
