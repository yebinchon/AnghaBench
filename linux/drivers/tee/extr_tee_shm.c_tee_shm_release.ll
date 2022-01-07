; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i64, i64, %struct.tee_shm*, i32, i32, %struct.tee_device* }
%struct.tee_device = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i64, %struct.tee_shm*)* }
%struct.TYPE_6__ = type { %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr* }
%struct.tee_shm_pool_mgr = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.tee_shm_pool_mgr*, %struct.tee_shm*)* }

@TEE_SHM_POOL = common dso_local global i32 0, align 4
@TEE_SHM_DMA_BUF = common dso_local global i32 0, align 4
@TEE_SHM_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unregister shm %p failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tee_shm*)* @tee_shm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tee_shm_release(%struct.tee_shm* %0) #0 {
  %2 = alloca %struct.tee_shm*, align 8
  %3 = alloca %struct.tee_device*, align 8
  %4 = alloca %struct.tee_shm_pool_mgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tee_shm* %0, %struct.tee_shm** %2, align 8
  %7 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %8 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %7, i32 0, i32 6
  %9 = load %struct.tee_device*, %struct.tee_device** %8, align 8
  store %struct.tee_device* %9, %struct.tee_device** %3, align 8
  %10 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %11 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %14 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %13, i32 0, i32 4
  %15 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %16 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @idr_remove(i32* %14, i32 %17)
  %19 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %20 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %25 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %24, i32 0, i32 4
  %26 = call i32 @list_del(i32* %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %29 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %28, i32 0, i32 3
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %32 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TEE_SHM_POOL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %27
  %38 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %39 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TEE_SHM_DMA_BUF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %46 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %48, align 8
  store %struct.tee_shm_pool_mgr* %49, %struct.tee_shm_pool_mgr** %4, align 8
  br label %56

50:                                               ; preds = %37
  %51 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %52 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %54, align 8
  store %struct.tee_shm_pool_mgr* %55, %struct.tee_shm_pool_mgr** %4, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %4, align 8
  %58 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (%struct.tee_shm_pool_mgr*, %struct.tee_shm*)*, i32 (%struct.tee_shm_pool_mgr*, %struct.tee_shm*)** %60, align 8
  %62 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %4, align 8
  %63 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %64 = call i32 %61(%struct.tee_shm_pool_mgr* %62, %struct.tee_shm* %63)
  br label %118

65:                                               ; preds = %27
  %66 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %67 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TEE_SHM_REGISTER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %65
  %73 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %74 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32 (i64, %struct.tee_shm*)*, i32 (i64, %struct.tee_shm*)** %78, align 8
  %80 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %81 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %84 = call i32 %79(i64 %82, %struct.tee_shm* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %72
  %88 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %89 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.tee_shm* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %72
  store i64 0, i64* %5, align 8
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %99 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %104 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %103, i32 0, i32 3
  %105 = load %struct.tee_shm*, %struct.tee_shm** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %105, i64 %106
  %108 = call i32 @put_page(%struct.tee_shm* byval(%struct.tee_shm) align 8 %107)
  br label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %5, align 8
  br label %96

112:                                              ; preds = %96
  %113 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %114 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %113, i32 0, i32 3
  %115 = load %struct.tee_shm*, %struct.tee_shm** %114, align 8
  %116 = call i32 @kfree(%struct.tee_shm* %115)
  br label %117

117:                                              ; preds = %112, %65
  br label %118

118:                                              ; preds = %117, %56
  %119 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %120 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %125 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @teedev_ctx_put(i64 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %130 = call i32 @kfree(%struct.tee_shm* %129)
  %131 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %132 = call i32 @tee_device_put(%struct.tee_device* %131)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.tee_shm*, i32) #1

declare dso_local i32 @put_page(%struct.tee_shm* byval(%struct.tee_shm) align 8) #1

declare dso_local i32 @kfree(%struct.tee_shm*) #1

declare dso_local i32 @teedev_ctx_put(i64) #1

declare dso_local i32 @tee_device_put(%struct.tee_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
