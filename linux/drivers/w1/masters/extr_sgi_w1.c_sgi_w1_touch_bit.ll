; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_touch_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_touch_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgi_w1_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @sgi_w1_touch_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sgi_w1_touch_bit(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sgi_w1_device*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.sgi_w1_device*
  store %struct.sgi_w1_device* %8, %struct.sgi_w1_device** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = call i32 @MCR_PACK(i32 6, i32 13)
  %13 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %5, align 8
  %14 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @writel(i32 %12, i32 %15)
  br label %23

17:                                               ; preds = %2
  %18 = call i32 @MCR_PACK(i32 80, i32 30)
  %19 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %5, align 8
  %20 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %5, align 8
  %25 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @sgi_w1_wait(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @udelay(i32 100)
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i64, i64* %6, align 8
  ret i64 %33
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MCR_PACK(i32, i32) #1

declare dso_local i64 @sgi_w1_wait(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
