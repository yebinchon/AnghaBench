; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32* }
%struct.uart_sunsu_port = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@SU_PORT_MS = common dso_local global i64 0, align 8
@SU_PORT_KBD = common dso_local global i64 0, align 8
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@sunsu_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @su_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @su_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_sunsu_port*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.uart_sunsu_port* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.uart_sunsu_port* %6, %struct.uart_sunsu_port** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SU_PORT_MS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SU_PORT_KBD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %35

23:                                               ; preds = %19
  %24 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PORT_UNKNOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %31, i32 0, i32 2
  %33 = call i32 @uart_remove_one_port(i32* @sunsu_reg, %struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %30, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @of_iounmap(i32* %45, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %35
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %59 = call i32 @kfree(%struct.uart_sunsu_port* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret i32 0
}

declare dso_local %struct.uart_sunsu_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.uart_sunsu_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
