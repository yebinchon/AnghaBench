; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { %struct.TYPE_5__, %struct.s3c2410_ep*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.s3c2410_ep = type { %struct.TYPE_6__, i32, i64, %struct.s3c2410_udc* }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@EP0_IDLE = common dso_local global i32 0, align 4
@S3C2410_ENDPOINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_udc*)* @s3c2410_udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_udc_reinit(%struct.s3c2410_udc* %0) #0 {
  %2 = alloca %struct.s3c2410_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.s3c2410_ep*, align 8
  store %struct.s3c2410_udc* %0, %struct.s3c2410_udc** %2, align 8
  %5 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %6 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %10 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* @EP0_IDLE, align 4
  %16 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %17 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %57, %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @S3C2410_ENDPOINTS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %24 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %23, i32 0, i32 1
  %25 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %25, i64 %26
  store %struct.s3c2410_ep* %27, %struct.s3c2410_ep** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %32 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %35 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %33, i32* %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %40 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %41 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %40, i32 0, i32 3
  store %struct.s3c2410_udc* %39, %struct.s3c2410_udc** %41, align 8
  %42 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %43 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %48 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %47, i32 0, i32 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %51 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %50, i32 0, i32 0
  %52 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %53 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %51, i32 %55)
  br label %57

57:                                               ; preds = %38
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %18

60:                                               ; preds = %18
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
