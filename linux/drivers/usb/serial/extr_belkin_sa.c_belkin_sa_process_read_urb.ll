; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, i32 }
%struct.belkin_sa_private = type { i8, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@BELKIN_SA_LSR_ERR = common dso_local global i8 0, align 1
@BELKIN_SA_LSR_BI = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@BELKIN_SA_LSR_PE = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@BELKIN_SA_LSR_FE = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"tty_flag = %d\0A\00", align 1
@BELKIN_SA_LSR_OE = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @belkin_sa_process_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @belkin_sa_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.belkin_sa_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.belkin_sa_private* %13, %struct.belkin_sa_private** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %17, i8* %8, align 1
  %18 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %4, align 8
  %19 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %4, align 8
  %23 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* @BELKIN_SA_LSR_ERR, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %4, align 8
  %29 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %27
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 4
  %34 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %4, align 8
  %35 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %34, i32 0, i32 1
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  br label %108

43:                                               ; preds = %1
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @BELKIN_SA_LSR_ERR, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %43
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @BELKIN_SA_LSR_BI, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i8, i8* @TTY_BREAK, align 1
  store i8 %58, i8* %8, align 1
  br label %79

59:                                               ; preds = %50
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @BELKIN_SA_LSR_PE, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i8, i8* @TTY_PARITY, align 1
  store i8 %67, i8* %8, align 1
  br label %78

68:                                               ; preds = %59
  %69 = load i8, i8* %7, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @BELKIN_SA_LSR_FE, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i8, i8* @TTY_FRAME, align 1
  store i8 %76, i8* %8, align 1
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %81 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %80, i32 0, i32 1
  %82 = load i8, i8* %8, align 1
  %83 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %82)
  %84 = load i8, i8* %7, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @BELKIN_SA_LSR_OE, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %92 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %91, i32 0, i32 0
  %93 = load i32, i32* @TTY_OVERRUN, align 4
  %94 = call i32 @tty_insert_flip_char(i32* %92, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %90, %79
  br label %96

96:                                               ; preds = %95, %43
  %97 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %98 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %97, i32 0, i32 0
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %8, align 1
  %101 = load %struct.urb*, %struct.urb** %2, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @tty_insert_flip_string_fixed_flag(i32* %98, i8* %99, i8 signext %100, i32 %103)
  %105 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %106 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %105, i32 0, i32 0
  %107 = call i32 @tty_flip_buffer_push(i32* %106)
  br label %108

108:                                              ; preds = %96, %42
  ret void
}

declare dso_local %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(i32*, i8*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
