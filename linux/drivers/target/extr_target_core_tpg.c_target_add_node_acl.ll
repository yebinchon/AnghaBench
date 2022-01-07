; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_add_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_add_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32, i64, i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.se_portal_group*)* }

@.str = private unnamed_addr constant [73 x i8] c"%s_TPG[%hu] - Added %s ACL with TCQ Depth: %d for %s Initiator Node: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_node_acl*)* @target_add_node_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_add_node_acl(%struct.se_node_acl* %0) #0 {
  %2 = alloca %struct.se_node_acl*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %2, align 8
  %4 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %5 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %4, i32 0, i32 4
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  store %struct.se_portal_group* %6, %struct.se_portal_group** %3, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %8 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %11 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %10, i32 0, i32 3
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %13 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %12, i32 0, i32 2
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %16 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %19 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %24 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %26, align 8
  %28 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %29 = call i32 %27(%struct.se_portal_group* %28)
  %30 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %31 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %37 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %40 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %45 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %29, i8* %35, i32 %38, i32 %43, i32 %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
