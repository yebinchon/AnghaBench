; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_iport_port_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_iport_port_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun_acl = type { i32, %struct.se_node_acl* }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)* }
%struct.se_dev_entry = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_iport_port_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_iport_port_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_lun_acl*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.se_dev_entry*, align 8
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  %12 = call %struct.se_lun_acl* @iport_to_lacl(%struct.config_item* %11)
  store %struct.se_lun_acl* %12, %struct.se_lun_acl** %6, align 8
  %13 = load %struct.se_lun_acl*, %struct.se_lun_acl** %6, align 8
  %14 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %13, i32 0, i32 1
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %14, align 8
  store %struct.se_node_acl* %15, %struct.se_node_acl** %7, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %18 = load %struct.se_lun_acl*, %struct.se_lun_acl** %6, align 8
  %19 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %17, i32 %20)
  store %struct.se_dev_entry* %21, %struct.se_dev_entry** %8, align 8
  %22 = load %struct.se_dev_entry*, %struct.se_dev_entry** %8, align 8
  %23 = icmp ne %struct.se_dev_entry* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %30 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %29, i32 0, i32 0
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %30, align 8
  store %struct.se_portal_group* %31, %struct.se_portal_group** %9, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %35 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %37, align 8
  %39 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %40 = call i32 %38(%struct.se_portal_group* %39)
  %41 = call i32 @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %28, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.se_lun_acl* @iport_to_lacl(%struct.config_item*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
