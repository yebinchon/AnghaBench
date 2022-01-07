; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.class_dev_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pci_epc_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epc* @pci_epc_get(i8* %0) #0 {
  %2 = alloca %struct.pci_epc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.class_dev_iter, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @pci_epc_class, align 4
  %11 = call i32 @class_dev_iter_init(%struct.class_dev_iter* %7, i32 %10, i32* null, i32* null)
  br label %12

12:                                               ; preds = %21, %1
  %13 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %7)
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_name(%struct.device* %17)
  %19 = call i64 @strcmp(i8* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %12

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.pci_epc* @to_pci_epc(%struct.device* %23)
  store %struct.pci_epc* %24, %struct.pci_epc** %5, align 8
  %25 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %26 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @try_module_get(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %22
  %36 = call i32 @class_dev_iter_exit(%struct.class_dev_iter* %7)
  %37 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %38 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %37, i32 0, i32 0
  %39 = call i32 @get_device(i32* %38)
  %40 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  store %struct.pci_epc* %40, %struct.pci_epc** %2, align 8
  br label %46

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41, %32
  %43 = call i32 @class_dev_iter_exit(%struct.class_dev_iter* %7)
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.pci_epc* @ERR_PTR(i32 %44)
  store %struct.pci_epc* %45, %struct.pci_epc** %2, align 8
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  ret %struct.pci_epc* %47
}

declare dso_local i32 @class_dev_iter_init(%struct.class_dev_iter*, i32, i32*, i32*) #1

declare dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.pci_epc* @to_pci_epc(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @class_dev_iter_exit(%struct.class_dev_iter*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local %struct.pci_epc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
