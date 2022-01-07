; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_safe_serial.c_safe_prepare_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_safe_serial.c_safe_prepare_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32 }

@safe = common dso_local global i64 0, align 8
@padded = common dso_local global i64 0, align 8
@CRC10_INITFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i8*, i64)* @safe_prepare_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_prepare_write_buffer(%struct.usb_serial_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* @safe, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 0
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 1
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %21, %23
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = call i32 @kfifo_out_locked(i32* %19, i8* %20, i64 %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* @safe, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %93

32:                                               ; preds = %3
  %33 = load i64, i64* @padded, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @memset(i8* %41, i32 48, i32 %46)
  br label %52

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %35
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 2
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 %55, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @CRC10_INITFCS, align 4
  %69 = call i32 @fcs_compute10(i8* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = ashr i32 %70, 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %71
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 255
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %82
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %52, %30
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i64, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fcs_compute10(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
