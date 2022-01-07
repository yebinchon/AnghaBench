; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.belkin_sa_private = type { i64, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@BELKIN_SA_SET_RTS_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set RTS error %d\0A\00", align 1
@BELKIN_SA_SET_DTR_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Set DTR error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @belkin_sa_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @belkin_sa_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.usb_serial*, align 8
  %9 = alloca %struct.belkin_sa_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %16, align 8
  store %struct.usb_serial_port* %17, %struct.usb_serial_port** %7, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 1
  %20 = load %struct.usb_serial*, %struct.usb_serial** %19, align 8
  store %struct.usb_serial* %20, %struct.usb_serial** %8, align 8
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %22 = call %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port* %21)
  store %struct.belkin_sa_private* %22, %struct.belkin_sa_private** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %9, align 8
  %24 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %23, i32 0, i32 1
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %9, align 8
  %28 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TIOCM_RTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %10, align 8
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %3
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TIOCM_DTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @TIOCM_DTR, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %10, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %10, align 8
  store i32 1, i32* %14, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TIOCM_RTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @TIOCM_RTS, align 4
  %56 = xor i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TIOCM_DTR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @TIOCM_DTR, align 4
  %67 = xor i32 %66, -1
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %10, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %9, align 8
  %74 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %9, align 8
  %76 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %75, i32 0, i32 1
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* @BELKIN_SA_SET_RTS_REQUEST, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @BSA_USB_CMD(i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %86 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %85, i32 0, i32 0
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %101

89:                                               ; preds = %71
  %90 = load i32, i32* @BELKIN_SA_SET_DTR_REQUEST, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @BSA_USB_CMD(i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %97 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %96, i32 0, i32 0
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %101

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %95, %84
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BSA_USB_CMD(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
