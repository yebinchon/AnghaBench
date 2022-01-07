; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c___devm_pci_epc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c___devm_pci_epc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.device = type { i32 }
%struct.pci_epc_ops = type { i32 }
%struct.module = type { i32 }

@devm_pci_epc_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epc* @__devm_pci_epc_create(%struct.device* %0, %struct.pci_epc_ops* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pci_epc_ops*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.pci_epc**, align 8
  %9 = alloca %struct.pci_epc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.pci_epc_ops* %1, %struct.pci_epc_ops** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %10 = load i32, i32* @devm_pci_epc_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pci_epc** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.pci_epc** %12, %struct.pci_epc*** %8, align 8
  %13 = load %struct.pci_epc**, %struct.pci_epc*** %8, align 8
  %14 = icmp ne %struct.pci_epc** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.pci_epc* @ERR_PTR(i32 %17)
  store %struct.pci_epc* %18, %struct.pci_epc** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.pci_epc_ops*, %struct.pci_epc_ops** %6, align 8
  %22 = load %struct.module*, %struct.module** %7, align 8
  %23 = call %struct.pci_epc* @__pci_epc_create(%struct.device* %20, %struct.pci_epc_ops* %21, %struct.module* %22)
  store %struct.pci_epc* %23, %struct.pci_epc** %9, align 8
  %24 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %25 = call i32 @IS_ERR(%struct.pci_epc* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %29 = load %struct.pci_epc**, %struct.pci_epc*** %8, align 8
  store %struct.pci_epc* %28, %struct.pci_epc** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.pci_epc**, %struct.pci_epc*** %8, align 8
  %32 = call i32 @devres_add(%struct.device* %30, %struct.pci_epc** %31)
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.pci_epc**, %struct.pci_epc*** %8, align 8
  %35 = call i32 @devres_free(%struct.pci_epc** %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  store %struct.pci_epc* %37, %struct.pci_epc** %4, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  ret %struct.pci_epc* %39
}

declare dso_local %struct.pci_epc** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.pci_epc* @ERR_PTR(i32) #1

declare dso_local %struct.pci_epc* @__pci_epc_create(%struct.device*, %struct.pci_epc_ops*, %struct.module*) #1

declare dso_local i32 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.pci_epc**) #1

declare dso_local i32 @devres_free(%struct.pci_epc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
