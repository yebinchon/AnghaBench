; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_store_tg_pt_gp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_store_tg_pt_gp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { %struct.TYPE_11__, i32, %struct.t10_alua_tg_pt_gp*, i32, %struct.se_portal_group* }
%struct.TYPE_11__ = type { i32 }
%struct.t10_alua_tg_pt_gp = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)* }
%struct.se_device = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.t10_alua_tg_pt_gp* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TG_PT_GROUP_NAME_BUF = common dso_local global i32 0, align 4
@TRANSPORT_FLAG_PASSTHROUGH_ALUA = common dso_local global i32 0, align 4
@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"ALUA Target Port Group alias too large!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [116 x i8] c"Target_Core_ConfigFS: Moving %s/tpgt_%hu/%s from ALUA Target Port Group: alua/%s, ID: %hu back to default_tg_pt_gp\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Target_Core_ConfigFS: %s %s/tpgt_%hu/%s to ALUA Target Port Group: alua/%s, ID: %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Moving\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @core_alua_store_tg_pt_gp_info(%struct.se_lun* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %11 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.se_lun* %0, %struct.se_lun** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %17 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %16, i32 0, i32 4
  %18 = load %struct.se_portal_group*, %struct.se_portal_group** %17, align 8
  store %struct.se_portal_group* %18, %struct.se_portal_group** %8, align 8
  %19 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %20 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.se_device* @rcu_dereference_raw(i32 %21)
  store %struct.se_device* %22, %struct.se_device** %9, align 8
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %10, align 8
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %11, align 8
  %23 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.se_device*, %struct.se_device** %9, align 8
  %28 = getelementptr inbounds %struct.se_device, %struct.se_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_ALUA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load %struct.se_device*, %struct.se_device** %9, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35, %3
  %45 = load i64, i64* @ENODEV, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %173

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %173

56:                                               ; preds = %47
  %57 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %58 = call i32 @memset(i8* %26, i32 0, i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i8* %26, i8* %59, i64 %60)
  %62 = call i32 @strstrip(i8* %26)
  %63 = call i64 @strcmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load %struct.se_device*, %struct.se_device** %9, align 8
  %67 = call i32 @strstrip(i8* %26)
  %68 = call %struct.t10_alua_tg_pt_gp* @core_alua_get_tg_pt_gp_by_name(%struct.se_device* %66, i32 %67)
  store %struct.t10_alua_tg_pt_gp* %68, %struct.t10_alua_tg_pt_gp** %11, align 8
  %69 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %70 = icmp ne %struct.t10_alua_tg_pt_gp* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* @ENODEV, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %173

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %77 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %76, i32 0, i32 1
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %80 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %79, i32 0, i32 2
  %81 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %80, align 8
  store %struct.t10_alua_tg_pt_gp* %81, %struct.t10_alua_tg_pt_gp** %10, align 8
  %82 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %83 = icmp ne %struct.t10_alua_tg_pt_gp* %82, null
  br i1 %83, label %84, label %133

84:                                               ; preds = %75
  %85 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %86 = icmp ne %struct.t10_alua_tg_pt_gp* %85, null
  br i1 %86, label %129, label %87

87:                                               ; preds = %84
  %88 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %89 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %91, align 8
  %93 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %94 = call i32 %92(%struct.se_portal_group* %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %98 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %100, align 8
  %102 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %103 = call i32 %101(%struct.se_portal_group* %102)
  %104 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %105 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = call i32 @config_item_name(i32* %106)
  %108 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %109 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = call i32 @config_item_name(i32* %110)
  %112 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %113 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %103, i32 %107, i32 %111, i32 %114)
  %116 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %117 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %118 = call i32 @__target_detach_tg_pt_gp(%struct.se_lun* %116, %struct.t10_alua_tg_pt_gp* %117)
  %119 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %120 = load %struct.se_device*, %struct.se_device** %9, align 8
  %121 = getelementptr inbounds %struct.se_device, %struct.se_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %122, align 8
  %124 = call i32 @__target_attach_tg_pt_gp(%struct.se_lun* %119, %struct.t10_alua_tg_pt_gp* %123)
  %125 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %126 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %125, i32 0, i32 1
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load i64, i64* %7, align 8
  store i64 %128, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %173

129:                                              ; preds = %84
  %130 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %131 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %132 = call i32 @__target_detach_tg_pt_gp(%struct.se_lun* %130, %struct.t10_alua_tg_pt_gp* %131)
  store i32 1, i32* %14, align 4
  br label %133

133:                                              ; preds = %129, %75
  %134 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %135 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %136 = call i32 @__target_attach_tg_pt_gp(%struct.se_lun* %134, %struct.t10_alua_tg_pt_gp* %135)
  %137 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %138 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %137, i32 0, i32 1
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %144 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %145 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %147, align 8
  %149 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %150 = call i32 %148(%struct.se_portal_group* %149)
  %151 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %152 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %154, align 8
  %156 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %157 = call i32 %155(%struct.se_portal_group* %156)
  %158 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %159 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = call i32 @config_item_name(i32* %160)
  %162 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %163 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = call i32 @config_item_name(i32* %164)
  %166 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %167 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %143, i32 %150, i32 %157, i32 %161, i32 %165, i32 %168)
  %170 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %171 = call i32 @core_alua_put_tg_pt_gp_from_name(%struct.t10_alua_tg_pt_gp* %170)
  %172 = load i64, i64* %7, align 8
  store i64 %172, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %173

173:                                              ; preds = %133, %87, %71, %52, %44
  %174 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i64, i64* %4, align 8
  ret i64 %175
}

declare dso_local %struct.se_device* @rcu_dereference_raw(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local %struct.t10_alua_tg_pt_gp* @core_alua_get_tg_pt_gp_by_name(%struct.se_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @__target_detach_tg_pt_gp(%struct.se_lun*, %struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @__target_attach_tg_pt_gp(%struct.se_lun*, %struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @core_alua_put_tg_pt_gp_from_name(%struct.t10_alua_tg_pt_gp*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
