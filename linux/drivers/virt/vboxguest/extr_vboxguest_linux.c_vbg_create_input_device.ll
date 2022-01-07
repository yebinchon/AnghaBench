; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_create_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_create_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BUS_PCI = common dso_local global i32 0, align 4
@VBOX_VENDORID = common dso_local global i32 0, align 4
@VMMDEV_DEVICEID = common dso_local global i32 0, align 4
@vbg_input_open = common dso_local global i32 0, align 4
@vbg_input_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VirtualBox mouse integration\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@VMMDEV_MOUSE_RANGE_MIN = common dso_local global i32 0, align 4
@VMMDEV_MOUSE_RANGE_MAX = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*)* @vbg_create_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_create_input_device(%struct.vbg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vbg_dev*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %3, align 8
  %5 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %6 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.input_dev* @devm_input_allocate_device(i32 %7)
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = icmp ne %struct.input_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @BUS_PCI, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @VBOX_VENDORID, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @VMMDEV_DEVICEID, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @vbg_input_open, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @vbg_input_close, align 4
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %34 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = load i32, i32* @ABS_X, align 4
  %43 = load i32, i32* @VMMDEV_MOUSE_RANGE_MIN, align 4
  %44 = load i32, i32* @VMMDEV_MOUSE_RANGE_MAX, align 4
  %45 = call i32 @input_set_abs_params(%struct.input_dev* %41, i32 %42, i32 %43, i32 %44, i32 0, i32 0)
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = load i32, i32* @ABS_Y, align 4
  %48 = load i32, i32* @VMMDEV_MOUSE_RANGE_MIN, align 4
  %49 = load i32, i32* @VMMDEV_MOUSE_RANGE_MAX, align 4
  %50 = call i32 @input_set_abs_params(%struct.input_dev* %46, i32 %47, i32 %48, i32 %49, i32 0, i32 0)
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = load i32, i32* @EV_KEY, align 4
  %53 = load i32, i32* @BTN_MOUSE, align 4
  %54 = call i32 @input_set_capability(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %57 = call i32 @input_set_drvdata(%struct.input_dev* %55, %struct.vbg_dev* %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %60 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %59, i32 0, i32 0
  store %struct.input_dev* %58, %struct.input_dev** %60, align 8
  %61 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %61, i32 0, i32 0
  %63 = load %struct.input_dev*, %struct.input_dev** %62, align 8
  %64 = call i32 @input_register_device(%struct.input_dev* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %14, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.vbg_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
