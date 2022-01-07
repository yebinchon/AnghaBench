; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_get_pr_transport_id_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_get_pr_transport_id_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown proto_id: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_get_pr_transport_id_len(%struct.se_node_acl* %0, %struct.t10_pr_registration* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca %struct.t10_pr_registration*, align 8
  %7 = alloca i32*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %5, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %9 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 132, label %13
    i32 129, label %13
    i32 128, label %13
    i32 130, label %13
    i32 131, label %14
  ]

13:                                               ; preds = %3, %3, %3, %3
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %16 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @iscsi_get_pr_transport_id_len(%struct.se_node_acl* %15, %struct.t10_pr_registration* %16, i32* %17)
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %13
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  store i32 24, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %19, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @iscsi_get_pr_transport_id_len(%struct.se_node_acl*, %struct.t10_pr_registration*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
