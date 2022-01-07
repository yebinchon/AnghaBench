; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mon_reader_bin = type { i32, i32 }
%struct.timespec64 = type { i32, i32 }
%struct.mon_bin_hdr = type { i8, i64, i32, i32, i8, i8, i32, i32, i32, i32, i32 }

@PKT_SIZE = common dso_local global i32 0, align 4
@xfer_to_pipe = common dso_local global i32* null, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32)* @mon_bin_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bin_error(i8* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_reader_bin*, align 8
  %8 = alloca %struct.timespec64, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mon_bin_hdr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mon_reader_bin*
  store %struct.mon_reader_bin* %13, %struct.mon_reader_bin** %7, align 8
  %14 = call i32 @ktime_get_real_ts64(%struct.timespec64* %8)
  %15 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %16 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %20 = load i32, i32* @PKT_SIZE, align 4
  %21 = call i32 @mon_buff_area_alloc(%struct.mon_reader_bin* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %26 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %25, i32 0, i32 1
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %111

29:                                               ; preds = %3
  %30 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %30, i32 %31)
  store %struct.mon_bin_hdr* %32, %struct.mon_bin_hdr** %11, align 8
  %33 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %34 = load i32, i32* @PKT_SIZE, align 4
  %35 = call i32 @memset(%struct.mon_bin_hdr* %33, i32 0, i32 %34)
  %36 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %36, i32 0, i32 0
  store i8 69, i8* %37, align 8
  %38 = load i32*, i32** @xfer_to_pipe, align 8
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i64 @usb_endpoint_type(i32* %42)
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = call i64 @usb_urb_dir_in(%struct.urb* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* @USB_DIR_IN, align 4
  br label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %57 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @usb_endpoint_num(i32* %61)
  %63 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %64 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.urb*, %struct.urb** %5, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %82 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.urb*, %struct.urb** %5, align 8
  %84 = ptrtoint %struct.urb* %83 to i64
  %85 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %86 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %90 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NSEC_PER_USEC, align 4
  %94 = sdiv i32 %92, %93
  %95 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %96 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %99 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %101 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %100, i32 0, i32 4
  store i8 45, i8* %101, align 8
  %102 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %11, align 8
  %103 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %102, i32 0, i32 5
  store i8 69, i8* %103, align 1
  %104 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %105 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %104, i32 0, i32 1
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %109 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %108, i32 0, i32 0
  %110 = call i32 @wake_up(i32* %109)
  br label %111

111:                                              ; preds = %54, %24
  ret void
}

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mon_buff_area_alloc(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @memset(%struct.mon_bin_hdr*, i32, i32) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
