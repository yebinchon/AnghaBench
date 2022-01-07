; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb862xxfb_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb862xxfb_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i32 }

@mb862xxfb_write_fifo.free = internal global i64 0, align 8
@geo = common dso_local global i32 0, align 4
@GDC_GEO_REG_INPUT_FIFO = common dso_local global i32 0, align 4
@draw = common dso_local global i32 0, align 4
@GDC_REG_FIFO_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, %struct.fb_info*)* @mb862xxfb_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb862xxfb_write_fifo(i64 %0, i64* %1, %struct.fb_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.mb862xxfb_par*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.fb_info* %2, %struct.fb_info** %6, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %10, align 8
  store %struct.mb862xxfb_par* %11, %struct.mb862xxfb_par** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %35, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64, i64* @mb862xxfb_write_fifo.free, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* @geo, align 4
  %21 = load i32, i32* @GDC_GEO_REG_INPUT_FIFO, align 4
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @outreg(i32 %20, i32 %21, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* @mb862xxfb_write_fifo.free, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* @mb862xxfb_write_fifo.free, align 8
  br label %35

31:                                               ; preds = %16
  %32 = load i32, i32* @draw, align 4
  %33 = load i32, i32* @GDC_REG_FIFO_COUNT, align 4
  %34 = call i64 @inreg(i32 %32, i32 %33)
  store i64 %34, i64* @mb862xxfb_write_fifo.free, align 8
  br label %35

35:                                               ; preds = %31, %19
  br label %12

36:                                               ; preds = %12
  ret void
}

declare dso_local i32 @outreg(i32, i32, i64) #1

declare dso_local i64 @inreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
