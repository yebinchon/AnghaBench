; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_claim_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_claim_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i64, i64, i32 }
%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"claiming resource %s/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"Could not claim resource %s/%d! Device offline. Try using e820_host=1 in the guest config.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @pcifront_claim_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_claim_resource(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcifront_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pcifront_device*
  store %struct.pcifront_device* %9, %struct.pcifront_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %17, i64 %19
  store %struct.resource* %20, %struct.resource** %7, align 8
  %21 = load %struct.resource*, %struct.resource** %7, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %14
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %37 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_name(%struct.pci_dev* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @pci_claim_resource(%struct.pci_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %50 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_name(%struct.pci_dev* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %35
  br label %58

58:                                               ; preds = %57, %30, %25, %14
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %10

62:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i64 @pci_claim_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
