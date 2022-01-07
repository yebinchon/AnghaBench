; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i32, i32, i32, i32 }
%struct.mon_bin_hdr = type { i32 }

@PKT_SIZE = common dso_local global i32 0, align 4
@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*)* @mon_bin_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_bin_queued(%struct.mon_reader_bin* %0) #0 {
  %2 = alloca %struct.mon_reader_bin*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mon_bin_hdr*, align 8
  %9 = alloca i64, align 8
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %2, align 8
  %10 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %11 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %14 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %13, i32 0, i32 4
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %18 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %21 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %20, i32 0, i32 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %25 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %63, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %32, i32 %33)
  store %struct.mon_bin_hdr* %34, %struct.mon_bin_hdr** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PKT_SIZE, align 4
  %41 = add i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PKT_ALIGN, align 4
  %44 = add i32 %42, %43
  %45 = sub i32 %44, 1
  %46 = load i32, i32* @PKT_ALIGN, align 4
  %47 = sub i32 %46, 1
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %54 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %31
  %58 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %59 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %31
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %2, align 8
  %69 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %68, i32 0, i32 3
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
