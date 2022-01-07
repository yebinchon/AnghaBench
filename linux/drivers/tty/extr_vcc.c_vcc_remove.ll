; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vcc_port = type { i32, %struct.vcc_port*, %struct.TYPE_4__, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.vcc_port*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@vcc_tty_driver = common dso_local global i32 0, align 4
@vcc_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @vcc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.vcc_port*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = call %struct.vcc_port* @dev_get_drvdata(%struct.TYPE_5__* %6)
  store %struct.vcc_port* %7, %struct.vcc_port** %4, align 8
  %8 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %9 = icmp ne %struct.vcc_port* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %15 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %14, i32 0, i32 6
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %18 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %17, i32 0, i32 5
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %21 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %26 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @tty_vhangup(i64 %27)
  br label %29

29:                                               ; preds = %24, %13
  %30 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %31 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.vcc_port* @vcc_get(i32 %32, i32 1)
  store %struct.vcc_port* %33, %struct.vcc_port** %4, align 8
  %34 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %35 = icmp ne %struct.vcc_port* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %89

43:                                               ; preds = %29
  %44 = load i32, i32* @vcc_tty_driver, align 4
  %45 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %46 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tty_unregister_device(i32 %44, i32 %47)
  %49 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %50 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @del_timer_sync(i32* %51)
  %53 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %54 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %53, i32 0, i32 2
  %55 = call i32 @vio_ldc_free(%struct.TYPE_4__* %54)
  %56 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_remove_group(i32* %58, i32* @vcc_attribute_group)
  %60 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %61 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %61, i32* null)
  %63 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %64 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %43
  %68 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %69 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %71 = call i32 @vcc_put(%struct.vcc_port* %70, i32 1)
  br label %88

72:                                               ; preds = %43
  %73 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %74 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @vcc_table_remove(i32 %75)
  %77 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %78 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.vcc_port*, %struct.vcc_port** %79, align 8
  %81 = call i32 @kfree(%struct.vcc_port* %80)
  %82 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %83 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %82, i32 0, i32 1
  %84 = load %struct.vcc_port*, %struct.vcc_port** %83, align 8
  %85 = call i32 @kfree(%struct.vcc_port* %84)
  %86 = load %struct.vcc_port*, %struct.vcc_port** %4, align 8
  %87 = call i32 @kfree(%struct.vcc_port* %86)
  br label %88

88:                                               ; preds = %72, %67
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %40, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.vcc_port* @dev_get_drvdata(%struct.TYPE_5__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @tty_vhangup(i64) #1

declare dso_local %struct.vcc_port* @vcc_get(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @vio_ldc_free(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

declare dso_local i32 @vcc_table_remove(i32) #1

declare dso_local i32 @kfree(%struct.vcc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
