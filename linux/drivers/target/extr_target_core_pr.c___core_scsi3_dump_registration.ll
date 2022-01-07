; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c___core_scsi3_dump_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c___core_scsi3_dump_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_core_fabric_ops = type { i32, i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group.0*)* }
%struct.se_portal_group = type opaque
%struct.se_portal_group.0 = type opaque
%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_node_acl = type { i32, %struct.se_portal_group.1* }
%struct.se_portal_group.1 = type { i32 }
%struct.t10_pr_registration = type { i8*, i8*, i32, i64 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"SPC-3 PR [%s] Service Action: REGISTER%s Initiator Node: %s%s\0A\00", align 1
@REGISTER_AND_MOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"_AND_MOVE\00", align 1
@REGISTER_AND_IGNORE_EXISTING_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"_AND_IGNORE_EXISTING_KEY\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"SPC-3 PR [%s] registration on Target Port: %s,0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"SPC-3 PR [%s] for %s TCM Subsystem %s Object Target Port(s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration: 0x%08x  APTPL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_core_fabric_ops*, %struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32)* @__core_scsi3_dump_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__core_scsi3_dump_registration(%struct.target_core_fabric_ops* %0, %struct.se_device* %1, %struct.se_node_acl* %2, %struct.t10_pr_registration* %3, i32 %4) #0 {
  %6 = alloca %struct.target_core_fabric_ops*, align 8
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.t10_pr_registration*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_portal_group.1*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.target_core_fabric_ops* %0, %struct.target_core_fabric_ops** %6, align 8
  store %struct.se_device* %1, %struct.se_device** %7, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %8, align 8
  store %struct.t10_pr_registration* %3, %struct.t10_pr_registration** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 1
  %16 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %15, align 8
  store %struct.se_portal_group.1* %16, %struct.se_portal_group.1** %11, align 8
  %17 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %25 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %26 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %24, i8* %20, i32 %25)
  %27 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %28 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @REGISTER_AND_MOVE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %40

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @REGISTER_AND_IGNORE_EXISTING_KEY, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %33 ], [ %39, %34 ]
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %43 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %41, i32 %44, i8* %20)
  %46 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %47 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %50 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %49, i32 0, i32 2
  %51 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %50, align 8
  %52 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %11, align 8
  %53 = bitcast %struct.se_portal_group.1* %52 to %struct.se_portal_group.0*
  %54 = call i32 %51(%struct.se_portal_group.0* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %58 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %57, i32 0, i32 1
  %59 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %58, align 8
  %60 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %11, align 8
  %61 = bitcast %struct.se_portal_group.1* %60 to %struct.se_portal_group*
  %62 = call i32 %59(%struct.se_portal_group* %61)
  %63 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %48, i8* %56, i32 %62)
  %64 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %65 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %68 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %73 = load %struct.se_device*, %struct.se_device** %7, align 8
  %74 = getelementptr inbounds %struct.se_device, %struct.se_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %66, i8* %72, i32 %77)
  %79 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %6, align 8
  %80 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %83 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %86 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %89 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i32, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %81, i8* %84, i32 %87, i8* %90)
  %92 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
