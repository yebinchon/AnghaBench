; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.dlm_space = type { %struct.config_group, i64, i32, i32, %struct.config_group }
%struct.dlm_nodes = type { %struct.config_group, i64, i32, i32, %struct.config_group }

@GFP_NOFS = common dso_local global i32 0, align 4
@space_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@nodes_type = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @make_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @make_space(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dlm_space*, align 8
  %7 = alloca %struct.dlm_nodes*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dlm_space* null, %struct.dlm_space** %6, align 8
  store %struct.dlm_nodes* null, %struct.dlm_nodes** %7, align 8
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.dlm_space* @kzalloc(i32 32, i32 %8)
  store %struct.dlm_space* %9, %struct.dlm_space** %6, align 8
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.dlm_space* @kzalloc(i32 32, i32 %10)
  %12 = bitcast %struct.dlm_space* %11 to %struct.dlm_nodes*
  store %struct.dlm_nodes* %12, %struct.dlm_nodes** %7, align 8
  %13 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %14 = icmp ne %struct.dlm_space* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.dlm_nodes*, %struct.dlm_nodes** %7, align 8
  %17 = icmp ne %struct.dlm_nodes* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %2
  br label %42

19:                                               ; preds = %15
  %20 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %21 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @config_group_init_type_name(%struct.config_group* %21, i8* %22, i32* @space_type)
  %24 = load %struct.dlm_nodes*, %struct.dlm_nodes** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_nodes, %struct.dlm_nodes* %24, i32 0, i32 4
  %26 = call i32 @config_group_init_type_name(%struct.config_group* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @nodes_type)
  %27 = load %struct.dlm_nodes*, %struct.dlm_nodes** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_nodes, %struct.dlm_nodes* %27, i32 0, i32 4
  %29 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %29, i32 0, i32 0
  %31 = call i32 @configfs_add_default_group(%struct.config_group* %28, %struct.config_group* %30)
  %32 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %40, i32 0, i32 0
  store %struct.config_group* %41, %struct.config_group** %3, align 8
  br label %51

42:                                               ; preds = %18
  %43 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %44 = call i32 @kfree(%struct.dlm_space* %43)
  %45 = load %struct.dlm_nodes*, %struct.dlm_nodes** %7, align 8
  %46 = bitcast %struct.dlm_nodes* %45 to %struct.dlm_space*
  %47 = call i32 @kfree(%struct.dlm_space* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.config_group* @ERR_PTR(i32 %49)
  store %struct.config_group* %50, %struct.config_group** %3, align 8
  br label %51

51:                                               ; preds = %42, %19
  %52 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %52
}

declare dso_local %struct.dlm_space* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.dlm_space*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
