; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_space = type { i32, i32, i32 }
%struct.dlm_node = type { i32, i32, i32, %struct.config_item, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@node_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @make_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @make_node(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dlm_space*, align 8
  %7 = alloca %struct.dlm_node*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_group*, %struct.config_group** %4, align 8
  %9 = getelementptr inbounds %struct.config_group, %struct.config_group* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dlm_space* @config_item_to_space(i32 %11)
  store %struct.dlm_space* %12, %struct.dlm_space** %6, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.dlm_node* @kzalloc(i32 20, i32 %13)
  store %struct.dlm_node* %14, %struct.dlm_node** %7, align 8
  %15 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %16 = icmp ne %struct.dlm_node* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.config_item* @ERR_PTR(i32 %19)
  store %struct.config_item* %20, %struct.config_item** %3, align 8
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %22, i32 0, i32 3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @config_item_init_type_name(%struct.config_item* %23, i8* %24, i32* @node_type)
  %26 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 4
  %28 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %29 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %31 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %36 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %35, i32 0, i32 4
  %37 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %38 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %37, i32 0, i32 2
  %39 = call i32 @list_add(i32* %36, i32* %38)
  %40 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.dlm_space*, %struct.dlm_space** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.dlm_node*, %struct.dlm_node** %7, align 8
  %48 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %47, i32 0, i32 3
  store %struct.config_item* %48, %struct.config_item** %3, align 8
  br label %49

49:                                               ; preds = %21, %17
  %50 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %50
}

declare dso_local %struct.dlm_space* @config_item_to_space(i32) #1

declare dso_local %struct.dlm_node* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
