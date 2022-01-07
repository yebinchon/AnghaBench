; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_f_hidg_req_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_f_hidg_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }
%struct.usb_request = type { i32 }
%struct.f_hidg = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"End Point Request ERROR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @f_hidg_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_hidg_req_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_hidg*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.f_hidg*
  store %struct.f_hidg* %10, %struct.f_hidg** %5, align 8
  %11 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %12 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %17 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ERROR(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %28 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %27, i32 0, i32 1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %32 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %34 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %38 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %37, i32 0, i32 0
  %39 = call i32 @wake_up(i32* %38)
  ret void
}

declare dso_local i32 @ERROR(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
