; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_set_port_output_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_set_port_output_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f81534_port_out_pin = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.f81534_serial_private = type { i64* }
%struct.f81534_port_private = type { i64 }

@F81534_CONF_INIT_GPIO_OFFSET = common dso_local global i64 0, align 8
@F81534_CONF_GPIO_SHUTDOWN = common dso_local global i64 0, align 8
@F81534_CONF_WORK_GPIO_OFFSET = common dso_local global i64 0, align 8
@F81534_CONF_GPIO_RS232 = common dso_local global i64 0, align 8
@f81534_port_out_pins = common dso_local global %struct.f81534_port_out_pin* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Output pin (M0/M1/M2): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @f81534_set_port_output_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81534_set_port_output_pin(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.f81534_serial_private*, align 8
  %5 = alloca %struct.f81534_port_private*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.f81534_port_out_pin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  store %struct.usb_serial* %14, %struct.usb_serial** %6, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %16 = call %struct.f81534_serial_private* @usb_get_serial_data(%struct.usb_serial* %15)
  store %struct.f81534_serial_private* %16, %struct.f81534_serial_private** %4, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %18 = call %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %17)
  store %struct.f81534_port_private* %18, %struct.f81534_port_private** %5, align 8
  %19 = load i64, i64* @F81534_CONF_INIT_GPIO_OFFSET, align 8
  %20 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %21 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.f81534_serial_private*, %struct.f81534_serial_private** %4, align 8
  %25 = getelementptr inbounds %struct.f81534_serial_private, %struct.f81534_serial_private* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @F81534_CONF_GPIO_SHUTDOWN, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %1
  %34 = load i64, i64* @F81534_CONF_WORK_GPIO_OFFSET, align 8
  %35 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %36 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.f81534_serial_private*, %struct.f81534_serial_private** %4, align 8
  %40 = getelementptr inbounds %struct.f81534_serial_private, %struct.f81534_serial_private* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @F81534_CONF_GPIO_SHUTDOWN, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i64, i64* @F81534_CONF_GPIO_RS232, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %33
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.f81534_port_out_pin*, %struct.f81534_port_out_pin** @f81534_port_out_pins, align 8
  %53 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %54 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.f81534_port_out_pin, %struct.f81534_port_out_pin* %52, i64 %55
  store %struct.f81534_port_out_pin* %56, %struct.f81534_port_out_pin** %7, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %105, %51
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.f81534_port_out_pin*, %struct.f81534_port_out_pin** %7, align 8
  %60 = getelementptr inbounds %struct.f81534_port_out_pin, %struct.f81534_port_out_pin* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %57
  %65 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %66 = load %struct.f81534_port_out_pin*, %struct.f81534_port_out_pin** %7, align 8
  %67 = getelementptr inbounds %struct.f81534_port_out_pin, %struct.f81534_port_out_pin* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.f81534_port_out_pin*, %struct.f81534_port_out_pin** %7, align 8
  %75 = getelementptr inbounds %struct.f81534_port_out_pin, %struct.f81534_port_out_pin* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @BIT(i32 %83)
  %85 = and i64 %82, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %64
  %88 = load %struct.f81534_port_out_pin*, %struct.f81534_port_out_pin** %7, align 8
  %89 = getelementptr inbounds %struct.f81534_port_out_pin, %struct.f81534_port_out_pin* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %64
  br label %97

97:                                               ; preds = %96, %87
  %98 = phi i32 [ %95, %87 ], [ 0, %96 ]
  %99 = call i32 @f81534_set_mask_register(%struct.usb_serial* %65, i32 %73, i32 %81, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %113

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %57

108:                                              ; preds = %57
  %109 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %110 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %109, i32 0, i32 0
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %108, %102
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.f81534_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @f81534_set_mask_register(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
