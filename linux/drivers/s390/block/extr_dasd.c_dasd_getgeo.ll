; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i32 }
%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.hd_geometry*)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @dasd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dasd_device* @dasd_device_from_gendisk(i32 %9)
  store %struct.dasd_device* %10, %struct.dasd_device** %6, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %12 = icmp ne %struct.dasd_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, %struct.hd_geometry*)*, i32 (%struct.TYPE_4__*, %struct.hd_geometry*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_4__*, %struct.hd_geometry*)* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %30 = call i32 @dasd_put_device(%struct.dasd_device* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %21
  %34 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, %struct.hd_geometry*)*, i32 (%struct.TYPE_4__*, %struct.hd_geometry*)** %37, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %40 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %43 = call i32 %38(%struct.TYPE_4__* %41, %struct.hd_geometry* %42)
  %44 = load %struct.block_device*, %struct.block_device** %4, align 8
  %45 = call i32 @get_start_sect(%struct.block_device* %44)
  %46 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %45, %50
  %52 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %53 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %55 = call i32 @dasd_put_device(%struct.dasd_device* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %33, %28, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.dasd_device* @dasd_device_from_gendisk(i32) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @get_start_sect(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
