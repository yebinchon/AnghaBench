; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_alloc_cmbe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_alloc_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { i32, %struct.cmb_data*, %struct.cmbe* }
%struct.cmbe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@cmbe_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cmb_area = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CMF_ON = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @alloc_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmbe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.cmb_data*, align 8
  %5 = alloca %struct.cmbe*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @cmbe_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cmbe* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.cmbe* %11, %struct.cmbe** %5, align 8
  %12 = load %struct.cmbe*, %struct.cmbe** %5, align 8
  %13 = icmp ne %struct.cmbe* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 24, i32 %17)
  %19 = bitcast i8* %18 to %struct.cmb_data*
  store %struct.cmb_data* %19, %struct.cmb_data** %4, align 8
  %20 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %21 = icmp ne %struct.cmb_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %82

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 4, i32 %24)
  %26 = bitcast i8* %25 to %struct.cmb_data*
  %27 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %28 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %27, i32 0, i32 1
  store %struct.cmb_data* %26, %struct.cmb_data** %28, align 8
  %29 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %30 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %29, i32 0, i32 1
  %31 = load %struct.cmb_data*, %struct.cmb_data** %30, align 8
  %32 = icmp ne %struct.cmb_data* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %82

34:                                               ; preds = %23
  %35 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %36 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.cmbe*, %struct.cmbe** %5, align 8
  %38 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %39 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %38, i32 0, i32 2
  store %struct.cmbe* %37, %struct.cmbe** %39, align 8
  %40 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  %41 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spin_lock_irq(i32 %43)
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.cmb_data*, %struct.cmb_data** %48, align 8
  %50 = icmp ne %struct.cmb_data* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %74

52:                                               ; preds = %34
  %53 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %54 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %55 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store %struct.cmb_data* %53, %struct.cmb_data** %57, align 8
  %58 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @CMF_ON, align 4
  %62 = call i32 @cmf_activate(i32* null, i32 %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @list_add_tail(i32* %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %69 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @spin_unlock_irq(i32 %71)
  %73 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %97

74:                                               ; preds = %51
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @spin_unlock_irq(i32 %77)
  %79 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %33, %22
  %83 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %84 = icmp ne %struct.cmb_data* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %87 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %86, i32 0, i32 1
  %88 = load %struct.cmb_data*, %struct.cmb_data** %87, align 8
  %89 = call i32 @kfree(%struct.cmb_data* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %92 = call i32 @kfree(%struct.cmb_data* %91)
  %93 = load i32, i32* @cmbe_cache, align 4
  %94 = load %struct.cmbe*, %struct.cmbe** %5, align 8
  %95 = call i32 @kmem_cache_free(i32 %93, %struct.cmbe* %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %90, %63, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.cmbe* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.cmbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
