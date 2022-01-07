; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_i2o_install_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_i2o_install_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.i2o_device* }
%struct.i2o_device = type { i64*, %struct.i2o_device*, %struct.i2o_device*, i32*, %struct.TYPE_3__* }

@adpt_configuration_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.i2o_device*)* @adpt_i2o_install_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_i2o_install_device(%struct.TYPE_3__* %0, %struct.i2o_device* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.i2o_device* %1, %struct.i2o_device** %4, align 8
  %5 = call i32 @mutex_lock(i32* @adpt_configuration_lock)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %8 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %7, i32 0, i32 4
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %8, align 8
  %9 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %10 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.i2o_device*, %struct.i2o_device** %12, align 8
  %14 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %15 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %14, i32 0, i32 2
  store %struct.i2o_device* %13, %struct.i2o_device** %15, align 8
  %16 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %17 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %16, i32 0, i32 1
  store %struct.i2o_device* null, %struct.i2o_device** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.i2o_device*, %struct.i2o_device** %19, align 8
  %21 = icmp ne %struct.i2o_device* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.i2o_device*, %struct.i2o_device** %25, align 8
  %27 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %26, i32 0, i32 1
  store %struct.i2o_device* %23, %struct.i2o_device** %27, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.i2o_device* %29, %struct.i2o_device** %31, align 8
  %32 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %33 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64 0, i64* %34, align 8
  %35 = call i32 @mutex_unlock(i32* @adpt_configuration_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
