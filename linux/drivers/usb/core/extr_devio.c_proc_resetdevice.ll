; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_resetdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_resetdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.usb_dev_state = type { %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.usb_host_config* }
%struct.usb_host_config = type { %struct.usb_interface**, %struct.TYPE_8__ }
%struct.usb_interface = type { %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"usbfs: interface %d claimed by %s while '%s' resets device\0A\00", align 1
@current = common dso_local global %struct.TYPE_14__* null, align 8
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dev_state*)* @proc_resetdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_resetdevice(%struct.usb_dev_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_dev_state*, align 8
  %4 = alloca %struct.usb_host_config*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_dev_state* %0, %struct.usb_dev_state** %3, align 8
  %8 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %9 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.usb_host_config*, %struct.usb_host_config** %11, align 8
  store %struct.usb_host_config* %12, %struct.usb_host_config** %4, align 8
  %13 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %14 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %1
  %18 = load %struct.usb_host_config*, %struct.usb_host_config** %4, align 8
  %19 = icmp ne %struct.usb_host_config* %18, null
  br i1 %19, label %20, label %74

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %70, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.usb_host_config*, %struct.usb_host_config** %4, align 8
  %24 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %21
  %29 = load %struct.usb_host_config*, %struct.usb_host_config** %4, align 8
  %30 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %29, i32 0, i32 0
  %31 = load %struct.usb_interface**, %struct.usb_interface*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %31, i64 %33
  %35 = load %struct.usb_interface*, %struct.usb_interface** %34, align 8
  store %struct.usb_interface* %35, %struct.usb_interface** %5, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %43 = call i64 @usb_interface_claimed(%struct.usb_interface* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %48 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %47, i32 0, i32 1
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %45
  %52 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %53 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %62, i32 %65)
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %79

69:                                               ; preds = %45, %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %21

73:                                               ; preds = %21
  br label %74

74:                                               ; preds = %73, %17, %1
  %75 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %76 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = call i32 @usb_reset_device(%struct.TYPE_13__* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %51
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_reset_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
