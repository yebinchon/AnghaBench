; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf_device_id = type { i64* }
%struct.pci_epf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epf_device_id* @pci_epf_match_device(%struct.pci_epf_device_id* %0, %struct.pci_epf* %1) #0 {
  %3 = alloca %struct.pci_epf_device_id*, align 8
  %4 = alloca %struct.pci_epf_device_id*, align 8
  %5 = alloca %struct.pci_epf*, align 8
  store %struct.pci_epf_device_id* %0, %struct.pci_epf_device_id** %4, align 8
  store %struct.pci_epf* %1, %struct.pci_epf** %5, align 8
  %6 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %4, align 8
  %7 = icmp ne %struct.pci_epf_device_id* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %10 = icmp ne %struct.pci_epf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store %struct.pci_epf_device_id* null, %struct.pci_epf_device_id** %3, align 8
  br label %34

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %30, %12
  %14 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %21 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i64 @strcmp(i32 %22, i64* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %4, align 8
  store %struct.pci_epf_device_id* %29, %struct.pci_epf_device_id** %3, align 8
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %4, align 8
  %32 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %31, i32 1
  store %struct.pci_epf_device_id* %32, %struct.pci_epf_device_id** %4, align 8
  br label %13

33:                                               ; preds = %13
  store %struct.pci_epf_device_id* null, %struct.pci_epf_device_id** %3, align 8
  br label %34

34:                                               ; preds = %33, %28, %11
  %35 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %3, align 8
  ret %struct.pci_epf_device_id* %35
}

declare dso_local i64 @strcmp(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
