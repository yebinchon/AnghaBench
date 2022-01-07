; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_free_cmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_free_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.ccw_device = type { i32, %struct.ccw_device_private* }
%struct.ccw_device_private = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { %struct.cmb_data* }

@cmb_area = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CMF_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @free_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cmb(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_device_private*, align 8
  %4 = alloca %struct.cmb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @spin_lock_irq(i32 %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = load %struct.ccw_device_private*, %struct.ccw_device_private** %12, align 8
  store %struct.ccw_device_private* %13, %struct.ccw_device_private** %3, align 8
  %14 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %14, i32 0, i32 1
  %16 = load %struct.cmb_data*, %struct.cmb_data** %15, align 8
  store %struct.cmb_data* %16, %struct.cmb_data** %4, align 8
  %17 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %18 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %17, i32 0, i32 1
  store %struct.cmb_data* null, %struct.cmb_data** %18, align 8
  %19 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %20 = icmp ne %struct.cmb_data* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %23 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %22, i32 0, i32 0
  %24 = load %struct.cmb_data*, %struct.cmb_data** %23, align 8
  %25 = call i32 @kfree(%struct.cmb_data* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %28 = call i32 @kfree(%struct.cmb_data* %27)
  %29 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %29, i32 0, i32 0
  %31 = call i32 @list_del_init(i32* %30)
  %32 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 3))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 0), align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @CMF_OFF, align 4
  %40 = call i32 @cmf_activate(i32* null, i32 %39)
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @get_order(i32 %43)
  %45 = call i32 @free_pages(i64 %42, i32 %44)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  br label %46

46:                                               ; preds = %34, %26
  %47 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @spin_unlock_irq(i32 %49)
  %51 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
