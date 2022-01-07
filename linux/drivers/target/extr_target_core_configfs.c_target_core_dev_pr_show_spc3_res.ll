; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc3_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc3_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No SPC-3 Reservation holder\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SPC-3 Reservation: %s Initiator: %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_spc3_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_spc3_res(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.se_device*, %struct.se_device** %4, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %18, align 8
  store %struct.t10_pr_registration* %19, %struct.t10_pr_registration** %7, align 8
  %20 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %21 = icmp ne %struct.t10_pr_registration* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %27 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %26, i32 0, i32 0
  %28 = load %struct.se_node_acl*, %struct.se_node_acl** %27, align 8
  store %struct.se_node_acl* %28, %struct.se_node_acl** %6, align 8
  %29 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %30 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %31 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %29, i8* %14, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %34 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %41 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %42, i8* %14)
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
