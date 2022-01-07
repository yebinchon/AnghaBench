; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_stat.c_iscsi_stat_sess_node_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_stat.c_iscsi_stat_sess_node_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.iscsi_node_acl = type { %struct.se_node_acl }
%struct.se_node_acl = type { i32, %struct.se_session* }
%struct.se_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ISCSI_NODE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @iscsi_stat_sess_node_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_stat_sess_node_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iscsi_node_acl*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.iscsi_session*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.config_item*, %struct.config_item** %3, align 8
  %11 = call %struct.iscsi_node_acl* @iscsi_stat_nacl(%struct.config_item* %10)
  store %struct.iscsi_node_acl* %11, %struct.iscsi_node_acl** %5, align 8
  %12 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_node_acl, %struct.iscsi_node_acl* %12, i32 0, i32 0
  store %struct.se_node_acl* %13, %struct.se_node_acl** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %18 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %17, i32 0, i32 1
  %19 = load %struct.se_session*, %struct.se_session** %18, align 8
  store %struct.se_session* %19, %struct.se_session** %8, align 8
  %20 = load %struct.se_session*, %struct.se_session** %8, align 8
  %21 = icmp ne %struct.se_session* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.se_session*, %struct.se_session** %8, align 8
  %24 = getelementptr inbounds %struct.se_session, %struct.se_session* %23, i32 0, i32 0
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %24, align 8
  store %struct.iscsi_session* %25, %struct.iscsi_session** %7, align 8
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  %27 = icmp ne %struct.iscsi_session* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @ISCSI_NODE_INDEX, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %22
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %46 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local %struct.iscsi_node_acl* @iscsi_stat_nacl(%struct.config_item*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
