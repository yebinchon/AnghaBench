; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_event = type { i32 }
%struct.asd_sas_phy = type { i32, i32, i32, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_event_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"The phy%d bursting events, shut it down.\0A\00", align 1
@PHYE_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PHY control not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.asd_sas_event* @sas_alloc_event(%struct.asd_sas_phy* %0) #0 {
  %2 = alloca %struct.asd_sas_event*, align 8
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca %struct.asd_sas_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  %8 = call i64 (...) @in_interrupt()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 3
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %17, align 8
  store %struct.sas_ha_struct* %18, %struct.sas_ha_struct** %6, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sas_internal* @to_sas_internal(i32 %24)
  store %struct.sas_internal* %25, %struct.sas_internal** %7, align 8
  %26 = load i32, i32* @sas_event_cache, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.asd_sas_event* @kmem_cache_zalloc(i32 %26, i32 %27)
  store %struct.asd_sas_event* %28, %struct.asd_sas_event** %4, align 8
  %29 = load %struct.asd_sas_event*, %struct.asd_sas_event** %4, align 8
  %30 = icmp ne %struct.asd_sas_event* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  store %struct.asd_sas_event* null, %struct.asd_sas_event** %2, align 8
  br label %77

32:                                               ; preds = %14
  %33 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %34 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %33, i32 0, i32 0
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %40 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %39, i32 0, i32 3
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %40, align 8
  %42 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %38, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %32
  %46 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %47 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %54 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %53, i32 0, i32 2
  %55 = call i64 @cmpxchg(i32* %54, i32 0, i32 1)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %59 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_notice(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %63 = load i32, i32* @PHYE_SHUTDOWN, align 4
  %64 = call i32 @sas_notify_phy_event(%struct.asd_sas_phy* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  br label %74

66:                                               ; preds = %45
  %67 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @sas_event_cache, align 4
  %69 = load %struct.asd_sas_event*, %struct.asd_sas_event** %4, align 8
  %70 = call i32 @kmem_cache_free(i32 %68, %struct.asd_sas_event* %69)
  %71 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %72 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %71, i32 0, i32 0
  %73 = call i32 @atomic_dec(i32* %72)
  store %struct.asd_sas_event* null, %struct.asd_sas_event** %4, align 8
  br label %74

74:                                               ; preds = %66, %65
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.asd_sas_event*, %struct.asd_sas_event** %4, align 8
  store %struct.asd_sas_event* %76, %struct.asd_sas_event** %2, align 8
  br label %77

77:                                               ; preds = %75, %31
  %78 = load %struct.asd_sas_event*, %struct.asd_sas_event** %2, align 8
  ret %struct.asd_sas_event* %78
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local %struct.asd_sas_event* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @sas_notify_phy_event(%struct.asd_sas_phy*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.asd_sas_event*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
