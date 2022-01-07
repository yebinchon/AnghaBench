; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_iscsi_disc_enforce_discovery_auth_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_iscsi_disc_enforce_discovery_auth_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.iscsi_portal_group* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_portal_group = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.config_item = type { i32 }
%struct.iscsi_param = type { i32 }

@iscsit_global = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Illegal value for enforce_discovery_auth: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"iscsit_global->discovery_tpg is NULL\0A\00", align 1
@AUTHMETHOD = common dso_local global i32 0, align 4
@CHAP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [85 x i8] c"LIO-CORE[0] Successfully enabled authentication enforcement for iSCSI Discovery TPG\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CHAP,None\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"LIO-CORE[0] Successfully disabled authentication enforcement for iSCSI Discovery TPG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @iscsi_disc_enforce_discovery_auth_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iscsi_disc_enforce_discovery_auth_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iscsi_param*, align 8
  %9 = alloca %struct.iscsi_portal_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iscsit_global, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %13, align 8
  store %struct.iscsi_portal_group* %14, %struct.iscsi_portal_group** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @kstrtou32(i8* %15, i32 0, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %89

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %89

33:                                               ; preds = %25, %22
  %34 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %9, align 8
  %35 = icmp ne %struct.iscsi_portal_group* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %89

40:                                               ; preds = %33
  %41 = load i32, i32* @AUTHMETHOD, align 4
  %42 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %41, i32 %44)
  store %struct.iscsi_param* %45, %struct.iscsi_param** %8, align 8
  %46 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %47 = icmp ne %struct.iscsi_param* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %89

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %56 = load i8*, i8** @CHAP, align 8
  %57 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %55, i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub i64 0, %60
  store i64 %61, i64* %4, align 8
  br label %89

62:                                               ; preds = %54
  %63 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %9, align 8
  %64 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iscsit_global, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  br label %87

71:                                               ; preds = %51
  %72 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %73 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %4, align 8
  br label %89

78:                                               ; preds = %71
  %79 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %9, align 8
  %80 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iscsit_global, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %78, %62
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %87, %75, %59, %48, %36, %28, %19
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i64 @iscsi_update_param_value(%struct.iscsi_param*, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
