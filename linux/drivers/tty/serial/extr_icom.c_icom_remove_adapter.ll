; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_adapter = type { i32, %struct.TYPE_4__*, i32, %struct.icom_port* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.icom_port = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ICOM_PORT_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Device removed\0A\00", align 1
@icom_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icom_adapter*)* @icom_remove_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icom_remove_adapter(%struct.icom_adapter* %0) #0 {
  %2 = alloca %struct.icom_adapter*, align 8
  %3 = alloca %struct.icom_port*, align 8
  %4 = alloca i32, align 4
  store %struct.icom_adapter* %0, %struct.icom_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %12, i32 0, i32 3
  %14 = load %struct.icom_port*, %struct.icom_port** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %14, i64 %16
  store %struct.icom_port* %17, %struct.icom_port** %3, align 8
  %18 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %19 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ICOM_PORT_ACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %11
  %24 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %30 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %29, i32 0, i32 2
  %31 = call i32 @uart_remove_one_port(i32* @icom_uart_driver, i32* %30)
  %32 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %33 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @writeb(i32 0, i32* %35)
  %37 = call i32 @msleep(i32 100)
  %38 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %39 = call i32 @stop_processor(%struct.icom_port* %38)
  %40 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %41 = call i32 @free_port_memory(%struct.icom_port* %40)
  br label %42

42:                                               ; preds = %23, %11
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %5

46:                                               ; preds = %5
  %47 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %53 = bitcast %struct.icom_adapter* %52 to i8*
  %54 = call i32 @free_irq(i32 %51, i8* %53)
  %55 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iounmap(i32 %57)
  %59 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @pci_release_regions(%struct.TYPE_4__* %61)
  %63 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %64 = call i32 @icom_free_adapter(%struct.icom_adapter* %63)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @uart_remove_one_port(i32*, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stop_processor(%struct.icom_port*) #1

declare dso_local i32 @free_port_memory(%struct.icom_port*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_4__*) #1

declare dso_local i32 @icom_free_adapter(%struct.icom_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
