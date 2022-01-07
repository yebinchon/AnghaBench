; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_core.c_acpiphp_register_hotplug_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_core.c_acpiphp_register_hotplug_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_slot = type { i32, i32, %struct.slot* }
%struct.slot = type { i32, %struct.TYPE_2__, %struct.acpiphp_slot* }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@acpi_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pci_hp_register failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Slot [%s] registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpiphp_register_hotplug_slot(%struct.acpiphp_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpiphp_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.acpiphp_slot* %0, %struct.acpiphp_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.slot* @kzalloc(i32 24, i32 %17)
  store %struct.slot* %18, %struct.slot** %6, align 8
  %19 = load %struct.slot*, %struct.slot** %6, align 8
  %20 = icmp ne %struct.slot* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.slot*, %struct.slot** %6, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* @acpi_hotplug_slot_ops, i32** %25, align 8
  %26 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %4, align 8
  %27 = load %struct.slot*, %struct.slot** %6, align 8
  %28 = getelementptr inbounds %struct.slot, %struct.slot* %27, i32 0, i32 2
  store %struct.acpiphp_slot* %26, %struct.acpiphp_slot** %28, align 8
  %29 = load %struct.slot*, %struct.slot** %6, align 8
  %30 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %4, align 8
  %31 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %30, i32 0, i32 2
  store %struct.slot* %29, %struct.slot** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.slot*, %struct.slot** %6, align 8
  %34 = getelementptr inbounds %struct.slot, %struct.slot* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snprintf(i8* %16, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.slot*, %struct.slot** %6, align 8
  %39 = getelementptr inbounds %struct.slot, %struct.slot* %38, i32 0, i32 1
  %40 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %4, align 8
  %41 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %4, align 8
  %44 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_hp_register(%struct.TYPE_2__* %39, i32 %42, i32 %45, i8* %16)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %22
  br label %62

52:                                               ; preds = %22
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.slot*, %struct.slot** %6, align 8
  %60 = call i32 @slot_name(%struct.slot* %59)
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

62:                                               ; preds = %55, %51
  %63 = load %struct.slot*, %struct.slot** %6, align 8
  %64 = call i32 @kfree(%struct.slot* %63)
  br label %65

65:                                               ; preds = %62, %21
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pci_hp_register(%struct.TYPE_2__*, i32, i32, i8*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @slot_name(%struct.slot*) #2

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
