; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_set_nacl_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_set_nacl_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_node_acl = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Queue depth for %s Initiator Node: %s is 0,defaulting to 1.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_portal_group*, %struct.se_node_acl*, i32)* @target_set_nacl_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_set_nacl_queue_depth(%struct.se_portal_group* %0, %struct.se_node_acl* %1, i32 %2) #0 {
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %9 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %11 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %16 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %25 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
