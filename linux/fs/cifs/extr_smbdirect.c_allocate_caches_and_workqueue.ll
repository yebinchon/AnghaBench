; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_allocate_caches_and_workqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_allocate_caches_and_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"smbd_request_%p\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mempool_alloc_slab = common dso_local global i32 0, align 4
@mempool_free_slab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"smbd_response_%p\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"smbd_%p\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to allocate receive buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*)* @allocate_caches_and_workqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_caches_and_workqueue(%struct.smbd_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  %8 = load i32, i32* @MAX_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @MAX_NAME_LEN, align 4
  %13 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %14 = call i32 @scnprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.smbd_connection* %13)
  %15 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %16 = call i8* @kmem_cache_create(i8* %11, i32 8, i32 0, i32 %15, i32* null)
  %17 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %18 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %20 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %130

26:                                               ; preds = %1
  %27 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %28 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @mempool_alloc_slab, align 4
  %31 = load i32, i32* @mempool_free_slab, align 4
  %32 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %33 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @mempool_create(i32 %29, i32 %30, i32 %31, i8* %34)
  %36 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %37 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %39 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %123

43:                                               ; preds = %26
  %44 = load i32, i32* @MAX_NAME_LEN, align 4
  %45 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %46 = call i32 @scnprintf(i8* %11, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.smbd_connection* %45)
  %47 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %48 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %54 = call i8* @kmem_cache_create(i8* %11, i32 %52, i32 0, i32 %53, i32* null)
  %55 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %56 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %58 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  br label %118

62:                                               ; preds = %43
  %63 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %64 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @mempool_alloc_slab, align 4
  %67 = load i32, i32* @mempool_free_slab, align 4
  %68 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %69 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @mempool_create(i32 %65, i32 %66, i32 %67, i8* %70)
  %72 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %73 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %75 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %62
  br label %113

79:                                               ; preds = %62
  %80 = load i32, i32* @MAX_NAME_LEN, align 4
  %81 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %82 = call i32 @scnprintf(i8* %11, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.smbd_connection* %81)
  %83 = call i32 @create_workqueue(i8* %11)
  %84 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %85 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %87 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %108

91:                                               ; preds = %79
  %92 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %93 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %94 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @allocate_receive_buffers(%struct.smbd_connection* %92, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @ERR, align 4
  %101 = call i32 @log_rdma_event(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %103

102:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %130

103:                                              ; preds = %99
  %104 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %105 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @destroy_workqueue(i32 %106)
  br label %108

108:                                              ; preds = %103, %90
  %109 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %110 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @mempool_destroy(i8* %111)
  br label %113

113:                                              ; preds = %108, %78
  %114 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %115 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @kmem_cache_destroy(i8* %116)
  br label %118

118:                                              ; preds = %113, %61
  %119 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %120 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @mempool_destroy(i8* %121)
  br label %123

123:                                              ; preds = %118, %42
  %124 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %125 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @kmem_cache_destroy(i8* %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %130

130:                                              ; preds = %123, %102, %23
  %131 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, %struct.smbd_connection*) #2

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #2

declare dso_local i8* @mempool_create(i32, i32, i32, i8*) #2

declare dso_local i32 @create_workqueue(i8*) #2

declare dso_local i32 @allocate_receive_buffers(%struct.smbd_connection*, i32) #2

declare dso_local i32 @log_rdma_event(i32, i8*) #2

declare dso_local i32 @destroy_workqueue(i32) #2

declare dso_local i32 @mempool_destroy(i8*) #2

declare dso_local i32 @kmem_cache_destroy(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
