; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_collate_isodesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_collate_isodesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32 }
%struct.urb = type { %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*, %struct.urb*, i32)* @mon_bin_collate_isodesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_bin_collate_isodesc(%struct.mon_reader_bin* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.mon_reader_bin*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  store %struct.usb_iso_packet_descriptor* %11, %struct.usb_iso_packet_descriptor** %7, align 8
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %18 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %23 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %26 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %33 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %36 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %21
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %42 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %41, i32 1
  store %struct.usb_iso_packet_descriptor* %42, %struct.usb_iso_packet_descriptor** %7, align 8
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
