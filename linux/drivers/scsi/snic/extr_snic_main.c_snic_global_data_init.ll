; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_global_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_global_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.kmem_cache**, i32, i32, i32 }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@snic_glob = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate Global Context.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"snic_req_dfltsgl\00", align 1
@SNIC_SG_DESC_ALIGN = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to create snic default sgl slab\0A\00", align 1
@SNIC_REQ_CACHE_DFLT_SGL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"snic_req_maxsgl\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to create snic max sgl slab\0A\00", align 1
@SNIC_REQ_CACHE_MAX_SGL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to create snic tm req slab\0A\00", align 1
@SNIC_REQ_TM_CACHE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"snic_event_wq\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"snic event queue create failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @snic_global_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_global_data_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_4__* @kzalloc(i32 24, i32 %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** @snic_glob, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %119

13:                                               ; preds = %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_init(i32* %18)
  store i32 4, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SNIC_SG_DESC_ALIGN, align 4
  %26 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %27 = call %struct.kmem_cache* @kmem_cache_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32* null)
  store %struct.kmem_cache* %27, %struct.kmem_cache** %3, align 8
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %29 = icmp ne %struct.kmem_cache* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %13
  %31 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %116

34:                                               ; preds = %13
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.kmem_cache**, %struct.kmem_cache*** %37, align 8
  %39 = load i64, i64* @SNIC_REQ_CACHE_DFLT_SGL, align 8
  %40 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %38, i64 %39
  store %struct.kmem_cache* %35, %struct.kmem_cache** %40, align 8
  store i32 4, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SNIC_SG_DESC_ALIGN, align 4
  %47 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %48 = call %struct.kmem_cache* @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32* null)
  store %struct.kmem_cache* %48, %struct.kmem_cache** %3, align 8
  %49 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %50 = icmp ne %struct.kmem_cache* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %34
  %52 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %108

55:                                               ; preds = %34
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.kmem_cache**, %struct.kmem_cache*** %58, align 8
  %60 = load i64, i64* @SNIC_REQ_CACHE_MAX_SGL, align 8
  %61 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %59, i64 %60
  store %struct.kmem_cache* %56, %struct.kmem_cache** %61, align 8
  store i32 4, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SNIC_SG_DESC_ALIGN, align 4
  %64 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %65 = call %struct.kmem_cache* @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32* null)
  store %struct.kmem_cache* %65, %struct.kmem_cache** %3, align 8
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %67 = icmp ne %struct.kmem_cache* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %55
  %69 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %55
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.kmem_cache**, %struct.kmem_cache*** %75, align 8
  %77 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %78 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %76, i64 %77
  store %struct.kmem_cache* %73, %struct.kmem_cache** %78, align 8
  %79 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %72
  %87 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %72
  %91 = load i32, i32* %2, align 4
  store i32 %91, i32* %1, align 4
  br label %121

92:                                               ; preds = %86
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.kmem_cache**, %struct.kmem_cache*** %94, align 8
  %96 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %97 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %95, i64 %96
  %98 = load %struct.kmem_cache*, %struct.kmem_cache** %97, align 8
  %99 = call i32 @kmem_cache_destroy(%struct.kmem_cache* %98)
  br label %100

100:                                              ; preds = %92, %68
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.kmem_cache**, %struct.kmem_cache*** %102, align 8
  %104 = load i64, i64* @SNIC_REQ_CACHE_MAX_SGL, align 8
  %105 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %103, i64 %104
  %106 = load %struct.kmem_cache*, %struct.kmem_cache** %105, align 8
  %107 = call i32 @kmem_cache_destroy(%struct.kmem_cache* %106)
  br label %108

108:                                              ; preds = %100, %51
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.kmem_cache**, %struct.kmem_cache*** %110, align 8
  %112 = load i64, i64* @SNIC_REQ_CACHE_DFLT_SGL, align 8
  %113 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %111, i64 %112
  %114 = load %struct.kmem_cache*, %struct.kmem_cache** %113, align 8
  %115 = call i32 @kmem_cache_destroy(%struct.kmem_cache* %114)
  br label %116

116:                                              ; preds = %108, %30
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %118 = call i32 @kfree(%struct.TYPE_4__* %117)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @snic_glob, align 8
  br label %119

119:                                              ; preds = %116, %9
  %120 = load i32, i32* %2, align 4
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %119, %90
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @SNIC_ERR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @kmem_cache_destroy(%struct.kmem_cache*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
