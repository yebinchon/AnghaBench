; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_devm_pci_remap_iospace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_devm_pci_remap_iospace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i32 }

@devm_pci_unmap_iospace = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_pci_remap_iospace(%struct.device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource**, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_pci_unmap_iospace, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.resource** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.resource** %12, %struct.resource*** %8, align 8
  %13 = load %struct.resource**, %struct.resource*** %8, align 8
  %14 = icmp ne %struct.resource** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pci_remap_iospace(%struct.resource* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.resource**, %struct.resource*** %8, align 8
  %26 = call i32 @devres_free(%struct.resource** %25)
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = load %struct.resource**, %struct.resource*** %8, align 8
  store %struct.resource* %28, %struct.resource** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.resource**, %struct.resource*** %8, align 8
  %32 = call i32 @devres_add(%struct.device* %30, %struct.resource** %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.resource** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @pci_remap_iospace(%struct.resource*, i32) #1

declare dso_local i32 @devres_free(%struct.resource**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
