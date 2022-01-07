; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_put_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_put_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_priv = type { i32 }
%struct.gntdev_grant_map = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@pages_mapped = common dso_local global i32 0, align 4
@UNMAP_NOTIFY_SEND_EVENT = common dso_local global i32 0, align 4
@populate_freeable_maps = common dso_local global i64 0, align 8
@use_ptemod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gntdev_put_map(%struct.gntdev_priv* %0, %struct.gntdev_grant_map* %1) #0 {
  %3 = alloca %struct.gntdev_priv*, align 8
  %4 = alloca %struct.gntdev_grant_map*, align 8
  store %struct.gntdev_priv* %0, %struct.gntdev_priv** %3, align 8
  store %struct.gntdev_grant_map* %1, %struct.gntdev_grant_map** %4, align 8
  %5 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %6 = icmp ne %struct.gntdev_grant_map* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %70

8:                                                ; preds = %2
  %9 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %10 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %9, i32 0, i32 4
  %11 = call i32 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %16 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @atomic_sub(i32 %17, i32* @pages_mapped)
  %19 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %20 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNMAP_NOTIFY_SEND_EVENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %14
  %27 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %28 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @notify_remote_via_evtchn(i32 %30)
  %32 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %33 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @evtchn_put(i32 %35)
  br label %37

37:                                               ; preds = %26, %14
  %38 = load i64, i64* @populate_freeable_maps, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.gntdev_priv*, %struct.gntdev_priv** %3, align 8
  %42 = icmp ne %struct.gntdev_priv* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.gntdev_priv*, %struct.gntdev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %48 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %47, i32 0, i32 2
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.gntdev_priv*, %struct.gntdev_priv** %3, align 8
  %51 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %43, %40, %37
  %54 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %55 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* @use_ptemod, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %63 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %64 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @unmap_grant_pages(%struct.gntdev_grant_map* %62, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %61, %58, %53
  %68 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  %69 = call i32 @gntdev_free_map(%struct.gntdev_grant_map* %68)
  br label %70

70:                                               ; preds = %67, %13, %7
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

declare dso_local i32 @evtchn_put(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unmap_grant_pages(%struct.gntdev_grant_map*, i32, i32) #1

declare dso_local i32 @gntdev_free_map(%struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
