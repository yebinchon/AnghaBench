; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i32, i32 }

@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, i32)* @mon_buff_area_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_buff_area_free(%struct.mon_reader_bin* %0, i32 %1) #0 {
  %3 = alloca %struct.mon_reader_bin*, align 8
  %4 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PKT_ALIGN, align 4
  %7 = add i32 %5, %6
  %8 = sub i32 %7, 1
  %9 = load i32, i32* @PKT_ALIGN, align 4
  %10 = sub i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %15 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %20 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %24 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %29 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %32 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
