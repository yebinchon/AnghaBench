; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @fotg210_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_work(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %3 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %44, %10
  %14 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %22 = call i32 @scan_async(%struct.fotg210_hcd* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %30 = call i32 @scan_intr(%struct.fotg210_hcd* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %38 = call i32 @scan_isoc(%struct.fotg210_hcd* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %13

45:                                               ; preds = %39
  %46 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %49 = call i32 @turn_on_io_watchdog(%struct.fotg210_hcd* %48)
  br label %50

50:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32 @scan_async(%struct.fotg210_hcd*) #1

declare dso_local i32 @scan_intr(%struct.fotg210_hcd*) #1

declare dso_local i32 @scan_isoc(%struct.fotg210_hcd*) #1

declare dso_local i32 @turn_on_io_watchdog(%struct.fotg210_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
