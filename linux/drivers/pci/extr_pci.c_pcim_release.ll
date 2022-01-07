; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcim_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcim_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i64, i64 }
%struct.pci_devres = type { i32, i32, i64, i32, i64, i64 }

@DEVICE_COUNT_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @pcim_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcim_release(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_devres*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pci_devres*
  store %struct.pci_devres* %11, %struct.pci_devres** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = call i32 @pci_disable_msi(%struct.pci_dev* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i32 @pci_disable_msix(%struct.pci_dev* %25)
  br label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DEVICE_COUNT_RESOURCE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %34 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pci_release_region(%struct.pci_dev* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %50 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = call i32 @pci_clear_mwi(%struct.pci_dev* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %58 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %64 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pci_intx(%struct.pci_dev* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %69 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.pci_devres*, %struct.pci_devres** %6, align 8
  %74 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = call i32 @pci_disable_device(%struct.pci_dev* %78)
  br label %80

80:                                               ; preds = %77, %72, %67
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_clear_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
