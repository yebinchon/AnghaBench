; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_power_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_power_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { %struct.hotplug_slot* }
%struct.hotplug_slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)* }

@.str = private unnamed_addr constant [12 x i8] c"power = %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Illegal value specified for power\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*, i8*, i64)* @power_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_write_file(%struct.pci_slot* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_slot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hotplug_slot*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_slot* %0, %struct.pci_slot** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %13 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %12, i32 0, i32 0
  %14 = load %struct.hotplug_slot*, %struct.hotplug_slot** %13, align 8
  store %struct.hotplug_slot* %14, %struct.hotplug_slot** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i32* null, i32 10)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %23 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %73

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %64 [
    i32 0, label %32
    i32 1, label %48
  ]

32:                                               ; preds = %30
  %33 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %34 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %36, align 8
  %38 = icmp ne i32 (%struct.hotplug_slot*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %41 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %43, align 8
  %45 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %46 = call i32 %44(%struct.hotplug_slot* %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %39, %32
  br label %68

48:                                               ; preds = %30
  %49 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %50 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %52, align 8
  %54 = icmp ne i32 (%struct.hotplug_slot*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %57 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %59, align 8
  %61 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %62 = call i32 %60(%struct.hotplug_slot* %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %55, %48
  br label %68

64:                                               ; preds = %30
  %65 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %63, %47
  %69 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %70 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @module_put(i32 %71)
  br label %73

73:                                               ; preds = %68, %27
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %81

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %76
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
