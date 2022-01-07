; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_create_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_create_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gasket_sysfs_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gasket_sysfs_mapping = type { i64, i32, %struct.gasket_sysfs_attribute* }

@.str = private unnamed_addr constant [64 x i8] c"Creating entries for device without first initializing mapping\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GASKET_ARRAY_END_MARKER = common dso_local global i32 0, align 4
@GASKET_SYSFS_MAX_NODES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Maximum number of sysfs nodes reached for device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to create device entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_sysfs_create_entries(%struct.device* %0, %struct.gasket_sysfs_attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gasket_sysfs_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gasket_sysfs_mapping*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.gasket_sysfs_attribute* %1, %struct.gasket_sysfs_attribute** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %9)
  store %struct.gasket_sysfs_mapping* %10, %struct.gasket_sysfs_mapping** %8, align 8
  %11 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %12 = icmp ne %struct.gasket_sysfs_mapping* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %20 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %87, %18
  %23 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %23, i64 %25
  %27 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GASKET_ARRAY_END_MARKER, align 4
  %32 = call i64 @strcmp(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %90

34:                                               ; preds = %22
  %35 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %36 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GASKET_SYSFS_MAX_NODES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %44 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %47 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %34
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %52, i64 %54
  %56 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %55, i32 0, i32 0
  %57 = call i32 @device_create_file(%struct.device* %51, %struct.TYPE_4__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %64 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %67 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %96

69:                                               ; preds = %50
  %70 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %71 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %70, i32 0, i32 2
  %72 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %71, align 8
  %73 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %74 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %72, i64 %75
  %77 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %77, i64 %79
  %81 = bitcast %struct.gasket_sysfs_attribute* %76 to i8*
  %82 = bitcast %struct.gasket_sysfs_attribute* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %84 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %22

90:                                               ; preds = %22
  %91 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %92 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %95 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %60, %40, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_mapping(%struct.gasket_sysfs_mapping*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
