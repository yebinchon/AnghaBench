; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_conf_space_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_conf_space_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.config_field_entry = type { i32, %struct.config_field* }
%struct.config_field = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (%struct.pci_dev*, i32, i64*, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.pci_dev*, i32, i32*, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.pci_dev*, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.config_field_entry*, i32, i64*)* @conf_space_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_space_read(%struct.pci_dev* %0, %struct.config_field_entry* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.config_field_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.config_field*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.config_field_entry* %1, %struct.config_field_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %12 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %11, i32 0, i32 1
  %13 = load %struct.config_field*, %struct.config_field** %12, align 8
  store %struct.config_field* %13, %struct.config_field** %10, align 8
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.config_field*, %struct.config_field** %10, align 8
  %16 = getelementptr inbounds %struct.config_field, %struct.config_field* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %83 [
    i32 1, label %18
    i32 2, label %40
    i32 4, label %62
  ]

18:                                               ; preds = %4
  %19 = load %struct.config_field*, %struct.config_field** %10, align 8
  %20 = getelementptr inbounds %struct.config_field, %struct.config_field* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.pci_dev*, i32, i32*, i32)*, i32 (%struct.pci_dev*, i32, i32*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.pci_dev*, i32, i32*, i32)* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.config_field*, %struct.config_field** %10, align 8
  %27 = getelementptr inbounds %struct.config_field, %struct.config_field* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.pci_dev*, i32, i32*, i32)*, i32 (%struct.pci_dev*, i32, i32*, i32)** %29, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64*, i64** %8, align 8
  %34 = bitcast i64* %33 to i32*
  %35 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %36 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %30(%struct.pci_dev* %31, i32 %32, i32* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %25, %18
  br label %83

40:                                               ; preds = %4
  %41 = load %struct.config_field*, %struct.config_field** %10, align 8
  %42 = getelementptr inbounds %struct.config_field, %struct.config_field* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.pci_dev*, i32, i32*, i32)*, i32 (%struct.pci_dev*, i32, i32*, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.pci_dev*, i32, i32*, i32)* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.config_field*, %struct.config_field** %10, align 8
  %49 = getelementptr inbounds %struct.config_field, %struct.config_field* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.pci_dev*, i32, i32*, i32)*, i32 (%struct.pci_dev*, i32, i32*, i32)** %51, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64*, i64** %8, align 8
  %56 = bitcast i64* %55 to i32*
  %57 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %58 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %52(%struct.pci_dev* %53, i32 %54, i32* %56, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %47, %40
  br label %83

62:                                               ; preds = %4
  %63 = load %struct.config_field*, %struct.config_field** %10, align 8
  %64 = getelementptr inbounds %struct.config_field, %struct.config_field* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32 (%struct.pci_dev*, i32, i64*, i32)*, i32 (%struct.pci_dev*, i32, i64*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.pci_dev*, i32, i64*, i32)* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %62
  %70 = load %struct.config_field*, %struct.config_field** %10, align 8
  %71 = getelementptr inbounds %struct.config_field, %struct.config_field* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32 (%struct.pci_dev*, i32, i64*, i32)*, i32 (%struct.pci_dev*, i32, i64*, i32)** %73, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %79 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %74(%struct.pci_dev* %75, i32 %76, i64* %77, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %69, %62
  br label %83

83:                                               ; preds = %4, %82, %61, %39
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
