; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c___pnp_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c___pnp_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}*, i32 }

@PNP_READY = common dso_local global i32 0, align 4
@pnp_lock = common dso_local global i32 0, align 4
@pnp_global = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pnp_add_device(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call i32 @pnp_fixup_device(%struct.pnp_dev* %4)
  %6 = load i32, i32* @PNP_READY, align 4
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = call i32 @mutex_lock(i32* @pnp_lock)
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 3
  %12 = call i32 @list_add_tail(i32* %11, i32* @pnp_global)
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 2
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %14, i32* %18)
  %20 = call i32 @mutex_unlock(i32* @pnp_lock)
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %21, i32 0, i32 1
  %23 = call i32 @device_register(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %28 = call i32 @pnp_delist_device(%struct.pnp_dev* %27)
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %31 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.pnp_dev*)**
  %35 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %34, align 8
  %36 = icmp ne i32 (%struct.pnp_dev*)* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 1
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %41 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.pnp_dev*)**
  %45 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %44, align 8
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %47 = call i32 %45(%struct.pnp_dev* %46)
  %48 = call i32 @device_set_wakeup_capable(i32* %39, i32 %47)
  br label %49

49:                                               ; preds = %37, %29
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @pnp_fixup_device(%struct.pnp_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @pnp_delist_device(%struct.pnp_dev*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
