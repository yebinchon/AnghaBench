; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_ep = type { i32, i32 }
%struct.s3c2410_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_ep*, %struct.s3c2410_request*, i32)* @s3c2410_udc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_udc_done(%struct.s3c2410_ep* %0, %struct.s3c2410_request* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c2410_ep*, align 8
  %5 = alloca %struct.s3c2410_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s3c2410_ep* %0, %struct.s3c2410_ep** %4, align 8
  store %struct.s3c2410_request* %1, %struct.s3c2410_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %9 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.s3c2410_request*, %struct.s3c2410_request** %5, align 8
  %12 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.s3c2410_request*, %struct.s3c2410_request** %5, align 8
  %15 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.s3c2410_request*, %struct.s3c2410_request** %5, align 8
  %27 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.s3c2410_request*, %struct.s3c2410_request** %5, align 8
  %31 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %36 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %38 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %37, i32 0, i32 1
  %39 = load %struct.s3c2410_request*, %struct.s3c2410_request** %5, align 8
  %40 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %39, i32 0, i32 0
  %41 = call i32 @usb_gadget_giveback_request(i32* %38, %struct.TYPE_2__* %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %44 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
