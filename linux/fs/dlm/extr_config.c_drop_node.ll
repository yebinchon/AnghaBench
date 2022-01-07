; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_drop_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_drop_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.config_item = type { i32 }
%struct.dlm_space = type { i32, i32 }
%struct.dlm_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @drop_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_node(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.dlm_space*, align 8
  %6 = alloca %struct.dlm_node*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %7 = load %struct.config_group*, %struct.config_group** %3, align 8
  %8 = getelementptr inbounds %struct.config_group, %struct.config_group* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dlm_space* @config_item_to_space(i32 %10)
  store %struct.dlm_space* %11, %struct.dlm_space** %5, align 8
  %12 = load %struct.config_item*, %struct.config_item** %4, align 8
  %13 = call %struct.dlm_node* @config_item_to_node(%struct.config_item* %12)
  store %struct.dlm_node* %13, %struct.dlm_node** %6, align 8
  %14 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %15 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.dlm_node*, %struct.dlm_node** %6, align 8
  %18 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.dlm_space*, %struct.dlm_space** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_space, %struct.dlm_space* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.config_item*, %struct.config_item** %4, align 8
  %28 = call i32 @config_item_put(%struct.config_item* %27)
  ret void
}

declare dso_local %struct.dlm_space* @config_item_to_space(i32) #1

declare dso_local %struct.dlm_node* @config_item_to_node(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
