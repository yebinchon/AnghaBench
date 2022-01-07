; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_ascb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_ascb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.asd_ascb = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.asd_ha_struct = type { i32, %struct.asd_seq_data }
%struct.asd_seq_data = type { i32 }

@asd_ascb_cache = external dso_local global %struct.kmem_cache*, align 8
@.str = private unnamed_addr constant [19 x i8] c"no index for ascb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asd_ascb* (%struct.asd_ha_struct*, i32)* @asd_ascb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asd_ascb* @asd_ascb_alloc(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_seq_data*, align 8
  %7 = alloca %struct.asd_ascb*, align 8
  %8 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %10 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %9, i32 0, i32 1
  store %struct.asd_seq_data* %10, %struct.asd_seq_data** %6, align 8
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.asd_ascb* @kmem_cache_zalloc(%struct.kmem_cache* %11, i32 %12)
  store %struct.asd_ascb* %13, %struct.asd_ascb** %7, align 8
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %15 = icmp ne %struct.asd_ascb* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %2
  %17 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %18 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %21 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %25 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @dma_pool_zalloc(i32 %22, i32 %23, i32* %26)
  %28 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %29 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %32 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %16
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %38 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %39 = call i32 @kmem_cache_free(%struct.kmem_cache* %37, %struct.asd_ascb* %38)
  store %struct.asd_ascb* null, %struct.asd_ascb** %3, align 8
  br label %91

40:                                               ; preds = %16
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %42 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %43 = call i32 @asd_init_ascb(%struct.asd_ha_struct* %41, %struct.asd_ascb* %42)
  %44 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %45 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %49 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %50 = call i32 @asd_tc_index_get(%struct.asd_seq_data* %48, %struct.asd_ascb* %49)
  %51 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %52 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %54 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %58 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %74

62:                                               ; preds = %40
  %63 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %64 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %68 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %2
  %73 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  store %struct.asd_ascb* %73, %struct.asd_ascb** %3, align 8
  br label %91

74:                                               ; preds = %61
  %75 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %76 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %79 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %83 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dma_pool_free(i32 %77, i32 %81, i32 %85)
  %87 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %88 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %89 = call i32 @kmem_cache_free(%struct.kmem_cache* %87, %struct.asd_ascb* %88)
  %90 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.asd_ascb* null, %struct.asd_ascb** %3, align 8
  br label %91

91:                                               ; preds = %74, %72, %36
  %92 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  ret %struct.asd_ascb* %92
}

declare dso_local %struct.asd_ascb* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.asd_ascb*) #1

declare dso_local i32 @asd_init_ascb(%struct.asd_ha_struct*, %struct.asd_ascb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_tc_index_get(%struct.asd_seq_data*, %struct.asd_ascb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
