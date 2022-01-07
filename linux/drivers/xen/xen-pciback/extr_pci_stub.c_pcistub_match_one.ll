; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_match_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.pci_dev* }
%struct.pcistub_device_id = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pcistub_device_id*)* @pcistub_match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcistub_match_one(%struct.pci_dev* %0, %struct.pcistub_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pcistub_device_id*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pcistub_device_id* %1, %struct.pcistub_device_id** %5, align 8
  br label %6

6:                                                ; preds = %47, %2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %6
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i64 @pci_domain_nr(%struct.TYPE_2__* %12)
  %14 = load %struct.pcistub_device_id*, %struct.pcistub_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.pcistub_device_id, %struct.pcistub_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %9
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pcistub_device_id*, %struct.pcistub_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.pcistub_device_id, %struct.pcistub_device_id* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pcistub_device_id*, %struct.pcistub_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.pcistub_device_id, %struct.pcistub_device_id* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %54

37:                                               ; preds = %28, %18, %9
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.pci_dev*, %struct.pci_dev** %42, align 8
  %44 = icmp eq %struct.pci_dev* %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %53

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.pci_dev*, %struct.pci_dev** %51, align 8
  store %struct.pci_dev* %52, %struct.pci_dev** %4, align 8
  br label %6

53:                                               ; preds = %45, %6
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @pci_domain_nr(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
