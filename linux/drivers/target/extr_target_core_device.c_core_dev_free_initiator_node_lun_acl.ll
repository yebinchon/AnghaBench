; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_free_initiator_node_lun_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_free_initiator_node_lun_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.se_portal_group*)* }
%struct.se_lun_acl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"%s_TPG[%hu] - Freeing ACL for %s InitiatorNode: %s Mapped LUN: %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_dev_free_initiator_node_lun_acl(%struct.se_portal_group* %0, %struct.se_lun_acl* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_lun_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %4, align 8
  %5 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %6 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %11 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %13, align 8
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %16 = call i32 %14(%struct.se_portal_group* %15)
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %18 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %23 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %28 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %16, i32 %21, i32 %26, i32 %29)
  %31 = load %struct.se_lun_acl*, %struct.se_lun_acl** %4, align 8
  %32 = call i32 @kfree(%struct.se_lun_acl* %31)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.se_lun_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
