; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_iport_port_ident_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_iport_port_ident_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun_acl = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i8*, i32, %struct.se_portal_group*, %struct.se_session* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_session*, i8*, i32)* }
%struct.se_session = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s+i+%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_iport_port_ident_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_iport_port_ident_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_lun_acl*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.config_item*, %struct.config_item** %4, align 8
  %13 = call %struct.se_lun_acl* @iport_to_lacl(%struct.config_item* %12)
  store %struct.se_lun_acl* %13, %struct.se_lun_acl** %6, align 8
  %14 = load %struct.se_lun_acl*, %struct.se_lun_acl** %6, align 8
  %15 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %14, i32 0, i32 0
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %7, align 8
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %18 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 3
  %22 = load %struct.se_session*, %struct.se_session** %21, align 8
  store %struct.se_session* %22, %struct.se_session** %8, align 8
  %23 = load %struct.se_session*, %struct.se_session** %8, align 8
  %24 = icmp ne %struct.se_session* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %27 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %33 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %32, i32 0, i32 2
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %33, align 8
  store %struct.se_portal_group* %34, %struct.se_portal_group** %9, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %36 = call i32 @memset(i8* %35, i32 0, i32 64)
  %37 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %38 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.se_session*, i8*, i32)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %45 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %47, align 8
  %49 = load %struct.se_session*, %struct.se_session** %8, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %51 = call i32 %48(%struct.se_session* %49, i8* %50, i32 64)
  br label %52

52:                                               ; preds = %43, %31
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %56 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %59 = call i32 @snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %61 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %52, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.se_lun_acl* @iport_to_lacl(%struct.config_item*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
