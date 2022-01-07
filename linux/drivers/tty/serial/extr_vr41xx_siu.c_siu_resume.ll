; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { i64, i32* }
%struct.platform_device = type { i32 }

@siu_uart_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@siu_uart_ports = common dso_local global %struct.uart_port* null, align 8
@PORT_VR41XX_SIU = common dso_local global i64 0, align 8
@PORT_VR41XX_DSIU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @siu_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @siu_uart_driver, i32 0, i32 0), align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.uart_port*, %struct.uart_port** @siu_uart_ports, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i64 %12
  store %struct.uart_port* %13, %struct.uart_port** %3, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORT_VR41XX_SIU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORT_VR41XX_DSIU, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19, %9
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = icmp eq i32* %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = call i32 @uart_resume_port(%struct.TYPE_3__* @siu_uart_driver, %struct.uart_port* %33)
  br label %35

35:                                               ; preds = %32, %25, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %5

39:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @uart_resume_port(%struct.TYPE_3__*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
