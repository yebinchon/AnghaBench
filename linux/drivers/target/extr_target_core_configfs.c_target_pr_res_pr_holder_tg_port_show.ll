; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_pr_holder_tg_port_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_pr_holder_tg_port_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { i32, %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { i8*, i32, %struct.se_node_acl* }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.target_core_fabric_ops* }
%struct.target_core_fabric_ops = type { i8*, i8* (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.1*)* }
%struct.se_portal_group.0 = type opaque
%struct.se_portal_group.1 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"No SPC-3 Reservation holder\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SPC-3 Reservation: %s Target Node Endpoint: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"SPC-3 Reservation: Relative Port Identifier Tag: %hu %s Portal Group Tag: %hu %s Logical Unit: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_pr_res_pr_holder_tg_port_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_pr_res_pr_holder_tg_port_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.config_item*, %struct.config_item** %3, align 8
  %12 = call %struct.se_device* @pr_to_dev(%struct.config_item* %11)
  store %struct.se_device* %12, %struct.se_device** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.se_device*, %struct.se_device** %5, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.se_device*, %struct.se_device** %5, align 8
  %17 = getelementptr inbounds %struct.se_device, %struct.se_device* %16, i32 0, i32 1
  %18 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %17, align 8
  store %struct.t10_pr_registration* %18, %struct.t10_pr_registration** %8, align 8
  %19 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %20 = icmp ne %struct.t10_pr_registration* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %10, align 4
  br label %75

24:                                               ; preds = %2
  %25 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %26 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %25, i32 0, i32 2
  %27 = load %struct.se_node_acl*, %struct.se_node_acl** %26, align 8
  store %struct.se_node_acl* %27, %struct.se_node_acl** %6, align 8
  %28 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %29 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %28, i32 0, i32 0
  %30 = load %struct.se_portal_group*, %struct.se_portal_group** %29, align 8
  store %struct.se_portal_group* %30, %struct.se_portal_group** %7, align 8
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 0
  %33 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %32, align 8
  store %struct.target_core_fabric_ops* %33, %struct.target_core_fabric_ops** %9, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %39 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %42 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %41, i32 0, i32 1
  %43 = load i8* (%struct.se_portal_group.0*)*, i8* (%struct.se_portal_group.0*)** %42, align 8
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %45 = bitcast %struct.se_portal_group* %44 to %struct.se_portal_group.0*
  %46 = call i8* %43(%struct.se_portal_group.0* %45)
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %55 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %58 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %61 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %60, i32 0, i32 2
  %62 = load i32 (%struct.se_portal_group.1*)*, i32 (%struct.se_portal_group.1*)** %61, align 8
  %63 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %64 = bitcast %struct.se_portal_group* %63 to %struct.se_portal_group.1*
  %65 = call i32 %62(%struct.se_portal_group.1* %64)
  %66 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %67 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %70 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %59, i32 %65, i8* %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %24, %21
  %76 = load %struct.se_device*, %struct.se_device** %5, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.se_device* @pr_to_dev(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
