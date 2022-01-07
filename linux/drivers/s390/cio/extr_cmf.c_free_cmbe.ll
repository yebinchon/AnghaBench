; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_free_cmbe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_free_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { i32, %struct.cmb_data* }

@cmb_area = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cmbe_cache = common dso_local global i32 0, align 4
@CMF_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @free_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cmbe(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.cmb_data*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @spin_lock_irq(i32 %7)
  %9 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.cmb_data*, %struct.cmb_data** %12, align 8
  store %struct.cmb_data* %13, %struct.cmb_data** %3, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.cmb_data* null, %struct.cmb_data** %17, align 8
  %18 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %19 = icmp ne %struct.cmb_data* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %22 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %21, i32 0, i32 1
  %23 = load %struct.cmb_data*, %struct.cmb_data** %22, align 8
  %24 = call i32 @kfree(%struct.cmb_data* %23)
  %25 = load i32, i32* @cmbe_cache, align 4
  %26 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %27 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kmem_cache_free(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %32 = call i32 @kfree(%struct.cmb_data* %31)
  %33 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %34 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @list_del_init(i32* %36)
  %38 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @CMF_OFF, align 4
  %42 = call i32 @cmf_activate(i32* null, i32 %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @spin_unlock_irq(i32 %46)
  %48 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @kmem_cache_free(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
