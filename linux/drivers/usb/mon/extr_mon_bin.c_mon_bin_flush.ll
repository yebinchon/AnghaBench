; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i64, i32, i32 }
%struct.mon_bin_hdr = type { i64 }

@PKT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*, i32)* @mon_bin_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_bin_flush(%struct.mon_reader_bin* %0, i32 %1) #0 {
  %3 = alloca %struct.mon_reader_bin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mon_bin_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %9 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %12 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %21 = call i64 @MON_RING_EMPTY(%struct.mon_reader_bin* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %40

24:                                               ; preds = %19
  %25 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %26 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %27 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %25, i32 %28)
  store %struct.mon_bin_hdr* %29, %struct.mon_bin_hdr** %6, align 8
  %30 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %31 = load i64, i64* @PKT_SIZE, align 8
  %32 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @mon_buff_area_free(%struct.mon_reader_bin* %30, i64 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %15

40:                                               ; preds = %23, %15
  %41 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %42 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %41, i32 0, i32 2
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %46 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %48 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @MON_RING_EMPTY(%struct.mon_reader_bin*) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @mon_buff_area_free(%struct.mon_reader_bin*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
