; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_lu_gp_lu_gp_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_lu_gp_lu_gp_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.t10_alua_lu_gp = type { i32, %struct.config_group }
%struct.config_group = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"kstrtoul() returned %d for lu_gp_id\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ALUA lu_gp_id: %lu exceeds maximum: 0x0000ffff\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Target_Core_ConfigFS: Set ALUA Logical Unit Group: core/alua/lu_gps/%s to ID: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_lu_gp_lu_gp_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_lu_gp_lu_gp_id_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_alua_lu_gp*, align 8
  %9 = alloca %struct.config_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.t10_alua_lu_gp* @to_lu_gp(%struct.config_item* %12)
  store %struct.t10_alua_lu_gp* %13, %struct.t10_alua_lu_gp** %8, align 8
  %14 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %15 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %14, i32 0, i32 1
  store %struct.config_group* %15, %struct.config_group** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %26, 65535
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @core_alua_set_lu_gp_id(%struct.t10_alua_lu_gp* %34, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.config_group*, %struct.config_group** %9, align 8
  %45 = getelementptr inbounds %struct.config_group, %struct.config_group* %44, i32 0, i32 0
  %46 = call i32 @config_item_name(i32* %45)
  %47 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %48 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %40, %28, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.t10_alua_lu_gp* @to_lu_gp(%struct.config_item*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @core_alua_set_lu_gp_id(%struct.t10_alua_lu_gp*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @config_item_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
