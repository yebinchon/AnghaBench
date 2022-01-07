; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_set_slot_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_set_slot_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.pnv_php_slot = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.opal_msg = type { i32* }

@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Wrong msg (%lld, %lld, %lld)\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error %d powering %s\0A\00", align 1
@OPAL_PCI_SLOT_POWER_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@OPAL_PCI_SLOT_POWER_OFF = common dso_local global i64 0, align 8
@OPAL_PCI_SLOT_OFFLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_php_set_slot_power_state(%struct.hotplug_slot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hotplug_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pnv_php_slot*, align 8
  %7 = alloca %struct.opal_msg, align 8
  %8 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %10 = call %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot* %9)
  store %struct.pnv_php_slot* %10, %struct.pnv_php_slot** %6, align 8
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %12 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @pnv_pci_set_power_state(i32 %13, i64 %14, %struct.opal_msg* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64_to_cpu(i32 %22)
  %24 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %25 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be64_to_cpu(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be64_to_cpu(i32 %42)
  %44 = load i64, i64* @OPAL_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %38, %30, %18
  %47 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %48 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be64_to_cpu(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be64_to_cpu(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be64_to_cpu(i32 %65)
  %67 = call i32 (i32, i8*, i32, i8*, ...) @pci_warn(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %61, i64 %66)
  %68 = load i32, i32* @ENOMSG, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %103

70:                                               ; preds = %38
  br label %87

71:                                               ; preds = %2
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %76 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @OPAL_PCI_SLOT_POWER_ON, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %84 = call i32 (i32, i8*, i32, i8*, ...) @pci_warn(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %103

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @OPAL_PCI_SLOT_POWER_OFF, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @OPAL_PCI_SLOT_OFFLINE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  %96 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %97 = call i32 @pnv_php_rmv_devtree(%struct.pnv_php_slot* %96)
  br label %101

98:                                               ; preds = %91
  %99 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %100 = call i32 @pnv_php_add_devtree(%struct.pnv_php_slot* %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %74, %46
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @pnv_pci_set_power_state(i32, i64, %struct.opal_msg*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @pci_warn(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @pnv_php_rmv_devtree(%struct.pnv_php_slot*) #1

declare dso_local i32 @pnv_php_add_devtree(%struct.pnv_php_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
