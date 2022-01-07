; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }

@MCT_U232_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@MCT_U232_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@MCT_U232_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RI = common dso_local global i32 0, align 4
@MCT_U232_MSR_CD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"msr_to_state: msr=0x%x ==> state=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32*, i8)* @mct_u232_msr_to_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mct_u232_msr_to_state(%struct.usb_serial_port* %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @MCT_U232_MSR_DSR, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @TIOCM_DSR, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @TIOCM_DSR, align 4
  %20 = xor i32 %19, -1
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @MCT_U232_MSR_CTS, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @TIOCM_CTS, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %42

36:                                               ; preds = %24
  %37 = load i32, i32* @TIOCM_CTS, align 4
  %38 = xor i32 %37, -1
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @MCT_U232_MSR_RI, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @TIOCM_RI, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @TIOCM_RI, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @MCT_U232_MSR_CD, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @TIOCM_CD, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %78

72:                                               ; preds = %60
  %73 = load i32, i32* @TIOCM_CD, align 4
  %74 = xor i32 %73, -1
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %80 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %79, i32 0, i32 0
  %81 = load i8, i8* %6, align 1
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 zeroext %81, i32 %83)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
