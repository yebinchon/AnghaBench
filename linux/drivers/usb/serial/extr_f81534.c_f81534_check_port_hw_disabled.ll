; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_check_port_hw_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_check_port_hw_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@F81534_MODEM_STATUS_REG = common dso_local global i32 0, align 4
@F81534_FIFO_CONTROL_REG = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@F81534_MODEM_CONTROL_REG = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i32 0, align 4
@F81534_LINE_STATUS_REG = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32)* @f81534_check_port_hw_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81534_check_port_hw_disabled(%struct.usb_serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @UART_MSR_DCD, align 4
  %12 = load i32, i32* @UART_MSR_RI, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @UART_MSR_DSR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UART_MSR_CTS, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @F81534_MODEM_STATUS_REG, align 4
  %21 = call i32 @f81534_get_phy_port_register(%struct.usb_serial* %18, i32 %19, i32 %20, i32* %8)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %96

32:                                               ; preds = %25
  %33 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @F81534_FIFO_CONTROL_REG, align 4
  %36 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %37 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @f81534_set_phy_port_register(%struct.usb_serial* %33, i32 %34, i32 %35, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %96

45:                                               ; preds = %32
  %46 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @F81534_MODEM_CONTROL_REG, align 4
  %49 = call i32 @f81534_get_phy_port_register(%struct.usb_serial* %46, i32 %47, i32 %48, i32* %7)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %96

53:                                               ; preds = %45
  %54 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @F81534_MODEM_CONTROL_REG, align 4
  %57 = load i32, i32* @UART_MCR_LOOP, align 4
  %58 = call i32 @f81534_set_phy_port_register(%struct.usb_serial* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %96

62:                                               ; preds = %53
  %63 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @F81534_MODEM_CONTROL_REG, align 4
  %66 = call i32 @f81534_set_phy_port_register(%struct.usb_serial* %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %96

70:                                               ; preds = %62
  %71 = call i32 @msleep(i32 60)
  %72 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @F81534_LINE_STATUS_REG, align 4
  %75 = call i32 @f81534_get_phy_port_register(%struct.usb_serial* %72, i32 %73, i32 %74, i32* %9)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %96

79:                                               ; preds = %70
  %80 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @F81534_MODEM_CONTROL_REG, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @f81534_set_phy_port_register(%struct.usb_serial* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @UART_LSR_BI, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @UART_LSR_BI, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %94, %87, %78, %69, %61, %52, %44, %31, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @f81534_get_phy_port_register(%struct.usb_serial*, i32, i32, i32*) #1

declare dso_local i32 @f81534_set_phy_port_register(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
