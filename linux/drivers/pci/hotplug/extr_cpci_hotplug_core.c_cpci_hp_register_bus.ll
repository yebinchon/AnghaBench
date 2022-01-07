; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_register_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_register_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.slot = type { i32, i32, %struct.TYPE_2__, i32, %struct.pci_bus* }
%struct.TYPE_2__ = type { i32* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@controller = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@cpci_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"registering slot %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pci_hp_register failed with error %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"slot registered with name: %s\00", align 1
@list_rwsem = common dso_local global i32 0, align 4
@slot_list = common dso_local global i32 0, align 4
@slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_hp_register_bus(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.slot*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i64, i64* @controller, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %22 = icmp ne %struct.pci_bus* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %91

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %82, %26
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.slot* @kzalloc(i32 32, i32 %33)
  store %struct.slot* %34, %struct.slot** %8, align 8
  %35 = load %struct.slot*, %struct.slot** %8, align 8
  %36 = icmp ne %struct.slot* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %89

40:                                               ; preds = %32
  %41 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %42 = load %struct.slot*, %struct.slot** %8, align 8
  %43 = getelementptr inbounds %struct.slot, %struct.slot* %42, i32 0, i32 4
  store %struct.pci_bus* %41, %struct.pci_bus** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.slot*, %struct.slot** %8, align 8
  %46 = getelementptr inbounds %struct.slot, %struct.slot* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @PCI_DEVFN(i32 %47, i32 0)
  %49 = load %struct.slot*, %struct.slot** %8, align 8
  %50 = getelementptr inbounds %struct.slot, %struct.slot* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %52 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %53 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @snprintf(i8* %17, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.slot*, %struct.slot** %8, align 8
  %58 = getelementptr inbounds %struct.slot, %struct.slot* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* @cpci_hotplug_slot_ops, i32** %59, align 8
  %60 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %61 = load %struct.slot*, %struct.slot** %8, align 8
  %62 = getelementptr inbounds %struct.slot, %struct.slot* %61, i32 0, i32 2
  %63 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @pci_hp_register(%struct.TYPE_2__* %62, %struct.pci_bus* %63, i32 %64, i8* %17)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %40
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %86

71:                                               ; preds = %40
  %72 = load %struct.slot*, %struct.slot** %8, align 8
  %73 = call i8* @slot_name(%struct.slot* %72)
  %74 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = call i32 @down_write(i32* @list_rwsem)
  %76 = load %struct.slot*, %struct.slot** %8, align 8
  %77 = getelementptr inbounds %struct.slot, %struct.slot* %76, i32 0, i32 1
  %78 = call i32 @list_add(i32* %77, i32* @slot_list)
  %79 = load i32, i32* @slots, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @slots, align 4
  %81 = call i32 @up_write(i32* @list_rwsem)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %28

85:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %91

86:                                               ; preds = %68
  %87 = load %struct.slot*, %struct.slot** %8, align 8
  %88 = call i32 @kfree(%struct.slot* %87)
  br label %89

89:                                               ; preds = %86, %37
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %89, %85, %23
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @PCI_DEVFN(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dbg(i8*, i8*) #2

declare dso_local i32 @pci_hp_register(%struct.TYPE_2__*, %struct.pci_bus*, i32, i8*) #2

declare dso_local i32 @err(i8*, i32) #2

declare dso_local i8* @slot_name(%struct.slot*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @kfree(%struct.slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
