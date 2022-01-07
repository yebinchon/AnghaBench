; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_queue_bulk_on_old_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_queue_bulk_on_old_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.u132_udev = type { i32 }
%struct.urb = type { %struct.u132* }
%struct.usb_device = type { i32 }
%struct.u132_endp = type { i32, i64, i32, %struct.urb** }
%struct.u132_urbq = type { %struct.urb*, i32 }

@ENDP_QUEUE_SIZE = common dso_local global i64 0, align 8
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.u132_udev*, %struct.urb*, %struct.usb_device*, %struct.u132_endp*, i32, i32, i32)* @queue_bulk_on_old_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_bulk_on_old_endpoint(%struct.u132* %0, %struct.u132_udev* %1, %struct.urb* %2, %struct.usb_device* %3, %struct.u132_endp* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132*, align 8
  %11 = alloca %struct.u132_udev*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca %struct.u132_endp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_urbq*, align 8
  store %struct.u132* %0, %struct.u132** %10, align 8
  store %struct.u132_udev* %1, %struct.u132_udev** %11, align 8
  store %struct.urb* %2, %struct.urb** %12, align 8
  store %struct.usb_device* %3, %struct.usb_device** %13, align 8
  store %struct.u132_endp* %4, %struct.u132_endp** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.u132*, %struct.u132** %10, align 8
  %20 = load %struct.urb*, %struct.urb** %12, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  store %struct.u132* %19, %struct.u132** %21, align 8
  %22 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %23 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* @ENDP_QUEUE_SIZE, align 8
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %8
  %29 = load %struct.urb*, %struct.urb** %12, align 8
  %30 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %31 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %30, i32 0, i32 3
  %32 = load %struct.urb**, %struct.urb*** %31, align 8
  %33 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %34 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %35 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = and i64 %33, %38
  %40 = getelementptr inbounds %struct.urb*, %struct.urb** %32, i64 %39
  store %struct.urb* %29, %struct.urb** %40, align 8
  br label %63

41:                                               ; preds = %8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.u132_urbq* @kmalloc(i32 16, i32 %42)
  store %struct.u132_urbq* %43, %struct.u132_urbq** %18, align 8
  %44 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %45 = icmp eq %struct.u132_urbq* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %48 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %64

53:                                               ; preds = %41
  %54 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %55 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %54, i32 0, i32 1
  %56 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %57 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.urb*, %struct.urb** %12, align 8
  %60 = load %struct.u132_urbq*, %struct.u132_urbq** %18, align 8
  %61 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %60, i32 0, i32 0
  store %struct.urb* %59, %struct.urb** %61, align 8
  br label %62

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %28
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local %struct.u132_urbq* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
