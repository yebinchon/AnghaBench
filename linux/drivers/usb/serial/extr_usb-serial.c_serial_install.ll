; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32** }
%struct.tty_struct = type { i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (%struct.tty_struct*)* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @serial_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32 %16)
  store %struct.usb_serial_port* %17, %struct.usb_serial_port** %8, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %19 = icmp ne %struct.usb_serial_port* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 0
  %25 = load %struct.usb_serial*, %struct.usb_serial** %24, align 8
  store %struct.usb_serial* %25, %struct.usb_serial** %7, align 8
  %26 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %27 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %98

35:                                               ; preds = %22
  %36 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %37 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_autopm_get_interface(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %90

43:                                               ; preds = %35
  %44 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %45 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %54 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %55 = call i32 @tty_standard_install(%struct.tty_driver* %53, %struct.tty_struct* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %85

59:                                               ; preds = %43
  %60 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %61 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %67 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %69, align 8
  %71 = icmp ne i32 (%struct.tty_struct*)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %74 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %76, align 8
  %78 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %79 = call i32 %77(%struct.tty_struct* %78)
  br label %80

80:                                               ; preds = %72, %65, %59
  %81 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %82 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 1
  store %struct.usb_serial_port* %81, %struct.usb_serial_port** %83, align 8
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %105

85:                                               ; preds = %58
  %86 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %87 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @usb_autopm_put_interface(i32 %88)
  br label %90

90:                                               ; preds = %85, %42
  %91 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %92 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @module_put(i32 %96)
  br label %98

98:                                               ; preds = %90, %34
  %99 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %100 = call i32 @usb_serial_put(%struct.usb_serial* %99)
  %101 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %102 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %80, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
