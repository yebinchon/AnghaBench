; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_alua_create_lu_gp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_alua_create_lu_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.config_item }
%struct.config_item = type { i32 }
%struct.t10_alua_lu_gp = type { %struct.config_group }

@target_core_alua_lu_gp_cit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Target_Core_ConfigFS: Allocated ALUA Logical Unit Group: core/alua/lu_gps/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_alua_create_lu_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_alua_create_lu_gp(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.t10_alua_lu_gp*, align 8
  %7 = alloca %struct.config_group*, align 8
  %8 = alloca %struct.config_item*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.config_group* null, %struct.config_group** %7, align 8
  store %struct.config_item* null, %struct.config_item** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.t10_alua_lu_gp* @core_alua_allocate_lu_gp(i8* %9, i32 0)
  store %struct.t10_alua_lu_gp* %10, %struct.t10_alua_lu_gp** %6, align 8
  %11 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %12 = call i64 @IS_ERR(%struct.t10_alua_lu_gp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.config_group* null, %struct.config_group** %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %17 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %16, i32 0, i32 0
  store %struct.config_group* %17, %struct.config_group** %7, align 8
  %18 = load %struct.config_group*, %struct.config_group** %7, align 8
  %19 = getelementptr inbounds %struct.config_group, %struct.config_group* %18, i32 0, i32 0
  store %struct.config_item* %19, %struct.config_item** %8, align 8
  %20 = load %struct.config_group*, %struct.config_group** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @config_group_init_type_name(%struct.config_group* %20, i8* %21, i32* @target_core_alua_lu_gp_cit)
  %23 = load %struct.config_item*, %struct.config_item** %8, align 8
  %24 = call i32 @config_item_name(%struct.config_item* %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.config_group*, %struct.config_group** %7, align 8
  store %struct.config_group* %26, %struct.config_group** %3, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %28
}

declare dso_local %struct.t10_alua_lu_gp* @core_alua_allocate_lu_gp(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.t10_alua_lu_gp*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @config_item_name(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
