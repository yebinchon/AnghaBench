; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_register_fabric.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_register_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.target_fabric_configfs = type { i8, i8, %struct.config_group, %struct.config_group, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [54 x i8] c"Target_Core_ConfigFS: REGISTER -> group: %p name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"target_core_register_fabric() trying autoload for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"iscsi_target_mod\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"request_module() failed for iscsi_target_mod.ko: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"tcm_loop\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"request_module() failed for tcm_loop.ko: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"target_core_get_fabric() failed for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Target_Core_ConfigFS: REGISTER -> Located fabric: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Target_Core_ConfigFS: REGISTER tfc_wwn_cit -> %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"discovery_auth\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Target_Core_ConfigFS: REGISTER -> Allocated Fabric: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_register_fabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_register_fabric(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.target_fabric_configfs*, align 8
  %7 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_group*, %struct.config_group** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.config_group* %8, i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.target_fabric_configfs* @target_core_get_fabric(i8* %11)
  store %struct.target_fabric_configfs* %12, %struct.target_fabric_configfs** %6, align 8
  %13 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %14 = icmp ne %struct.target_fabric_configfs* %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = call i32 @request_module(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.config_group* @ERR_PTR(i32 %29)
  store %struct.config_group* %30, %struct.config_group** %3, align 8
  br label %93

31:                                               ; preds = %21
  br label %48

32:                                               ; preds = %15
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.config_group* @ERR_PTR(i32 %44)
  store %struct.config_group* %45, %struct.config_group** %3, align 8
  br label %93

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i8*, i8** %5, align 8
  %50 = call %struct.target_fabric_configfs* @target_core_get_fabric(i8* %49)
  store %struct.target_fabric_configfs* %50, %struct.target_fabric_configfs** %6, align 8
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %53 = icmp ne %struct.target_fabric_configfs* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.config_group* @ERR_PTR(i32 %58)
  store %struct.config_group* %59, %struct.config_group** %3, align 8
  br label %93

60:                                               ; preds = %51
  %61 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %62 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %65)
  %67 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %68 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %67, i32 0, i32 0
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %68)
  %70 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %71 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %70, i32 0, i32 2
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %74 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %73, i32 0, i32 0
  %75 = call i32 @config_group_init_type_name(%struct.config_group* %71, i8* %72, i8* %74)
  %76 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %77 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %76, i32 0, i32 3
  %78 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %79 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %78, i32 0, i32 1
  %80 = call i32 @config_group_init_type_name(%struct.config_group* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %79)
  %81 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %82 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %81, i32 0, i32 3
  %83 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %84 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %83, i32 0, i32 2
  %85 = call i32 @configfs_add_default_group(%struct.config_group* %82, %struct.config_group* %84)
  %86 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %87 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.config_group, %struct.config_group* %87, i32 0, i32 0
  %89 = call i8* @config_item_name(i32* %88)
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8* %89)
  %91 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %92 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %91, i32 0, i32 2
  store %struct.config_group* %92, %struct.config_group** %3, align 8
  br label %93

93:                                               ; preds = %60, %54, %40, %25
  %94 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %94
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.target_fabric_configfs* @target_core_get_fabric(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i8*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i8* @config_item_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
