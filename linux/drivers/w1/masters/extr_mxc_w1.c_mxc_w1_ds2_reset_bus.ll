; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_ds2_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_mxc_w1.c_mxc_w1_ds2_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_w1_device = type { i64 }

@MXC_W1_CONTROL_RPP = common dso_local global i32 0, align 4
@MXC_W1_CONTROL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MXC_W1_CONTROL_PST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mxc_w1_ds2_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_w1_ds2_reset_bus(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mxc_w1_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mxc_w1_device*
  store %struct.mxc_w1_device* %8, %struct.mxc_w1_device** %4, align 8
  %9 = load i32, i32* @MXC_W1_CONTROL_RPP, align 4
  %10 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %11 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MXC_W1_CONTROL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 %9, i64 %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @usecs_to_jiffies(i32 1500)
  %18 = add i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = call i32 @udelay(i32 1023)
  br label %20

20:                                               ; preds = %39, %1
  %21 = load %struct.mxc_w1_device*, %struct.mxc_w1_device** %4, align 8
  %22 = getelementptr inbounds %struct.mxc_w1_device, %struct.mxc_w1_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MXC_W1_CONTROL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readb(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MXC_W1_CONTROL_RPP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MXC_W1_CONTROL_PST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @time_is_after_jiffies(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %20, label %43

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @writeb(i32, i64) #1

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
