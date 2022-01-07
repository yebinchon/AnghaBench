; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"malformed packet received: %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unknown packet received: %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @opticon_process_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opticon_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  store %struct.usb_serial_port* %9, %struct.usb_serial_port** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %14, i8** %5, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 2
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = trunc i32 %29 to i8
  %31 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  br label %78

32:                                               ; preds = %1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @opticon_process_data_packet(%struct.usb_serial_port* %45, i8* %46, i64 %47)
  br label %78

49:                                               ; preds = %38, %32
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @opticon_process_status_packet(%struct.usb_serial_port* %62, i8* %63, i64 %64)
  br label %77

66:                                               ; preds = %55, %49
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %68 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %67, i32 0, i32 0
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %71, i32 %75)
  br label %77

77:                                               ; preds = %66, %61
  br label %78

78:                                               ; preds = %24, %77, %44
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @opticon_process_data_packet(%struct.usb_serial_port*, i8*, i64) #1

declare dso_local i32 @opticon_process_status_packet(%struct.usb_serial_port*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
