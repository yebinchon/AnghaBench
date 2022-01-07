; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32* }
%struct.sbd_port = type { i32*, %struct.sbd_duart* }
%struct.sbd_duart = type { i32, i32 }

@DUART_CHANREG_SPACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sbd_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_release_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sbd_port*, align 8
  %4 = alloca %struct.sbd_duart*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.sbd_port* @to_sport(%struct.uart_port* %5)
  store %struct.sbd_port* %6, %struct.sbd_port** %3, align 8
  %7 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %8 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %7, i32 0, i32 1
  %9 = load %struct.sbd_duart*, %struct.sbd_duart** %8, align 8
  store %struct.sbd_duart* %9, %struct.sbd_duart** %4, align 8
  %10 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %11 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @iounmap(i32* %12)
  %14 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %15 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @iounmap(i32* %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.sbd_duart*, %struct.sbd_duart** %4, align 8
  %23 = getelementptr inbounds %struct.sbd_duart, %struct.sbd_duart* %22, i32 0, i32 1
  %24 = call i64 @refcount_dec_and_test(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.sbd_duart*, %struct.sbd_duart** %4, align 8
  %28 = getelementptr inbounds %struct.sbd_duart, %struct.sbd_duart* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DUART_CHANREG_SPACING, align 4
  %31 = call i32 @release_mem_region(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DUART_CHANREG_SPACING, align 4
  %37 = call i32 @release_mem_region(i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
