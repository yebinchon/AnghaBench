; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_ds2_touch_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_ds2_touch_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_w1_device = type { i64 }

@MXC_W1_CONTROL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MXC_W1_CONTROL_RDST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @mxc_w1_ds2_touch_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_w1_ds2_touch_bit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxc_w1_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mxc_w1_device*
  store %struct.mxc_w1_device* %10, %struct.mxc_w1_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MXC_W1_CONTROL_WR(i32 %11)
  %13 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %6, align 8
  %14 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXC_W1_CONTROL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb(i32 %12, i64 %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = call i64 @usecs_to_jiffies(i32 200)
  %21 = add i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = call i32 @udelay(i32 60)
  br label %23

23:                                               ; preds = %44, %2
  %24 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %6, align 8
  %25 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MXC_W1_CONTROL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readb(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MXC_W1_CONTROL_WR(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MXC_W1_CONTROL_RDST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @time_is_after_jiffies(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %23, label %48

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @MXC_W1_CONTROL_WR(i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
