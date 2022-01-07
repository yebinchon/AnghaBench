; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_msr_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_msr_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.async_icount, i32 }
%struct.async_icount = type { i64, i64, i64, i64 }

@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i64, %struct.async_icount*)* @usb_serial_generic_msr_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_serial_generic_msr_changed(%struct.tty_struct* %0, i64 %1, %struct.async_icount* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.async_icount*, align 8
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.async_icount, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.async_icount* %2, %struct.async_icount** %7, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %13, align 8
  store %struct.usb_serial_port* %14, %struct.usb_serial_port** %8, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 2
  %17 = call i32 @tty_port_initialized(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 0
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 1
  %27 = bitcast %struct.async_icount* %9 to i8*
  %28 = bitcast %struct.async_icount* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 32, i1 false)
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @TIOCM_RNG, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %41 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %82, label %44

44:                                               ; preds = %37, %20
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @TIOCM_DSR, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %9, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %53 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %82, label %56

56:                                               ; preds = %49, %44
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @TIOCM_CD, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %9, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %65 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61, %56
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @TIOCM_CTS, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %9, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %77 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br label %80

80:                                               ; preds = %73, %68
  %81 = phi i1 [ false, %68 ], [ %79, %73 ]
  br label %82

82:                                               ; preds = %80, %61, %49, %37
  %83 = phi i1 [ true, %61 ], [ true, %49 ], [ true, %37 ], [ %81, %80 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %86 = bitcast %struct.async_icount* %85 to i8*
  %87 = bitcast %struct.async_icount* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %19
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @tty_port_initialized(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
