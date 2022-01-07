; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"BAR %d: releasing %pR\0A\00", align 1
@IORESOURCE_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_release_resource(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.resource*, %struct.resource** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 %10
  store %struct.resource* %11, %struct.resource** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = call i32 @pci_info(%struct.pci_dev* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.resource* %14)
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @release_resource(%struct.resource* %22)
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i64 @resource_size(%struct.resource* %24)
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @IORESOURCE_UNSET, align 4
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
