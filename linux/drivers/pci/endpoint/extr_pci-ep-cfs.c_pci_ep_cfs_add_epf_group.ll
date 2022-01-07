; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_ep_cfs_add_epf_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_ep_cfs_add_epf_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }

@functions_group = common dso_local global i32 0, align 4
@pci_epf_group_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to register configfs group for %s function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_group* @pci_ep_cfs_add_epf_group(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.config_group*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @functions_group, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.config_group* @configfs_register_default_group(i32 %4, i8* %5, i32* @pci_epf_group_type)
  store %struct.config_group* %6, %struct.config_group** %3, align 8
  %7 = load %struct.config_group*, %struct.config_group** %3, align 8
  %8 = call i64 @IS_ERR(%struct.config_group* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %14
}

declare dso_local %struct.config_group* @configfs_register_default_group(i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.config_group*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
