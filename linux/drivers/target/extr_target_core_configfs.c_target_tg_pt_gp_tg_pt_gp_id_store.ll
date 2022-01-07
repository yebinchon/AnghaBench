; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_tg_pt_gp_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_tg_pt_gp_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.t10_alua_tg_pt_gp = type { i32, %struct.config_group }
%struct.config_group = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"ALUA tg_pt_gp_id: invalid value '%s' for tg_pt_gp_id\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ALUA tg_pt_gp_id: %lu exceeds maximum: 0x0000ffff\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"Target_Core_ConfigFS: Set ALUA Target Port Group: core/alua/tg_pt_gps/%s to ID: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_tg_pt_gp_tg_pt_gp_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_tg_pt_gp_tg_pt_gp_id_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %9 = alloca %struct.config_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item* %12)
  store %struct.t10_alua_tg_pt_gp* %13, %struct.t10_alua_tg_pt_gp** %8, align 8
  %14 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %15 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %14, i32 0, i32 1
  store %struct.config_group* %15, %struct.config_group** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %52

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 65535
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @core_alua_set_tg_pt_gp_id(%struct.t10_alua_tg_pt_gp* %33, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load %struct.config_group*, %struct.config_group** %9, align 8
  %44 = getelementptr inbounds %struct.config_group, %struct.config_group* %43, i32 0, i32 0
  %45 = call i32 @config_item_name(i32* %44)
  %46 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %47 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %39, %27, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @core_alua_set_tg_pt_gp_id(%struct.t10_alua_tg_pt_gp*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @config_item_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
