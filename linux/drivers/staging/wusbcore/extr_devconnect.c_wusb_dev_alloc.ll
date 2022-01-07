; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusb_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusb_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_dev = type { i32, %struct.wusbhc* }
%struct.wusbhc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wusbhc_devconnect_acked_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wusb_dev* (%struct.wusbhc*)* @wusb_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wusb_dev* @wusb_dev_alloc(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusb_dev*, align 8
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.wusb_dev* @kzalloc(i32 16, i32 %5)
  store %struct.wusb_dev* %6, %struct.wusb_dev** %4, align 8
  %7 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %8 = icmp eq %struct.wusb_dev* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %12 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %13 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %12, i32 0, i32 1
  store %struct.wusbhc* %11, %struct.wusbhc** %13, align 8
  %14 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %14, i32 0, i32 0
  %16 = load i32, i32* @wusbhc_devconnect_acked_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  store %struct.wusb_dev* %18, %struct.wusb_dev** %2, align 8
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %21 = call i32 @wusb_dev_free(%struct.wusb_dev* %20)
  store %struct.wusb_dev* null, %struct.wusb_dev** %2, align 8
  br label %22

22:                                               ; preds = %19, %10
  %23 = load %struct.wusb_dev*, %struct.wusb_dev** %2, align 8
  ret %struct.wusb_dev* %23
}

declare dso_local %struct.wusb_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @wusb_dev_free(%struct.wusb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
