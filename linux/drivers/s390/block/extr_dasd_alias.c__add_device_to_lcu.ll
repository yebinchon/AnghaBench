; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c__add_device_to_lcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c__add_device_to_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.alias_pav_group*, %struct.dasd_uid }
%struct.alias_pav_group = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.dasd_uid = type { i64, i64, i64, i32, i32, i32, i32 }

@NO_PAV = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UA_BASE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alias_lcu*, %struct.dasd_device*, %struct.dasd_device*)* @_add_device_to_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_add_device_to_lcu(%struct.alias_lcu* %0, %struct.dasd_device* %1, %struct.dasd_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca %struct.alias_pav_group*, align 8
  %10 = alloca %struct.dasd_uid, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %5, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %2, %struct.dasd_device** %7, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 2
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %8, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @get_ccwdev_lock(i32 %16)
  %18 = call i32 @spin_lock(i32 %17)
  %19 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %20 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %25 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %32 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %35 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %40 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %47 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 1
  %51 = bitcast %struct.dasd_uid* %10 to i8*
  %52 = bitcast %struct.dasd_uid* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 40, i1 false)
  %53 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @get_ccwdev_lock(i32 %55)
  %57 = call i32 @spin_unlock(i32 %56)
  %58 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %59 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NO_PAV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %3
  %64 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %65 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %64, i32 0, i32 0
  %66 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %67 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %66, i32 0, i32 2
  %68 = call i32 @list_move(i32* %65, i32* %67)
  store i32 0, i32* %4, align 4
  br label %161

69:                                               ; preds = %3
  %70 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %71 = call %struct.alias_pav_group* @_find_group(%struct.alias_lcu* %70, %struct.dasd_uid* %10)
  store %struct.alias_pav_group* %71, %struct.alias_pav_group** %9, align 8
  %72 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %73 = icmp ne %struct.alias_pav_group* %72, null
  br i1 %73, label %140, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call %struct.alias_pav_group* @kzalloc(i32 40, i32 %75)
  store %struct.alias_pav_group* %76, %struct.alias_pav_group** %9, align 8
  %77 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %78 = icmp ne %struct.alias_pav_group* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %161

82:                                               ; preds = %74
  %83 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %84 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %86, i32 %88, i32 4)
  %90 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %91 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i32 %93, i32 %95, i32 4)
  %97 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %100 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  %102 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UA_BASE_DEVICE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %82
  %107 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %110 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  br label %118

112:                                              ; preds = %82
  %113 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %116 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %120 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memcpy(i32 %122, i32 %124, i32 4)
  %126 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %127 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %126, i32 0, i32 2
  %128 = call i32 @INIT_LIST_HEAD(i32* %127)
  %129 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %130 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %129, i32 0, i32 1
  %131 = call i32 @INIT_LIST_HEAD(i32* %130)
  %132 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %133 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %132, i32 0, i32 0
  %134 = call i32 @INIT_LIST_HEAD(i32* %133)
  %135 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %136 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %135, i32 0, i32 2
  %137 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %138 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %137, i32 0, i32 1
  %139 = call i32 @list_add(i32* %136, i32* %138)
  br label %140

140:                                              ; preds = %118, %69
  %141 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UA_BASE_DEVICE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %147 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %146, i32 0, i32 0
  %148 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %149 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %148, i32 0, i32 1
  %150 = call i32 @list_move(i32* %147, i32* %149)
  br label %157

151:                                              ; preds = %140
  %152 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %153 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %152, i32 0, i32 0
  %154 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %155 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %154, i32 0, i32 0
  %156 = call i32 @list_move(i32* %153, i32* %155)
  br label %157

157:                                              ; preds = %151, %145
  %158 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %159 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %160 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %159, i32 0, i32 0
  store %struct.alias_pav_group* %158, %struct.alias_pav_group** %160, align 8
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %157, %79, %63
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local %struct.alias_pav_group* @_find_group(%struct.alias_lcu*, %struct.dasd_uid*) #1

declare dso_local %struct.alias_pav_group* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
