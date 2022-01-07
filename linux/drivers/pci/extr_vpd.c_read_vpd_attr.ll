; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_read_vpd_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_read_vpd_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @read_vpd_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vpd_attr(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.kobject*, %struct.kobject** %8, align 8
  %15 = call i32 @kobj_to_dev(%struct.kobject* %14)
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %13, align 8
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %18 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %6
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %24 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 0, i64* %12, align 8
  br label %43

28:                                               ; preds = %21
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %31 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %38 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %36, %28
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %6
  %45 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @pci_read_vpd(%struct.pci_dev* %45, i64 %46, i64 %47, i8* %48)
  ret i32 %49
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @pci_read_vpd(%struct.pci_dev*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
