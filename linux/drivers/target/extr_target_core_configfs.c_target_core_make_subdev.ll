; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_make_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_make_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.config_item }
%struct.config_item = type { i32 }
%struct.t10_alua_tg_pt_gp = type { %struct.config_group }
%struct.se_hba = type { i32, %struct.target_backend* }
%struct.target_backend = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.se_device = type { %struct.config_group, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.config_group, %struct.TYPE_5__, %struct.config_group }
%struct.TYPE_8__ = type { %struct.config_group, %struct.t10_alua_tg_pt_gp* }
%struct.TYPE_7__ = type { %struct.config_group }
%struct.TYPE_6__ = type { %struct.config_group }
%struct.TYPE_5__ = type { %struct.config_group }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"wwn\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"alua\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"default_tg_pt_gp\00", align 1
@target_core_alua_tg_pt_gp_cit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_make_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_make_subdev(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.se_hba*, align 8
  %9 = alloca %struct.target_backend*, align 8
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.config_group*, %struct.config_group** %4, align 8
  %14 = getelementptr inbounds %struct.config_group, %struct.config_group* %13, i32 0, i32 0
  store %struct.config_item* %14, %struct.config_item** %7, align 8
  %15 = load %struct.config_item*, %struct.config_item** %7, align 8
  %16 = call %struct.se_hba* @item_to_hba(%struct.config_item* %15)
  store %struct.se_hba* %16, %struct.se_hba** %8, align 8
  %17 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %18 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %17, i32 0, i32 1
  %19 = load %struct.target_backend*, %struct.target_backend** %18, align 8
  store %struct.target_backend* %19, %struct.target_backend** %9, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %23 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock_interruptible(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.config_group* @ERR_PTR(i32 %28)
  store %struct.config_group* %29, %struct.config_group** %3, align 8
  br label %147

30:                                               ; preds = %2
  %31 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call %struct.se_device* @target_alloc_device(%struct.se_hba* %31, i8* %32)
  store %struct.se_device* %33, %struct.se_device** %10, align 8
  %34 = load %struct.se_device*, %struct.se_device** %10, align 8
  %35 = icmp ne %struct.se_device* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %141

37:                                               ; preds = %30
  %38 = load %struct.se_device*, %struct.se_device** %10, align 8
  %39 = getelementptr inbounds %struct.se_device, %struct.se_device* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %42 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %41, i32 0, i32 6
  %43 = call i32 @config_group_init_type_name(%struct.config_group* %39, i8* %40, i32* %42)
  %44 = load %struct.se_device*, %struct.se_device** %10, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 6
  %46 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %47 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %46, i32 0, i32 5
  %48 = call i32 @config_group_init_type_name(%struct.config_group* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = load %struct.se_device*, %struct.se_device** %10, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 6
  %51 = load %struct.se_device*, %struct.se_device** %10, align 8
  %52 = getelementptr inbounds %struct.se_device, %struct.se_device* %51, i32 0, i32 0
  %53 = call i32 @configfs_add_default_group(%struct.config_group* %50, %struct.config_group* %52)
  %54 = load %struct.se_device*, %struct.se_device** %10, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %58 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %57, i32 0, i32 4
  %59 = call i32 @config_group_init_type_name(%struct.config_group* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %58)
  %60 = load %struct.se_device*, %struct.se_device** %10, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.se_device*, %struct.se_device** %10, align 8
  %64 = getelementptr inbounds %struct.se_device, %struct.se_device* %63, i32 0, i32 0
  %65 = call i32 @configfs_add_default_group(%struct.config_group* %62, %struct.config_group* %64)
  %66 = load %struct.se_device*, %struct.se_device** %10, align 8
  %67 = getelementptr inbounds %struct.se_device, %struct.se_device* %66, i32 0, i32 4
  %68 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %69 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %68, i32 0, i32 3
  %70 = call i32 @config_group_init_type_name(%struct.config_group* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %69)
  %71 = load %struct.se_device*, %struct.se_device** %10, align 8
  %72 = getelementptr inbounds %struct.se_device, %struct.se_device* %71, i32 0, i32 4
  %73 = load %struct.se_device*, %struct.se_device** %10, align 8
  %74 = getelementptr inbounds %struct.se_device, %struct.se_device* %73, i32 0, i32 0
  %75 = call i32 @configfs_add_default_group(%struct.config_group* %72, %struct.config_group* %74)
  %76 = load %struct.se_device*, %struct.se_device** %10, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %80 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %79, i32 0, i32 2
  %81 = call i32 @config_group_init_type_name(%struct.config_group* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %80)
  %82 = load %struct.se_device*, %struct.se_device** %10, align 8
  %83 = getelementptr inbounds %struct.se_device, %struct.se_device* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.se_device*, %struct.se_device** %10, align 8
  %86 = getelementptr inbounds %struct.se_device, %struct.se_device* %85, i32 0, i32 0
  %87 = call i32 @configfs_add_default_group(%struct.config_group* %84, %struct.config_group* %86)
  %88 = load %struct.se_device*, %struct.se_device** %10, align 8
  %89 = getelementptr inbounds %struct.se_device, %struct.se_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %92 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %91, i32 0, i32 1
  %93 = call i32 @config_group_init_type_name(%struct.config_group* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %92)
  %94 = load %struct.se_device*, %struct.se_device** %10, align 8
  %95 = getelementptr inbounds %struct.se_device, %struct.se_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.se_device*, %struct.se_device** %10, align 8
  %98 = getelementptr inbounds %struct.se_device, %struct.se_device* %97, i32 0, i32 0
  %99 = call i32 @configfs_add_default_group(%struct.config_group* %96, %struct.config_group* %98)
  %100 = load %struct.se_device*, %struct.se_device** %10, align 8
  %101 = getelementptr inbounds %struct.se_device, %struct.se_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.target_backend*, %struct.target_backend** %9, align 8
  %104 = getelementptr inbounds %struct.target_backend, %struct.target_backend* %103, i32 0, i32 0
  %105 = call i32 @config_group_init_type_name(%struct.config_group* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %104)
  %106 = load %struct.se_device*, %struct.se_device** %10, align 8
  %107 = getelementptr inbounds %struct.se_device, %struct.se_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.se_device*, %struct.se_device** %10, align 8
  %110 = getelementptr inbounds %struct.se_device, %struct.se_device* %109, i32 0, i32 0
  %111 = call i32 @configfs_add_default_group(%struct.config_group* %108, %struct.config_group* %110)
  %112 = load %struct.se_device*, %struct.se_device** %10, align 8
  %113 = call %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store %struct.t10_alua_tg_pt_gp* %113, %struct.t10_alua_tg_pt_gp** %6, align 8
  %114 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %115 = icmp ne %struct.t10_alua_tg_pt_gp* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %37
  br label %138

117:                                              ; preds = %37
  %118 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %119 = load %struct.se_device*, %struct.se_device** %10, align 8
  %120 = getelementptr inbounds %struct.se_device, %struct.se_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store %struct.t10_alua_tg_pt_gp* %118, %struct.t10_alua_tg_pt_gp** %121, align 8
  %122 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %123 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %122, i32 0, i32 0
  %124 = call i32 @config_group_init_type_name(%struct.config_group* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* @target_core_alua_tg_pt_gp_cit)
  %125 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %126 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %125, i32 0, i32 0
  %127 = load %struct.se_device*, %struct.se_device** %10, align 8
  %128 = getelementptr inbounds %struct.se_device, %struct.se_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = call i32 @configfs_add_default_group(%struct.config_group* %126, %struct.config_group* %129)
  %131 = load %struct.se_device*, %struct.se_device** %10, align 8
  %132 = call i32 @target_stat_setup_dev_default_groups(%struct.se_device* %131)
  %133 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %134 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.se_device*, %struct.se_device** %10, align 8
  %137 = getelementptr inbounds %struct.se_device, %struct.se_device* %136, i32 0, i32 0
  store %struct.config_group* %137, %struct.config_group** %3, align 8
  br label %147

138:                                              ; preds = %116
  %139 = load %struct.se_device*, %struct.se_device** %10, align 8
  %140 = call i32 @target_free_device(%struct.se_device* %139)
  br label %141

141:                                              ; preds = %138, %36
  %142 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %143 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %11, align 4
  %146 = call %struct.config_group* @ERR_PTR(i32 %145)
  store %struct.config_group* %146, %struct.config_group** %3, align 8
  br label %147

147:                                              ; preds = %141, %117, %27
  %148 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %148
}

declare dso_local %struct.se_hba* @item_to_hba(%struct.config_item*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.se_device* @target_alloc_device(%struct.se_hba*, i8*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device*, i8*, i32) #1

declare dso_local i32 @target_stat_setup_dev_default_groups(%struct.se_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @target_free_device(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
