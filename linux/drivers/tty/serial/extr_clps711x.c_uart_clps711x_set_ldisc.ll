; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i64 }
%struct.clps711x_port = type { i32 }

@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON1_SIREN = common dso_local global i32 0, align 4
@N_IRDA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*)* @uart_clps711x_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_clps711x_set_ldisc(%struct.uart_port* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.clps711x_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.clps711x_port* @dev_get_drvdata(i32 %13)
  store %struct.clps711x_port* %14, %struct.clps711x_port** %5, align 8
  %15 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %16 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SYSCON_OFFSET, align 4
  %19 = load i32, i32* @SYSCON1_SIREN, align 4
  %20 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @N_IRDA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i32, i32* @SYSCON1_SIREN, align 4
  br label %28

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %29)
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.clps711x_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
