; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_nvmem-sysfs.c_nvmem_sysfs_setup_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_nvmem-sysfs.c_nvmem_sysfs_setup_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i32* }
%struct.nvmem_device = type { i32, i32, %struct.TYPE_8__, i64, i32, i64 }
%struct.nvmem_config = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@bin_attr_ro_root_nvmem = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bin_attr_ro_nvmem = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bin_attr_rw_root_nvmem = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bin_attr_rw_nvmem = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to create eeprom binary file %d\0A\00", align 1
@FLAG_COMPAT = common dso_local global i32 0, align 4
@eeprom_lock_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_sysfs_setup_compat(%struct.nvmem_device* %0, %struct.nvmem_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmem_device*, align 8
  %5 = alloca %struct.nvmem_config*, align 8
  %6 = alloca i32, align 4
  store %struct.nvmem_device* %0, %struct.nvmem_device** %4, align 8
  store %struct.nvmem_config* %1, %struct.nvmem_config** %5, align 8
  %7 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %8 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

12:                                               ; preds = %2
  %13 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %12
  %21 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %22 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %27 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %32 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %31, i32 0, i32 2
  %33 = bitcast %struct.TYPE_8__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.TYPE_8__* @bin_attr_ro_root_nvmem to i8*), i64 32, i1 false)
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %36 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %35, i32 0, i32 2
  %37 = bitcast %struct.TYPE_8__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.TYPE_8__* @bin_attr_ro_nvmem to i8*), i64 32, i1 false)
  br label %38

38:                                               ; preds = %34, %30
  br label %53

39:                                               ; preds = %20
  %40 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %41 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %46 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %45, i32 0, i32 2
  %47 = bitcast %struct.TYPE_8__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.TYPE_8__* @bin_attr_rw_root_nvmem to i8*), i64 32, i1 false)
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %50 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %49, i32 0, i32 2
  %51 = bitcast %struct.TYPE_8__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.TYPE_8__* @bin_attr_rw_nvmem to i8*), i64 32, i1 false)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %55 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %59 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %62 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %65 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %64, i32 0, i32 1
  %66 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %67 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %70 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %73 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %75 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %78 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %77, i32 0, i32 2
  %79 = call i32 @device_create_bin_file(i64 %76, %struct.TYPE_8__* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %53
  %83 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %84 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %83, i32 0, i32 1
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %53
  %89 = load i32, i32* @FLAG_COMPAT, align 4
  %90 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %91 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %82, %17, %11
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @device_create_bin_file(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
