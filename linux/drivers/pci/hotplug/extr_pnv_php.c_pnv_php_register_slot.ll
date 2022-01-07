; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_register_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_register_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { i32, i32, i32, %struct.pnv_php_slot*, i32, i32, i32, i32, i32, %struct.device_node* }
%struct.device_node = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error %d registering slot\0A\00", align 1
@pnv_php_lock = common dso_local global i32 0, align 4
@pnv_php_slot_list = common dso_local global i32 0, align 4
@PNV_PHP_STATE_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_php_slot*)* @pnv_php_register_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_register_slot(%struct.pnv_php_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnv_php_slot*, align 8
  %4 = alloca %struct.pnv_php_slot*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %3, align 8
  %8 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %9 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %8, i32 0, i32 9
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %12 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %11, i32 0, i32 9
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  %14 = call %struct.pnv_php_slot* @pnv_php_find_slot(%struct.device_node* %13)
  store %struct.pnv_php_slot* %14, %struct.pnv_php_slot** %4, align 8
  %15 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %16 = icmp ne %struct.pnv_php_slot* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %19 = call i32 @pnv_php_put_slot(%struct.pnv_php_slot* %18)
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %24 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %23, i32 0, i32 8
  %25 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %26 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %29 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %32 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_hp_register(i32* %24, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %39 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pci_warn(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %91

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %64, %44
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call %struct.device_node* @of_get_parent(%struct.device_node* %46)
  store %struct.device_node* %47, %struct.device_node** %5, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i32 @PCI_DN(%struct.device_node* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  br label %67

56:                                               ; preds = %49
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call %struct.pnv_php_slot* @pnv_php_find_slot(%struct.device_node* %57)
  store %struct.pnv_php_slot* %58, %struct.pnv_php_slot** %4, align 8
  %59 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %60 = icmp ne %struct.pnv_php_slot* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  br label %45

67:                                               ; preds = %61, %53, %45
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_lock_irqsave(i32* @pnv_php_lock, i64 %68)
  %70 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %71 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %72 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %71, i32 0, i32 3
  store %struct.pnv_php_slot* %70, %struct.pnv_php_slot** %72, align 8
  %73 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %74 = icmp ne %struct.pnv_php_slot* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %77 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %76, i32 0, i32 1
  %78 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %79 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  br label %85

81:                                               ; preds = %67
  %82 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %83 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %82, i32 0, i32 1
  %84 = call i32 @list_add_tail(i32* %83, i32* @pnv_php_slot_list)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* @pnv_php_lock, i64 %86)
  %88 = load i32, i32* @PNV_PHP_STATE_REGISTERED, align 4
  %89 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %90 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %37, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.pnv_php_slot* @pnv_php_find_slot(%struct.device_node*) #1

declare dso_local i32 @pnv_php_put_slot(%struct.pnv_php_slot*) #1

declare dso_local i32 @pci_hp_register(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_warn(i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
