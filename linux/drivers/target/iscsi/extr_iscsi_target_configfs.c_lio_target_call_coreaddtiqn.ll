; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_target_call_coreaddtiqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_target_call_coreaddtiqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.iscsi_tiqn = type { i8*, %struct.se_wwn }

@.str = private unnamed_addr constant [37 x i8] c"LIO_Target_ConfigFS: REGISTER -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"LIO_Target_ConfigFS: REGISTER -> Allocated Node: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @lio_target_call_coreaddtiqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @lio_target_call_coreaddtiqn(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_tiqn*, align 8
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.iscsi_tiqn* @iscsit_add_tiqn(i8* %9)
  store %struct.iscsi_tiqn* %10, %struct.iscsi_tiqn** %8, align 8
  %11 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %12 = call i64 @IS_ERR(%struct.iscsi_tiqn* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %16 = call %struct.se_wwn* @ERR_CAST(%struct.iscsi_tiqn* %15)
  store %struct.se_wwn* %16, %struct.se_wwn** %4, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %19 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %24, i32 0, i32 1
  store %struct.se_wwn* %25, %struct.se_wwn** %4, align 8
  br label %26

26:                                               ; preds = %17, %14
  %27 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %27
}

declare dso_local %struct.iscsi_tiqn* @iscsit_add_tiqn(i8*) #1

declare dso_local i64 @IS_ERR(%struct.iscsi_tiqn*) #1

declare dso_local %struct.se_wwn* @ERR_CAST(%struct.iscsi_tiqn*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
