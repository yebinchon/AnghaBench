; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_gpout_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_gpout_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.max3421_hcd = type { i32*, i32, i32 }

@MAX3421_GPOUT_COUNT = common dso_local global i32 0, align 4
@IOPIN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, i32, i32)* @max3421_gpout_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_gpout_set_value(%struct.usb_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.max3421_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %10)
  store %struct.max3421_hcd* %11, %struct.max3421_hcd** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX3421_GPOUT_COUNT, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %56

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %29 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %27
  store i32 %35, i32* %33, align 4
  br label %47

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %40 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %38
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %26
  %48 = load i32, i32* @IOPIN_UPDATE, align 4
  %49 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %50 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %53 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wake_up_process(i32 %54)
  br label %56

56:                                               ; preds = %47, %17
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
