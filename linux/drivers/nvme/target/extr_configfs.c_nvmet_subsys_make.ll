; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.nvmet_subsys = type { %struct.config_group, %struct.config_group, %struct.config_group }

@NVME_DISC_SUBSYS_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"can't create discovery subsystem through configfs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVME_NQN_NVME = common dso_local global i32 0, align 4
@nvmet_subsys_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"namespaces\00", align 1
@nvmet_namespaces_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"allowed_hosts\00", align 1
@nvmet_allowed_hosts_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @nvmet_subsys_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @nvmet_subsys_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_subsys*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @NVME_DISC_SUBSYS_NAME, align 4
  %9 = call i64 @sysfs_streq(i8* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.config_group* @ERR_PTR(i32 %14)
  store %struct.config_group* %15, %struct.config_group** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @NVME_NQN_NVME, align 4
  %19 = call %struct.nvmet_subsys* @nvmet_subsys_alloc(i8* %17, i32 %18)
  store %struct.nvmet_subsys* %19, %struct.nvmet_subsys** %6, align 8
  %20 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %21 = call i64 @IS_ERR(%struct.nvmet_subsys* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %25 = call %struct.config_group* @ERR_CAST(%struct.nvmet_subsys* %24)
  store %struct.config_group* %25, %struct.config_group** %3, align 8
  br label %49

26:                                               ; preds = %16
  %27 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %28 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %27, i32 0, i32 0
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @config_group_init_type_name(%struct.config_group* %28, i8* %29, i32* @nvmet_subsys_type)
  %31 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %32 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %31, i32 0, i32 2
  %33 = call i32 @config_group_init_type_name(%struct.config_group* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @nvmet_namespaces_type)
  %34 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %35 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %34, i32 0, i32 2
  %36 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %37 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %36, i32 0, i32 0
  %38 = call i32 @configfs_add_default_group(%struct.config_group* %35, %struct.config_group* %37)
  %39 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %40 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %39, i32 0, i32 1
  %41 = call i32 @config_group_init_type_name(%struct.config_group* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* @nvmet_allowed_hosts_type)
  %42 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %43 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %42, i32 0, i32 1
  %44 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %45 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %44, i32 0, i32 0
  %46 = call i32 @configfs_add_default_group(%struct.config_group* %43, %struct.config_group* %45)
  %47 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %48 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %47, i32 0, i32 0
  store %struct.config_group* %48, %struct.config_group** %3, align 8
  br label %49

49:                                               ; preds = %26, %23, %11
  %50 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %50
}

declare dso_local i64 @sysfs_streq(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.nvmet_subsys* @nvmet_subsys_alloc(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nvmet_subsys*) #1

declare dso_local %struct.config_group* @ERR_CAST(%struct.nvmet_subsys*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
