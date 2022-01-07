; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_prepare_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_prepare_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32 }

@KLSI_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i8*, i64)* @klsi_105_prepare_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klsi_105_prepare_write_buffer(%struct.usb_serial_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 1
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @KLSI_HDR_LEN, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 0
  %19 = call i32 @kfifo_out_locked(i32* %11, i8* %15, i64 %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @put_unaligned_le16(i32 %20, i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @KLSI_HDR_LEN, align 4
  %25 = add nsw i32 %23, %24
  ret i32 %25
}

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i64, i32*) #1

declare dso_local i32 @put_unaligned_le16(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
