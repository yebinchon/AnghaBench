; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i32 }
%struct.stub_device = type { i32 }
%struct.bus_id_priv = type { i32, i64, i32, i32* }
%struct.usb_dev_state = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Enter disconnect\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"could not get device\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to release port\0A\00", align 1
@current = common dso_local global i32 0, align 4
@STUB_BUSID_ALLOC = common dso_local global i64 0, align 8
@STUB_BUSID_ADDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @stub_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_disconnect(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.stub_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bus_id_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 0
  %9 = call i8* @dev_name(i32* %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.bus_id_priv* @get_busid_priv(i8* %13)
  store %struct.bus_id_priv* %14, %struct.bus_id_priv** %5, align 8
  %15 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %16 = icmp ne %struct.bus_id_priv* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = call %struct.stub_device* @dev_get_drvdata(i32* %21)
  store %struct.stub_device* %22, %struct.stub_device** %3, align 8
  %23 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %24 = icmp ne %struct.stub_device* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %30 = call i32 @put_busid_priv(%struct.bus_id_priv* %29)
  br label %98

31:                                               ; preds = %19
  %32 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = call i32 @dev_set_drvdata(i32* %33, i32* null)
  %35 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %36 = call i32 @put_busid_priv(%struct.bus_id_priv* %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %44 = bitcast %struct.usb_device* %43 to %struct.usb_dev_state*
  %45 = call i32 @usb_hub_release_port(i32 %39, i32 %42, %struct.usb_dev_state* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %98

52:                                               ; preds = %31
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @usbip_in_eh(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %98

57:                                               ; preds = %52
  %58 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %59 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %58, i32 0, i32 2
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %62 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %67 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %70 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %73 = call i32 @shutdown_busid(%struct.bus_id_priv* %72)
  %74 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %75 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_put_dev(i32 %76)
  %78 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %79 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %78, i32 0, i32 2
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %82 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %84 = call i32 @stub_device_free(%struct.stub_device* %83)
  %85 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %86 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STUB_BUSID_ALLOC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %68
  %91 = load i64, i64* @STUB_BUSID_ADDED, align 8
  %92 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %93 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %68
  %95 = load %struct.bus_id_priv*, %struct.bus_id_priv** %5, align 8
  %96 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %95, i32 0, i32 2
  %97 = call i32 @spin_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %56, %48, %25, %17
  ret void
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.bus_id_priv* @get_busid_priv(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.stub_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @put_busid_priv(%struct.bus_id_priv*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @usb_hub_release_port(i32, i32, %struct.usb_dev_state*) #1

declare dso_local i64 @usbip_in_eh(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @shutdown_busid(%struct.bus_id_priv*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @stub_device_free(%struct.stub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
