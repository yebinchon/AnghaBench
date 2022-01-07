; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_register_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_register_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_driver = type { %struct.usb_driver*, i64 }
%struct.usb_driver = type { i8*, i32, i32, %struct.TYPE_2__, %struct.usb_device_id*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_serial_suspend = common dso_local global i32 0, align 4
@usb_serial_resume = common dso_local global i32 0, align 4
@usb_serial_probe = common dso_local global i32 0, align 4
@usb_serial_disconnect = common dso_local global i32 0, align 4
@usb_serial_reset_resume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_serial_register_drivers(%struct.usb_serial_driver** %0, i8* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_driver**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_driver*, align 8
  %10 = alloca %struct.usb_serial_driver**, align 8
  store %struct.usb_serial_driver** %0, %struct.usb_serial_driver*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.usb_driver* @kzalloc(i32 56, i32 %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %9, align 8
  %13 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %14 = icmp ne %struct.usb_driver* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %109

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %21 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %23 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %22, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %25 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @usb_serial_suspend, align 4
  %27 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %28 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @usb_serial_resume, align 4
  %30 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %31 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @usb_serial_probe, align 4
  %33 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %34 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @usb_serial_disconnect, align 4
  %36 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %37 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %5, align 8
  store %struct.usb_serial_driver** %38, %struct.usb_serial_driver*** %10, align 8
  br label %39

39:                                               ; preds = %54, %18
  %40 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %41 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %40, align 8
  %42 = icmp ne %struct.usb_serial_driver* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %45 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %44, align 8
  %46 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @usb_serial_reset_resume, align 4
  %51 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %52 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %56 = getelementptr inbounds %struct.usb_serial_driver*, %struct.usb_serial_driver** %55, i32 1
  store %struct.usb_serial_driver** %56, %struct.usb_serial_driver*** %10, align 8
  br label %39

57:                                               ; preds = %49, %39
  %58 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %59 = call i32 @usb_register(%struct.usb_driver* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %105

63:                                               ; preds = %57
  %64 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %5, align 8
  store %struct.usb_serial_driver** %64, %struct.usb_serial_driver*** %10, align 8
  br label %65

65:                                               ; preds = %81, %63
  %66 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %67 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %66, align 8
  %68 = icmp ne %struct.usb_serial_driver* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %71 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %72 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %71, align 8
  %73 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %72, i32 0, i32 0
  store %struct.usb_driver* %70, %struct.usb_driver** %73, align 8
  %74 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %75 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %74, align 8
  %76 = call i32 @usb_serial_register(%struct.usb_serial_driver* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %92

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %83 = getelementptr inbounds %struct.usb_serial_driver*, %struct.usb_serial_driver** %82, i32 1
  store %struct.usb_serial_driver** %83, %struct.usb_serial_driver*** %10, align 8
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %86 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %87 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %86, i32 0, i32 4
  store %struct.usb_device_id* %85, %struct.usb_device_id** %87, align 8
  %88 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %89 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @driver_attach(i32* %90)
  store i32 %91, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %109

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %98, %92
  %94 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %95 = getelementptr inbounds %struct.usb_serial_driver*, %struct.usb_serial_driver** %94, i32 -1
  store %struct.usb_serial_driver** %95, %struct.usb_serial_driver*** %10, align 8
  %96 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %5, align 8
  %97 = icmp ugt %struct.usb_serial_driver** %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.usb_serial_driver**, %struct.usb_serial_driver*** %10, align 8
  %100 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %99, align 8
  %101 = call i32 @usb_serial_deregister(%struct.usb_serial_driver* %100)
  br label %93

102:                                              ; preds = %93
  %103 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %104 = call i32 @usb_deregister(%struct.usb_driver* %103)
  br label %105

105:                                              ; preds = %102, %62
  %106 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %107 = call i32 @kfree(%struct.usb_driver* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %84, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.usb_driver* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_register(%struct.usb_driver*) #1

declare dso_local i32 @usb_serial_register(%struct.usb_serial_driver*) #1

declare dso_local i32 @driver_attach(i32*) #1

declare dso_local i32 @usb_serial_deregister(%struct.usb_serial_driver*) #1

declare dso_local i32 @usb_deregister(%struct.usb_driver*) #1

declare dso_local i32 @kfree(%struct.usb_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
