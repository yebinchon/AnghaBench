; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_snmp_get_tiqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_snmp_get_tiqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tiqn = type { i32 }
%struct.iscsi_conn = type { %struct.iscsi_portal_group* }
%struct.iscsi_portal_group = type { %struct.iscsi_tiqn* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_tiqn* @iscsit_snmp_get_tiqn(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_tiqn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_portal_group*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = icmp ne %struct.iscsi_conn* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.iscsi_tiqn* null, %struct.iscsi_tiqn** %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %10, align 8
  store %struct.iscsi_portal_group* %11, %struct.iscsi_portal_group** %4, align 8
  %12 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %13 = icmp ne %struct.iscsi_portal_group* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store %struct.iscsi_tiqn* null, %struct.iscsi_tiqn** %2, align 8
  br label %25

15:                                               ; preds = %8
  %16 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %16, i32 0, i32 0
  %18 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %17, align 8
  %19 = icmp ne %struct.iscsi_tiqn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.iscsi_tiqn* null, %struct.iscsi_tiqn** %2, align 8
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %22, i32 0, i32 0
  %24 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %23, align 8
  store %struct.iscsi_tiqn* %24, %struct.iscsi_tiqn** %2, align 8
  br label %25

25:                                               ; preds = %21, %20, %14, %7
  %26 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  ret %struct.iscsi_tiqn* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
