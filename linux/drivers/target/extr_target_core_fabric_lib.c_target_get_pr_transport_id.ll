; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown proto_id: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_get_pr_transport_id(%struct.se_node_acl* %0, %struct.t10_pr_registration* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %6, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %11 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %41 [
    i32 130, label %15
    i32 129, label %20
    i32 128, label %25
    i32 132, label %30
    i32 131, label %35
  ]

15:                                               ; preds = %4
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @sas_get_pr_transport_id(%struct.se_node_acl* %16, i32* %17, i8* %18)
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @sbp_get_pr_transport_id(%struct.se_node_acl* %21, i32* %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %50

25:                                               ; preds = %4
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @srp_get_pr_transport_id(%struct.se_node_acl* %26, i32* %27, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @fc_get_pr_transport_id(%struct.se_node_acl* %31, i32* %32, i8* %33)
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %4
  %36 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %37 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @iscsi_get_pr_transport_id(%struct.se_node_acl* %36, %struct.t10_pr_registration* %37, i32* %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %50

41:                                               ; preds = %4
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %43 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %35, %30, %25, %20, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @sas_get_pr_transport_id(%struct.se_node_acl*, i32*, i8*) #1

declare dso_local i32 @sbp_get_pr_transport_id(%struct.se_node_acl*, i32*, i8*) #1

declare dso_local i32 @srp_get_pr_transport_id(%struct.se_node_acl*, i32*, i8*) #1

declare dso_local i32 @fc_get_pr_transport_id(%struct.se_node_acl*, i32*, i8*) #1

declare dso_local i32 @iscsi_get_pr_transport_id(%struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
