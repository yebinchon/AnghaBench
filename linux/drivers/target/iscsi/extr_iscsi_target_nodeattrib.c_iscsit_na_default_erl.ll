; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_default_erl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_default_erl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_node_acl = type { %struct.iscsi_node_attrib }
%struct.iscsi_node_attrib = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Requested default ERL: %u not 0, 1, or 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Set use ERL0 flag to %u for Initiator Node %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_na_default_erl(%struct.iscsi_node_acl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_node_acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_node_acl* %0, %struct.iscsi_node_acl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_node_acl, %struct.iscsi_node_acl* %7, i32 0, i32 0
  store %struct.iscsi_node_attrib* %8, %struct.iscsi_node_attrib** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %14, %11, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %4, align 8
  %30 = call i32 @iscsit_na_get_initiatorname(%struct.iscsi_node_acl* %29)
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iscsit_na_get_initiatorname(%struct.iscsi_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
