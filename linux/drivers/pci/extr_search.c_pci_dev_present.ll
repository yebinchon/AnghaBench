; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_dev_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_dev_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i64, i64, i64 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_dev_present(%struct.pci_device_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_device_id* %0, %struct.pci_device_id** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %5 = call i32 (...) @in_interrupt()
  %6 = call i32 @WARN_ON(i32 %5)
  br label %7

7:                                                ; preds = %32, %1
  %8 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %9 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %14 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %19 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ true, %12 ], [ true, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %26 = call %struct.pci_dev* @pci_get_dev_by_id(%struct.pci_device_id* %25, i32* null)
  store %struct.pci_dev* %26, %struct.pci_dev** %4, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_dev_put(%struct.pci_dev* %30)
  store i32 1, i32* %2, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %34 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %33, i32 1
  store %struct.pci_device_id* %34, %struct.pci_device_id** %3, align 8
  br label %7

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.pci_dev* @pci_get_dev_by_id(%struct.pci_device_id*, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
