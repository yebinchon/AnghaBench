; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_init_initiator_node_lun_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_init_initiator_node_lun_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun_acl = type { %struct.se_node_acl*, i32 }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_node_acl = type { i32 }

@TRANSPORT_IQN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s InitiatorName exceeds maximum size.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to allocate memory for struct se_lun_acl.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_lun_acl* @core_dev_init_initiator_node_lun_acl(%struct.se_portal_group* %0, %struct.se_node_acl* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.se_lun_acl*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.se_lun_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = load i64, i64* @TRANSPORT_IQN_LEN, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %19 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EOVERFLOW, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store %struct.se_lun_acl* null, %struct.se_lun_acl** %5, align 8
  br label %45

27:                                               ; preds = %4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.se_lun_acl* @kzalloc(i32 16, i32 %28)
  store %struct.se_lun_acl* %29, %struct.se_lun_acl** %10, align 8
  %30 = load %struct.se_lun_acl*, %struct.se_lun_acl** %10, align 8
  %31 = icmp ne %struct.se_lun_acl* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store %struct.se_lun_acl* null, %struct.se_lun_acl** %5, align 8
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.se_lun_acl*, %struct.se_lun_acl** %10, align 8
  %40 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %42 = load %struct.se_lun_acl*, %struct.se_lun_acl** %10, align 8
  %43 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %42, i32 0, i32 0
  store %struct.se_node_acl* %41, %struct.se_node_acl** %43, align 8
  %44 = load %struct.se_lun_acl*, %struct.se_lun_acl** %10, align 8
  store %struct.se_lun_acl* %44, %struct.se_lun_acl** %5, align 8
  br label %45

45:                                               ; preds = %37, %32, %17
  %46 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  ret %struct.se_lun_acl* %46
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.se_lun_acl* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
