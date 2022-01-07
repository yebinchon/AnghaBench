; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_empeg.c_empeg_init_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_empeg.c_empeg_init_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32, i32, i32, i32 }

@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @empeg_init_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @empeg_init_termios(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  store %struct.ktermios* %5, %struct.ktermios** %3, align 8
  %6 = load i32, i32* @IGNBRK, align 4
  %7 = load i32, i32* @BRKINT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PARMRK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ISTRIP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @INLCR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IGNCR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ICRNL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IXON, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @OPOST, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @ECHO, align 4
  %33 = load i32, i32* @ECHONL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ICANON, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ISIG, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IEXTEN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @CSIZE, align 4
  %47 = load i32, i32* @PARENB, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CBAUD, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @CS8, align 4
  %57 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %62 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %61, i32 115200, i32 115200)
  ret void
}

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
