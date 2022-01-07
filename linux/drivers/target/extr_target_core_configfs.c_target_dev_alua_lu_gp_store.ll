; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_alua_lu_gp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_alua_lu_gp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { %struct.TYPE_5__, %struct.t10_alua_lu_gp_member*, %struct.se_hba* }
%struct.TYPE_5__ = type { i32 }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp* }
%struct.t10_alua_lu_gp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.se_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LU_GROUP_NAME_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ALUA LU Group Alias too large!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [88 x i8] c"Target_Core_ConfigFS: Releasing %s/%s from ALUA LU Group: core/alua/lu_gps/%s, ID: %hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Target_Core_ConfigFS: %s %s/%s to ALUA LU Group: core/alua/lu_gps/%s, ID: %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Moving\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @target_dev_alua_lu_gp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_dev_alua_lu_gp_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca %struct.se_hba*, align 8
  %10 = alloca %struct.t10_alua_lu_gp*, align 8
  %11 = alloca %struct.t10_alua_lu_gp*, align 8
  %12 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.config_item*, %struct.config_item** %5, align 8
  %18 = call %struct.se_device* @to_device(%struct.config_item* %17)
  store %struct.se_device* %18, %struct.se_device** %8, align 8
  %19 = load %struct.se_device*, %struct.se_device** %8, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 2
  %21 = load %struct.se_hba*, %struct.se_hba** %20, align 8
  store %struct.se_hba* %21, %struct.se_hba** %9, align 8
  store %struct.t10_alua_lu_gp* null, %struct.t10_alua_lu_gp** %10, align 8
  store %struct.t10_alua_lu_gp* null, %struct.t10_alua_lu_gp** %11, align 8
  %22 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.se_device*, %struct.se_device** %8, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 1
  %28 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %27, align 8
  store %struct.t10_alua_lu_gp_member* %28, %struct.t10_alua_lu_gp_member** %12, align 8
  %29 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %30 = icmp ne %struct.t10_alua_lu_gp_member* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %132

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %132

42:                                               ; preds = %33
  %43 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %44 = call i32 @memset(i8* %25, i32 0, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @memcpy(i8* %25, i8* %45, i64 %46)
  %48 = call i32 @strstrip(i8* %25)
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = call i32 @strstrip(i8* %25)
  %53 = call %struct.t10_alua_lu_gp* @core_alua_get_lu_gp_by_name(i32 %52)
  store %struct.t10_alua_lu_gp* %53, %struct.t10_alua_lu_gp** %11, align 8
  %54 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %55 = icmp ne %struct.t10_alua_lu_gp* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @ENODEV, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %132

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %62 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %65 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %64, i32 0, i32 1
  %66 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %65, align 8
  store %struct.t10_alua_lu_gp* %66, %struct.t10_alua_lu_gp** %10, align 8
  %67 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %68 = icmp ne %struct.t10_alua_lu_gp* %67, null
  br i1 %68, label %69, label %102

69:                                               ; preds = %60
  %70 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %71 = icmp ne %struct.t10_alua_lu_gp* %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %69
  %73 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %74 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @config_item_name(i32* %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.se_device*, %struct.se_device** %8, align 8
  %80 = getelementptr inbounds %struct.se_device, %struct.se_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @config_item_name(i32* %81)
  %83 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %84 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @config_item_name(i32* %85)
  %87 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %88 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32 %82, i32 %86, i32 %89)
  %91 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %92 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %93 = call i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member* %91, %struct.t10_alua_lu_gp* %92)
  %94 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %95 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %132

98:                                               ; preds = %69
  %99 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %100 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %101 = call i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member* %99, %struct.t10_alua_lu_gp* %100)
  store i32 1, i32* %15, align 4
  br label %102

102:                                              ; preds = %98, %60
  %103 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %104 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %105 = call i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member* %103, %struct.t10_alua_lu_gp* %104)
  %106 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %107 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %113 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %114 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i32 @config_item_name(i32* %115)
  %117 = load %struct.se_device*, %struct.se_device** %8, align 8
  %118 = getelementptr inbounds %struct.se_device, %struct.se_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = call i32 @config_item_name(i32* %119)
  %121 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %122 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i32 @config_item_name(i32* %123)
  %125 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %126 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* %112, i32 %116, i32 %120, i32 %124, i32 %127)
  %129 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %130 = call i32 @core_alua_put_lu_gp_from_name(%struct.t10_alua_lu_gp* %129)
  %131 = load i64, i64* %7, align 8
  store i64 %131, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %102, %72, %56, %38, %31
  %133 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local %struct.se_device* @to_device(%struct.config_item*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local %struct.t10_alua_lu_gp* @core_alua_get_lu_gp_by_name(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp*) #1

declare dso_local i32 @core_alua_put_lu_gp_from_name(%struct.t10_alua_lu_gp*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
