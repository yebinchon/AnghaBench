; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_nopin_response_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_nopin_response_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_node_acl = type { %struct.iscsi_node_attrib }
%struct.iscsi_node_attrib = type { i32, i64 }

@NA_NOPIN_RESPONSE_TIMEOUT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Requested NopIn Response Timeout %u larger than maximum %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NA_NOPIN_RESPONSE_TIMEOUT_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Requested NopIn Response Timeout %u smaller than minimum %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Set NopIn Response Timeout to %u for Initiator Node %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_na_nopin_response_timeout(%struct.iscsi_node_acl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_node_acl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_node_acl* %0, %struct.iscsi_node_acl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_node_acl, %struct.iscsi_node_acl* %7, i32 0, i32 0
  store %struct.iscsi_node_attrib* %8, %struct.iscsi_node_attrib** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NA_NOPIN_RESPONSE_TIMEOUT_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NA_NOPIN_RESPONSE_TIMEOUT_MAX, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NA_NOPIN_RESPONSE_TIMEOUT_MIN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @NA_NOPIN_RESPONSE_TIMEOUT_MIN, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %4, align 8
  %37 = call i32 @iscsit_na_get_initiatorname(%struct.iscsi_node_acl* %36)
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %22, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iscsit_na_get_initiatorname(%struct.iscsi_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
