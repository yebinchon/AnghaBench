; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_device.c_iscsit_determine_maxcmdsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_device.c_iscsit_determine_maxcmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_determine_maxcmdsn(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca %struct.se_node_acl*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %4 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %3, align 8
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %18 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %23 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 0
  %28 = call i32 @atomic_add(i64 %25, i32* %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @atomic_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
