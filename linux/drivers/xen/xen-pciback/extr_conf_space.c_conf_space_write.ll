; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_conf_space_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_conf_space_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.config_field_entry = type { i32, %struct.config_field* }
%struct.config_field = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (%struct.pci_dev*, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.pci_dev*, i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.pci_dev*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.config_field_entry*, i32, i32)* @conf_space_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_space_write(%struct.pci_dev* %0, %struct.config_field_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.config_field_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.config_field*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.config_field_entry* %1, %struct.config_field_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %12 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %11, i32 0, i32 1
  %13 = load %struct.config_field*, %struct.config_field** %12, align 8
  store %struct.config_field* %13, %struct.config_field** %10, align 8
  %14 = load %struct.config_field*, %struct.config_field** %10, align 8
  %15 = getelementptr inbounds %struct.config_field, %struct.config_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %80 [
    i32 1, label %17
    i32 2, label %38
    i32 4, label %59
  ]

17:                                               ; preds = %4
  %18 = load %struct.config_field*, %struct.config_field** %10, align 8
  %19 = getelementptr inbounds %struct.config_field, %struct.config_field* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.pci_dev*, i32, i32, i32)* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.config_field*, %struct.config_field** %10, align 8
  %26 = getelementptr inbounds %struct.config_field, %struct.config_field* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %34 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %29(%struct.pci_dev* %30, i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %24, %17
  br label %80

38:                                               ; preds = %4
  %39 = load %struct.config_field*, %struct.config_field** %10, align 8
  %40 = getelementptr inbounds %struct.config_field, %struct.config_field* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.pci_dev*, i32, i32, i32)* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.config_field*, %struct.config_field** %10, align 8
  %47 = getelementptr inbounds %struct.config_field, %struct.config_field* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %49, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %55 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %50(%struct.pci_dev* %51, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %45, %38
  br label %80

59:                                               ; preds = %4
  %60 = load %struct.config_field*, %struct.config_field** %10, align 8
  %61 = getelementptr inbounds %struct.config_field, %struct.config_field* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.pci_dev*, i32, i32, i32)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.config_field*, %struct.config_field** %10, align 8
  %68 = getelementptr inbounds %struct.config_field, %struct.config_field* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32 (%struct.pci_dev*, i32, i32, i32)*, i32 (%struct.pci_dev*, i32, i32, i32)** %70, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.config_field_entry*, %struct.config_field_entry** %6, align 8
  %76 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %71(%struct.pci_dev* %72, i32 %73, i32 %74, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %66, %59
  br label %80

80:                                               ; preds = %4, %79, %58, %37
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
