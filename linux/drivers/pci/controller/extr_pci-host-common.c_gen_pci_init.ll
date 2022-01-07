; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-host-common.c_gen_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-host-common.c_gen_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_config_window = type { i32 }
%struct.device = type { i32 }
%struct.list_head = type { i32 }
%struct.pci_ecam_ops = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"missing \22reg\22 property\0A\00", align 1
@gen_pci_unmap_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_config_window* (%struct.device*, %struct.list_head*, %struct.pci_ecam_ops*)* @gen_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_config_window* @gen_pci_init(%struct.device* %0, %struct.list_head* %1, %struct.pci_ecam_ops* %2) #0 {
  %4 = alloca %struct.pci_config_window*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.pci_ecam_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.pci_config_window*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.pci_ecam_ops* %2, %struct.pci_ecam_ops** %7, align 8
  store %struct.resource* null, %struct.resource** %10, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.list_head*, %struct.list_head** %6, align 8
  %14 = call i32 @pci_parse_request_of_pci_ranges(%struct.device* %12, %struct.list_head* %13, %struct.resource** %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.pci_config_window* @ERR_PTR(i32 %18)
  store %struct.pci_config_window* %19, %struct.pci_config_window** %4, align 8
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @of_address_to_resource(i32 %23, i32 0, %struct.resource* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %51

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.resource*, %struct.resource** %10, align 8
  %33 = load %struct.pci_ecam_ops*, %struct.pci_ecam_ops** %7, align 8
  %34 = call %struct.pci_config_window* @pci_ecam_create(%struct.device* %31, %struct.resource* %9, %struct.resource* %32, %struct.pci_ecam_ops* %33)
  store %struct.pci_config_window* %34, %struct.pci_config_window** %11, align 8
  %35 = load %struct.pci_config_window*, %struct.pci_config_window** %11, align 8
  %36 = call i64 @IS_ERR(%struct.pci_config_window* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.pci_config_window*, %struct.pci_config_window** %11, align 8
  %40 = call i32 @PTR_ERR(%struct.pci_config_window* %39)
  store i32 %40, i32* %8, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* @gen_pci_unmap_cfg, align 4
  %44 = load %struct.pci_config_window*, %struct.pci_config_window** %11, align 8
  %45 = call i32 @devm_add_action_or_reset(%struct.device* %42, i32 %43, %struct.pci_config_window* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.pci_config_window*, %struct.pci_config_window** %11, align 8
  store %struct.pci_config_window* %50, %struct.pci_config_window** %4, align 8
  br label %56

51:                                               ; preds = %48, %38, %27
  %52 = load %struct.list_head*, %struct.list_head** %6, align 8
  %53 = call i32 @pci_free_resource_list(%struct.list_head* %52)
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.pci_config_window* @ERR_PTR(i32 %54)
  store %struct.pci_config_window* %55, %struct.pci_config_window** %4, align 8
  br label %56

56:                                               ; preds = %51, %49, %17
  %57 = load %struct.pci_config_window*, %struct.pci_config_window** %4, align 8
  ret %struct.pci_config_window* %57
}

declare dso_local i32 @pci_parse_request_of_pci_ranges(%struct.device*, %struct.list_head*, %struct.resource**) #1

declare dso_local %struct.pci_config_window* @ERR_PTR(i32) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.pci_config_window* @pci_ecam_create(%struct.device*, %struct.resource*, %struct.resource*, %struct.pci_ecam_ops*) #1

declare dso_local i64 @IS_ERR(%struct.pci_config_window*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_config_window*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.pci_config_window*) #1

declare dso_local i32 @pci_free_resource_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
