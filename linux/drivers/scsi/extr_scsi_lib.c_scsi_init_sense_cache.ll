; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_sense_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_sense_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.kmem_cache = type { i32 }

@scsi_sense_cache_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"scsi_sense_cache(DMA)\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@scsi_sense_isadma_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"scsi_sense_cache\00", align 1
@scsi_sense_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_init_sense_cache(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @scsi_sense_cache_mutex)
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call %struct.kmem_cache* @scsi_select_sense_cache(i64 %8)
  store %struct.kmem_cache* %9, %struct.kmem_cache** %3, align 8
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %11 = icmp ne %struct.kmem_cache* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %20 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %21 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0, i32 %22, i32* null)
  store i32 %23, i32* @scsi_sense_isadma_cache, align 4
  %24 = load i32, i32* @scsi_sense_isadma_cache, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %18
  br label %41

30:                                               ; preds = %13
  %31 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %32 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %33 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %34 = call i32 @kmem_cache_create_usercopy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 0, i32 %32, i32 0, i32 %33, i32* null)
  store i32 %34, i32* @scsi_sense_cache, align 4
  %35 = load i32, i32* @scsi_sense_cache, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %12
  %43 = call i32 @mutex_unlock(i32* @scsi_sense_cache_mutex)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kmem_cache* @scsi_select_sense_cache(i64) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_create_usercopy(i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
