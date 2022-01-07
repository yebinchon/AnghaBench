; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave_system_control_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.spi_slave_system_control_priv*, i32 }

@spi_slave_system_control_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"spi_async() failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_slave_system_control_priv*)* @spi_slave_system_control_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_slave_system_control_submit(%struct.spi_slave_system_control_priv* %0) #0 {
  %2 = alloca %struct.spi_slave_system_control_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_slave_system_control_priv* %0, %struct.spi_slave_system_control_priv** %2, align 8
  %4 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %5 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %4, i32 0, i32 1
  %6 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %7 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %6, i32 0, i32 2
  %8 = call i32 @spi_message_init_with_transfers(%struct.TYPE_4__* %5, i32* %7, i32 1)
  %9 = load i32, i32* @spi_slave_system_control_complete, align 4
  %10 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %11 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %14 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %15 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.spi_slave_system_control_priv* %13, %struct.spi_slave_system_control_priv** %16, align 8
  %17 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %18 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %21 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %20, i32 0, i32 1
  %22 = call i32 @spi_async(%struct.TYPE_5__* %19, %struct.TYPE_4__* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %2, align 8
  %27 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @spi_message_init_with_transfers(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @spi_async(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
