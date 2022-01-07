; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i64, i64, i64 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_device_id* @pci_match_id(%struct.pci_device_id* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_device_id* %0, %struct.pci_device_id** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %6 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %7 = icmp ne %struct.pci_device_id* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %33, %8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14, %9
  %25 = phi i1 [ true, %14 ], [ true, %9 ], [ %23, %19 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = call i64 @pci_match_one_device(%struct.pci_device_id* %27, %struct.pci_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  store %struct.pci_device_id* %32, %struct.pci_device_id** %3, align 8
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %35 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %34, i32 1
  store %struct.pci_device_id* %35, %struct.pci_device_id** %4, align 8
  br label %9

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %2
  store %struct.pci_device_id* null, %struct.pci_device_id** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  ret %struct.pci_device_id* %39
}

declare dso_local i64 @pci_match_one_device(%struct.pci_device_id*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
