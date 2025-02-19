; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_drop_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_drop_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item = type { i32 }
%struct.dlm_cluster = type { i32 }

@space_list = common dso_local global i32* null, align 8
@comm_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @drop_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_cluster(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.dlm_cluster*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %6 = load %struct.config_item*, %struct.config_item** %4, align 8
  %7 = call %struct.dlm_cluster* @config_item_to_cluster(%struct.config_item* %6)
  store %struct.dlm_cluster* %7, %struct.dlm_cluster** %5, align 8
  %8 = load %struct.dlm_cluster*, %struct.dlm_cluster** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %8, i32 0, i32 0
  %10 = call i32 @configfs_remove_default_groups(i32* %9)
  store i32* null, i32** @space_list, align 8
  store i32* null, i32** @comm_list, align 8
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  %12 = call i32 @config_item_put(%struct.config_item* %11)
  ret void
}

declare dso_local %struct.dlm_cluster* @config_item_to_cluster(%struct.config_item*) #1

declare dso_local i32 @configfs_remove_default_groups(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
