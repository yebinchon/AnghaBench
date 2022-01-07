; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_set_default_node_attribues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_set_default_node_attribues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_node_acl = type { %struct.iscsi_node_attrib }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_portal_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NA_DATAOUT_TIMEOUT = common dso_local global i32 0, align 4
@NA_DATAOUT_TIMEOUT_RETRIES = common dso_local global i32 0, align 4
@NA_NOPIN_TIMEOUT = common dso_local global i32 0, align 4
@NA_NOPIN_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@NA_RANDOM_DATAIN_PDU_OFFSETS = common dso_local global i32 0, align 4
@NA_RANDOM_DATAIN_SEQ_OFFSETS = common dso_local global i32 0, align 4
@NA_RANDOM_R2T_OFFSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_set_default_node_attribues(%struct.iscsi_node_acl* %0, %struct.iscsi_portal_group* %1) #0 {
  %3 = alloca %struct.iscsi_node_acl*, align 8
  %4 = alloca %struct.iscsi_portal_group*, align 8
  %5 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_node_acl* %0, %struct.iscsi_node_acl** %3, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %4, align 8
  %6 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_node_acl, %struct.iscsi_node_acl* %6, i32 0, i32 0
  store %struct.iscsi_node_attrib* %7, %struct.iscsi_node_attrib** %5, align 8
  %8 = load i32, i32* @NA_DATAOUT_TIMEOUT, align 4
  %9 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @NA_DATAOUT_TIMEOUT_RETRIES, align 4
  %12 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @NA_NOPIN_TIMEOUT, align 4
  %15 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @NA_NOPIN_RESPONSE_TIMEOUT, align 4
  %18 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @NA_RANDOM_DATAIN_PDU_OFFSETS, align 4
  %21 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @NA_RANDOM_DATAIN_SEQ_OFFSETS, align 4
  %24 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @NA_RANDOM_R2T_OFFSETS, align 4
  %27 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
