; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_write_protect_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_write_protect_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun_acl = type { i32, %struct.se_node_acl* }
%struct.se_node_acl = type { i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"%s_ConfigFS: Changed Initiator ACL: %s Mapped LUN: %llu Write Protect bit to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_fabric_mappedlun_write_protect_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_fabric_mappedlun_write_protect_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_lun_acl*, align 8
  %9 = alloca %struct.se_node_acl*, align 8
  %10 = alloca %struct.se_portal_group*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.se_lun_acl* @item_to_lun_acl(%struct.config_item* %13)
  store %struct.se_lun_acl* %14, %struct.se_lun_acl** %8, align 8
  %15 = load %struct.se_lun_acl*, %struct.se_lun_acl** %8, align 8
  %16 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %15, i32 0, i32 1
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %16, align 8
  store %struct.se_node_acl* %17, %struct.se_node_acl** %9, align 8
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %19 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %18, i32 0, i32 1
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %19, align 8
  store %struct.se_portal_group* %20, %struct.se_portal_group** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 0, i64* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %30, %27
  %37 = load %struct.se_lun_acl*, %struct.se_lun_acl** %8, align 8
  %38 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.se_lun_acl*, %struct.se_lun_acl** %8, align 8
  %42 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %41, i32 0, i32 1
  %43 = load %struct.se_node_acl*, %struct.se_node_acl** %42, align 8
  %44 = call i32 @core_update_device_list_access(i32 %39, i64 %40, %struct.se_node_acl* %43)
  %45 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  %46 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %51 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.se_lun_acl*, %struct.se_lun_acl** %8, align 8
  %54 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i8* %59)
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %36, %33, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.se_lun_acl* @item_to_lun_acl(%struct.config_item*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @core_update_device_list_access(i32, i64, %struct.se_node_acl*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
