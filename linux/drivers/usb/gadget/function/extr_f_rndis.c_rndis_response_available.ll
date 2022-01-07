; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_response_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_response_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_rndis = type { i32, i32, %struct.TYPE_5__, %struct.usb_request* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_request = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"notify/0 --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rndis_response_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_response_available(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.f_rndis*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.f_rndis*
  store %struct.f_rndis* %9, %struct.f_rndis** %3, align 8
  %10 = load %struct.f_rndis*, %struct.f_rndis** %3, align 8
  %11 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %10, i32 0, i32 3
  %12 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  store %struct.usb_request* %12, %struct.usb_request** %4, align 8
  %13 = load %struct.f_rndis*, %struct.f_rndis** %3, align 8
  %14 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %18, align 8
  store %struct.usb_composite_dev* %19, %struct.usb_composite_dev** %5, align 8
  %20 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.f_rndis*, %struct.f_rndis** %3, align 8
  %24 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc_return(i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %50

28:                                               ; preds = %1
  %29 = call i32 @cpu_to_le32(i32 1)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = call i32 @cpu_to_le32(i32 0)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.f_rndis*, %struct.f_rndis** %3, align 8
  %36 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i32 @usb_ep_queue(i32 %37, %struct.usb_request* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = load %struct.f_rndis*, %struct.f_rndis** %3, align 8
  %45 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DBG(%struct.usb_composite_dev* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %27, %43, %28
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
