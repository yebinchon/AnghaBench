; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpadlpar_core.c_find_dlpar_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpadlpar_core.c_find_dlpar_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"SLOT\00", align 1
@NODE_TYPE_SLOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PHB\00", align 1
@NODE_TYPE_PHB = common dso_local global i32 0, align 4
@NODE_TYPE_VIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i8*, i32*)* @find_dlpar_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @find_dlpar_node(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.device_node* @find_php_slot_pci_node(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @NODE_TYPE_SLOT, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %14, %struct.device_node** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call %struct.device_node* @find_php_slot_pci_node(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @NODE_TYPE_PHB, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %23, %struct.device_node** %3, align 8
  br label %34

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.device_node* @find_vio_slot_node(i8* %25)
  store %struct.device_node* %26, %struct.device_node** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @NODE_TYPE_VIO, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %32, %struct.device_node** %3, align 8
  br label %34

33:                                               ; preds = %24
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %34

34:                                               ; preds = %33, %29, %20, %11
  %35 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %35
}

declare dso_local %struct.device_node* @find_php_slot_pci_node(i8*, i8*) #1

declare dso_local %struct.device_node* @find_vio_slot_node(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
