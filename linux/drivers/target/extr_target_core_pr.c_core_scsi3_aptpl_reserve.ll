; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_aptpl_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_aptpl_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.t10_pr_registration* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.t10_pr_registration = type { i64, i32 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"SPC-3 PR [%s] Service Action: APTPL RESERVE created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SPC-3 PR [%s] RESERVE Node: %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*)* @core_scsi3_aptpl_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_scsi3_aptpl_reserve(%struct.se_device* %0, %struct.se_portal_group* %1, %struct.se_node_acl* %2, %struct.t10_pr_registration* %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %7, align 8
  store %struct.t10_pr_registration* %3, %struct.t10_pr_registration** %8, align 8
  %11 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %18 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %19 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %17, i8* %14, i32 %18)
  %20 = load %struct.se_device*, %struct.se_device** %5, align 8
  %21 = getelementptr inbounds %struct.se_device, %struct.se_device* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %24 = load %struct.se_device*, %struct.se_device** %5, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 1
  store %struct.t10_pr_registration* %23, %struct.t10_pr_registration** %25, align 8
  %26 = load %struct.se_device*, %struct.se_device** %5, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %30 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %35 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @core_scsi3_pr_dump_type(i32 %36)
  %38 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %39 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %43)
  %45 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %46 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %51 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52, i8* %14)
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #2

declare dso_local i32 @core_scsi3_pr_dump_type(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
