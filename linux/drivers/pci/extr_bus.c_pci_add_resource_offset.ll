; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_bus.c_pci_add_resource_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_bus.c_pci_add_resource_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.resource = type { i32 }
%struct.resource_entry = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"PCI: can't add host bridge window %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_add_resource_offset(%struct.list_head* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource_entry*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.resource*, %struct.resource** %5, align 8
  %9 = call %struct.resource_entry* @resource_list_create_entry(%struct.resource* %8, i32 0)
  store %struct.resource_entry* %9, %struct.resource_entry** %7, align 8
  %10 = load %struct.resource_entry*, %struct.resource_entry** %7, align 8
  %11 = icmp ne %struct.resource_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.resource* %13)
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.resource_entry*, %struct.resource_entry** %7, align 8
  %18 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.resource_entry*, %struct.resource_entry** %7, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = call i32 @resource_list_add_tail(%struct.resource_entry* %19, %struct.list_head* %20)
  br label %22

22:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.resource_entry* @resource_list_create_entry(%struct.resource*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.resource*) #1

declare dso_local i32 @resource_list_add_tail(%struct.resource_entry*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
