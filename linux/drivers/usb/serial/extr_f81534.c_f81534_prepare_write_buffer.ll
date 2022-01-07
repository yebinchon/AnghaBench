; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_prepare_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_prepare_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32 }
%struct.f81534_port_private = type { i32 }

@F81534_NUM_PORT = common dso_local global i32 0, align 4
@F81534_RECEIVE_BLOCK_SIZE = common dso_local global i32 0, align 4
@F81534_TOKEN_WRITE = common dso_local global i32 0, align 4
@F81534_MAX_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32*)* @f81534_prepare_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81534_prepare_write_buffer(%struct.usb_serial_port* %0, i32* %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.f81534_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = call %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.f81534_port_private* %10, %struct.f81534_port_private** %5, align 8
  %11 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %12 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @F81534_NUM_PORT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* @F81534_TOKEN_WRITE, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %18
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %53 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 1
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* @F81534_MAX_TX_SIZE, align 4
  %62 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %63 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %62, i32 0, i32 0
  %64 = call i32 @kfifo_out_locked(i32* %53, i32* %60, i32 %61, i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @F81534_RECEIVE_BLOCK_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32 %65, i32* %72, align 4
  ret void
}

declare dso_local %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @kfifo_out_locked(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
