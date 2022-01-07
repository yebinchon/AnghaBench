; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_of_nvmem_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_of_nvmem_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@nvmem_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmem_device* (%struct.device_node*)* @of_nvmem_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmem_device* @of_nvmem_find(%struct.device_node* %0) #0 {
  %2 = alloca %struct.nvmem_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.nvmem_device* null, %struct.nvmem_device** %2, align 8
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call %struct.device* @bus_find_device_by_of_node(i32* @nvmem_bus_type, %struct.device_node* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store %struct.nvmem_device* null, %struct.nvmem_device** %2, align 8
  br label %17

14:                                               ; preds = %8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.nvmem_device* @to_nvmem_device(%struct.device* %15)
  store %struct.nvmem_device* %16, %struct.nvmem_device** %2, align 8
  br label %17

17:                                               ; preds = %14, %13, %7
  %18 = load %struct.nvmem_device*, %struct.nvmem_device** %2, align 8
  ret %struct.nvmem_device* %18
}

declare dso_local %struct.device* @bus_find_device_by_of_node(i32*, %struct.device_node*) #1

declare dso_local %struct.nvmem_device* @to_nvmem_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
