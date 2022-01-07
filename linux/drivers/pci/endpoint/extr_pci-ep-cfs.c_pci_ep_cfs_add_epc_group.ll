; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_ep_cfs_add_epc_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_ep_cfs_add_epc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.pci_epc = type { i32 }
%struct.pci_epc_group = type { %struct.pci_epc*, %struct.config_group }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pci_epc_type = common dso_local global i32 0, align 4
@controllers_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to register configfs group for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_group* @pci_ep_cfs_add_epc_group(i8* %0) #0 {
  %2 = alloca %struct.config_group*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca %struct.pci_epc_group*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pci_epc_group* @kzalloc(i32 16, i32 %8)
  store %struct.pci_epc_group* %9, %struct.pci_epc_group** %7, align 8
  %10 = load %struct.pci_epc_group*, %struct.pci_epc_group** %7, align 8
  %11 = icmp ne %struct.pci_epc_group* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.pci_epc_group*, %struct.pci_epc_group** %7, align 8
  %17 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %16, i32 0, i32 1
  store %struct.config_group* %17, %struct.config_group** %6, align 8
  %18 = load %struct.config_group*, %struct.config_group** %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @config_group_init_type_name(%struct.config_group* %18, i8* %19, i32* @pci_epc_type)
  %21 = load i32, i32* @controllers_group, align 4
  %22 = load %struct.config_group*, %struct.config_group** %6, align 8
  %23 = call i32 @configfs_register_group(i32 %21, %struct.config_group* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %46

29:                                               ; preds = %15
  %30 = load i8*, i8** %3, align 8
  %31 = call %struct.pci_epc* @pci_epc_get(i8* %30)
  store %struct.pci_epc* %31, %struct.pci_epc** %5, align 8
  %32 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %33 = call i64 @IS_ERR(%struct.pci_epc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.pci_epc* %36)
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %40 = load %struct.pci_epc_group*, %struct.pci_epc_group** %7, align 8
  %41 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %40, i32 0, i32 0
  store %struct.pci_epc* %39, %struct.pci_epc** %41, align 8
  %42 = load %struct.config_group*, %struct.config_group** %6, align 8
  store %struct.config_group* %42, %struct.config_group** %2, align 8
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.config_group*, %struct.config_group** %6, align 8
  %45 = call i32 @configfs_unregister_group(%struct.config_group* %44)
  br label %46

46:                                               ; preds = %43, %26
  %47 = load %struct.pci_epc_group*, %struct.pci_epc_group** %7, align 8
  %48 = call i32 @kfree(%struct.pci_epc_group* %47)
  br label %49

49:                                               ; preds = %46, %12
  %50 = load i32, i32* %4, align 4
  %51 = call %struct.config_group* @ERR_PTR(i32 %50)
  store %struct.config_group* %51, %struct.config_group** %2, align 8
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.config_group*, %struct.config_group** %2, align 8
  ret %struct.config_group* %53
}

declare dso_local %struct.pci_epc_group* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_register_group(i32, %struct.config_group*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.pci_epc* @pci_epc_get(i8*) #1

declare dso_local i64 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_epc*) #1

declare dso_local i32 @configfs_unregister_group(%struct.config_group*) #1

declare dso_local i32 @kfree(%struct.pci_epc_group*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
