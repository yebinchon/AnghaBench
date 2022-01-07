; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { %struct.TYPE_2__*, i32, %struct.uart_port }
%struct.TYPE_2__ = type { i32 }
%struct.uart_port = type { i32, i64 }

@MEN_Z135_STAT_REG = common dso_local global i64 0, align 8
@MEN_Z135_IRQ_ID_RLS = common dso_local global i32 0, align 4
@MEN_Z135_IRQ_ID_RDA = common dso_local global i32 0, align 4
@MEN_Z135_IRQ_ID_CTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Character Timeout Indication\0A\00", align 1
@MEN_Z135_IRQ_ID_TSA = common dso_local global i32 0, align 4
@MEN_Z135_IRQ_ID_MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @men_z135_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z135_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.men_z135_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.men_z135_port*
  store %struct.men_z135_port* %10, %struct.men_z135_port** %5, align 8
  %11 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %12 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %11, i32 0, i32 2
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEN_Z135_STAT_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ioread32(i64 %17)
  %19 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %20 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %22 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IRQ_ID(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %87

28:                                               ; preds = %2
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEN_Z135_STAT_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite8(i32 %32, i64 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MEN_Z135_IRQ_ID_RLS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %45 = call i32 @men_z135_handle_lsr(%struct.men_z135_port* %44)
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MEN_Z135_IRQ_ID_RDA, align 4
  %49 = load i32, i32* @MEN_Z135_IRQ_ID_CTI, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MEN_Z135_IRQ_ID_CTI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %60 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %66 = call i32 @men_z135_handle_rx(%struct.men_z135_port* %65)
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %46
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MEN_Z135_IRQ_ID_TSA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %74 = call i32 @men_z135_handle_tx(%struct.men_z135_port* %73)
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MEN_Z135_IRQ_ID_MST, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.men_z135_port*, %struct.men_z135_port** %5, align 8
  %82 = call i32 @men_z135_handle_modem_status(%struct.men_z135_port* %81)
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %27
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @IRQ_RETVAL(i32 %88)
  ret i32 %89
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @IRQ_ID(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @men_z135_handle_lsr(%struct.men_z135_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @men_z135_handle_rx(%struct.men_z135_port*) #1

declare dso_local i32 @men_z135_handle_tx(%struct.men_z135_port*) #1

declare dso_local i32 @men_z135_handle_modem_status(%struct.men_z135_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
