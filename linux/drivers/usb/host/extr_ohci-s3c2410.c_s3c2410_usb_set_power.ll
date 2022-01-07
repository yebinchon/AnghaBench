; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_usb_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_usb_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_hcd_info = type { i32 (i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_hcd_info*, i32, i32)* @s3c2410_usb_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_usb_set_power(%struct.s3c2410_hcd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s3c2410_hcd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c2410_hcd_info* %0, %struct.s3c2410_hcd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %4, align 8
  %8 = icmp eq %struct.s3c2410_hcd_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %4, align 8
  %12 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %4, align 8
  %18 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %16, i32* %24, align 4
  %25 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %27(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %9, %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
