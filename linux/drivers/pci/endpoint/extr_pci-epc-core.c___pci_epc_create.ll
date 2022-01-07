; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c___pci_epc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c___pci_epc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { %struct.TYPE_5__, i32, %struct.pci_epc_ops*, i32, i32 }
%struct.TYPE_5__ = type { %struct.device*, i32 }
%struct.device = type { i32 }
%struct.pci_epc_ops = type { i32 }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pci_epc_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epc* @__pci_epc_create(%struct.device* %0, %struct.pci_epc_ops* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pci_epc_ops*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_epc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.pci_epc_ops* %1, %struct.pci_epc_ops** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pci_epc* @kzalloc(i32 40, i32 %20)
  store %struct.pci_epc* %21, %struct.pci_epc** %9, align 8
  %22 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %23 = icmp ne %struct.pci_epc* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %76

27:                                               ; preds = %19
  %28 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %29 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %32 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %35 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %34, i32 0, i32 0
  %36 = call i32 @device_initialize(%struct.TYPE_5__* %35)
  %37 = load i32, i32* @pci_epc_class, align 4
  %38 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %39 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %43 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load %struct.pci_epc_ops*, %struct.pci_epc_ops** %6, align 8
  %46 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %47 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %46, i32 0, i32 2
  store %struct.pci_epc_ops* %45, %struct.pci_epc_ops** %47, align 8
  %48 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %49 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %48, i32 0, i32 0
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @dev_name(%struct.device* %50)
  %52 = call i32 @dev_set_name(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %27
  br label %70

56:                                               ; preds = %27
  %57 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %58 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %57, i32 0, i32 0
  %59 = call i32 @device_add(%struct.TYPE_5__* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %70

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_name(%struct.device* %64)
  %66 = call i32 @pci_ep_cfs_add_epc_group(i32 %65)
  %67 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %68 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  store %struct.pci_epc* %69, %struct.pci_epc** %4, align 8
  br label %79

70:                                               ; preds = %62, %55
  %71 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %72 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %71, i32 0, i32 0
  %73 = call i32 @put_device(%struct.TYPE_5__* %72)
  %74 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %75 = call i32 @kfree(%struct.pci_epc* %74)
  br label %76

76:                                               ; preds = %70, %24, %16
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.pci_epc* @ERR_PTR(i32 %77)
  store %struct.pci_epc* %78, %struct.pci_epc** %4, align 8
  br label %79

79:                                               ; preds = %76, %63
  %80 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  ret %struct.pci_epc* %80
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pci_epc* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_ep_cfs_add_epc_group(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.pci_epc*) #1

declare dso_local %struct.pci_epc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
