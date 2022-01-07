; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @keyspan_pda_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.usb_serial*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %13, align 8
  store %struct.usb_serial_port* %14, %struct.usb_serial_port** %8, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 0
  %17 = load %struct.usb_serial*, %struct.usb_serial** %16, align 8
  store %struct.usb_serial* %17, %struct.usb_serial** %9, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  %19 = call i32 @keyspan_pda_get_modem_info(%struct.usb_serial* %18, i8* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TIOCM_RTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %11, align 1
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @TIOCM_DTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 128
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %11, align 1
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TIOCM_RTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, -5
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TIOCM_DTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, -129
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %11, align 1
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  %66 = load i8, i8* %11, align 1
  %67 = call i32 @keyspan_pda_set_modem_info(%struct.usb_serial* %65, i8 zeroext %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @keyspan_pda_get_modem_info(%struct.usb_serial*, i8*) #1

declare dso_local i32 @keyspan_pda_set_modem_info(%struct.usb_serial*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
