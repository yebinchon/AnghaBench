; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_add_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i32, i32 }
%struct.pci_dev_resource = type { i32, i8*, i8*, i32, i32, i32, %struct.pci_dev*, %struct.resource* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.pci_dev*, %struct.resource*, i8*, i8*)* @add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_list(%struct.list_head* %0, %struct.pci_dev* %1, %struct.resource* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pci_dev_resource*, align 8
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store %struct.resource* %2, %struct.resource** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pci_dev_resource* @kzalloc(i32 56, i32 %13)
  store %struct.pci_dev_resource* %14, %struct.pci_dev_resource** %12, align 8
  %15 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %16 = icmp ne %struct.pci_dev_resource* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load %struct.resource*, %struct.resource** %9, align 8
  %22 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %23 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %22, i32 0, i32 7
  store %struct.resource* %21, %struct.resource** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %25 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %26 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %25, i32 0, i32 6
  store %struct.pci_dev* %24, %struct.pci_dev** %26, align 8
  %27 = load %struct.resource*, %struct.resource** %9, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %31 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %36 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.resource*, %struct.resource** %9, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %41 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %44 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %47 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.pci_dev_resource*, %struct.pci_dev_resource** %12, align 8
  %49 = getelementptr inbounds %struct.pci_dev_resource, %struct.pci_dev_resource* %48, i32 0, i32 0
  %50 = load %struct.list_head*, %struct.list_head** %7, align 8
  %51 = call i32 @list_add(i32* %49, %struct.list_head* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %20, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.pci_dev_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
