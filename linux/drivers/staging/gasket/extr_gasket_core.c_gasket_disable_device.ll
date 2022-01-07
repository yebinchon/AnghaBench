; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i64*, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i32 }

@GASKET_STATUS_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_disable_device(%struct.gasket_dev* %0) #0 {
  %2 = alloca %struct.gasket_dev*, align 8
  %3 = alloca %struct.gasket_driver_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %2, align 8
  %5 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %8, align 8
  store %struct.gasket_driver_desc* %9, %struct.gasket_driver_desc** %3, align 8
  %10 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %11 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %17 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @cdev_del(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @GASKET_STATUS_DEAD, align 4
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %23 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %25 = call i32 @gasket_interrupt_cleanup(%struct.gasket_dev* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %59, %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %29 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %43 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @gasket_page_table_reset(i64 %48)
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %51 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @gasket_page_table_cleanup(i64 %56)
  br label %58

58:                                               ; preds = %41, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %26

62:                                               ; preds = %26
  ret void
}

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @gasket_interrupt_cleanup(%struct.gasket_dev*) #1

declare dso_local i32 @gasket_page_table_reset(i64) #1

declare dso_local i32 @gasket_page_table_cleanup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
