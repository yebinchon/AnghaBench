; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.gs_port* }
%struct.gs_port = type { i32, i32, %struct.TYPE_5__, i32, %struct.gserial* }
%struct.TYPE_5__ = type { i64 }
%struct.gserial = type { %struct.TYPE_6__*, i32 (%struct.gserial*)*, i32 (%struct.gserial*)*, i32, %struct.gs_port*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.gs_port* }

@MAX_U_SERIAL_PORTS = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ports = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"serial line %d not allocated.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"serial line %d is in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"gserial_connect: start ttyGS%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gserial_connect(%struct.gserial* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gserial*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gserial* %0, %struct.gserial** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MAX_U_SERIAL_PORTS, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %130

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.gs_port*, %struct.gs_port** %19, align 8
  store %struct.gs_port* %20, %struct.gs_port** %6, align 8
  %21 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %22 = icmp ne %struct.gs_port* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %15
  %29 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %30 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %29, i32 0, i32 4
  %31 = load %struct.gserial*, %struct.gserial** %30, align 8
  %32 = icmp ne %struct.gserial* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %130

38:                                               ; preds = %28
  %39 = load %struct.gserial*, %struct.gserial** %4, align 8
  %40 = getelementptr inbounds %struct.gserial, %struct.gserial* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @usb_ep_enable(%struct.TYPE_6__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %130

47:                                               ; preds = %38
  %48 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %49 = load %struct.gserial*, %struct.gserial** %4, align 8
  %50 = getelementptr inbounds %struct.gserial, %struct.gserial* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.gs_port* %48, %struct.gs_port** %52, align 8
  %53 = load %struct.gserial*, %struct.gserial** %4, align 8
  %54 = getelementptr inbounds %struct.gserial, %struct.gserial* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @usb_ep_enable(%struct.TYPE_6__* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %124

60:                                               ; preds = %47
  %61 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %62 = load %struct.gserial*, %struct.gserial** %4, align 8
  %63 = getelementptr inbounds %struct.gserial, %struct.gserial* %62, i32 0, i32 5
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.gs_port* %61, %struct.gs_port** %65, align 8
  %66 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %67 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %71 = load %struct.gserial*, %struct.gserial** %4, align 8
  %72 = getelementptr inbounds %struct.gserial, %struct.gserial* %71, i32 0, i32 4
  store %struct.gs_port* %70, %struct.gs_port** %72, align 8
  %73 = load %struct.gserial*, %struct.gserial** %4, align 8
  %74 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %75 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %74, i32 0, i32 4
  store %struct.gserial* %73, %struct.gserial** %75, align 8
  %76 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %77 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.gserial*, %struct.gserial** %4, align 8
  %80 = getelementptr inbounds %struct.gserial, %struct.gserial* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %82 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %60
  %87 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %88 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %92 = call i32 @gs_start_io(%struct.gs_port* %91)
  %93 = load %struct.gserial*, %struct.gserial** %4, align 8
  %94 = getelementptr inbounds %struct.gserial, %struct.gserial* %93, i32 0, i32 2
  %95 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %94, align 8
  %96 = icmp ne i32 (%struct.gserial*)* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.gserial*, %struct.gserial** %4, align 8
  %99 = getelementptr inbounds %struct.gserial, %struct.gserial* %98, i32 0, i32 2
  %100 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %99, align 8
  %101 = load %struct.gserial*, %struct.gserial** %4, align 8
  %102 = call i32 %100(%struct.gserial* %101)
  br label %103

103:                                              ; preds = %97, %86
  br label %116

104:                                              ; preds = %60
  %105 = load %struct.gserial*, %struct.gserial** %4, align 8
  %106 = getelementptr inbounds %struct.gserial, %struct.gserial* %105, i32 0, i32 1
  %107 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %106, align 8
  %108 = icmp ne i32 (%struct.gserial*)* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.gserial*, %struct.gserial** %4, align 8
  %111 = getelementptr inbounds %struct.gserial, %struct.gserial* %110, i32 0, i32 1
  %112 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %111, align 8
  %113 = load %struct.gserial*, %struct.gserial** %4, align 8
  %114 = call i32 %112(%struct.gserial* %113)
  br label %115

115:                                              ; preds = %109, %104
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @gs_console_connect(i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %120 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %119, i32 0, i32 0
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %130

124:                                              ; preds = %59
  %125 = load %struct.gserial*, %struct.gserial** %4, align 8
  %126 = getelementptr inbounds %struct.gserial, %struct.gserial* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = call i32 @usb_ep_disable(%struct.TYPE_6__* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %116, %45, %33, %23, %12
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @gs_start_io(%struct.gs_port*) #1

declare dso_local i32 @gs_console_connect(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
