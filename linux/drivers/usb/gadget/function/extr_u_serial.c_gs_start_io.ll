; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_start_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32, %struct.list_head, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64, %struct.list_head }
%struct.TYPE_4__ = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }

@gs_read_complete = common dso_local global i32 0, align 4
@gs_write_complete = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_port*)* @gs_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_start_io(%struct.gs_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_port*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gs_port* %0, %struct.gs_port** %3, align 8
  %8 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %9 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %8, i32 0, i32 6
  store %struct.list_head* %9, %struct.list_head** %4, align 8
  %10 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %11 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.usb_ep*, %struct.usb_ep** %13, align 8
  store %struct.usb_ep* %14, %struct.usb_ep** %5, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = load i32, i32* @gs_read_complete, align 4
  %18 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 3
  %20 = call i32 @gs_alloc_requests(%struct.usb_ep* %15, %struct.list_head* %16, i32 %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %1
  %26 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %27 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.usb_ep*, %struct.usb_ep** %29, align 8
  %31 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %32 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %31, i32 0, i32 1
  %33 = load i32, i32* @gs_write_complete, align 4
  %34 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %35 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %34, i32 0, i32 0
  %36 = call i32 @gs_alloc_requests(%struct.usb_ep* %30, %struct.list_head* %32, i32 %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %25
  %40 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %41 = load %struct.list_head*, %struct.list_head** %4, align 8
  %42 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %43 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %42, i32 0, i32 3
  %44 = call i32 @gs_free_requests(%struct.usb_ep* %40, %struct.list_head* %41, i32* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %25
  %47 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %48 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %50 = call i32 @gs_start_rx(%struct.gs_port* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %55 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @tty_wakeup(i32 %57)
  br label %77

59:                                               ; preds = %46
  %60 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %61 = load %struct.list_head*, %struct.list_head** %4, align 8
  %62 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %63 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %62, i32 0, i32 3
  %64 = call i32 @gs_free_requests(%struct.usb_ep* %60, %struct.list_head* %61, i32* %63)
  %65 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %66 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.usb_ep*, %struct.usb_ep** %68, align 8
  %70 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %71 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %70, i32 0, i32 1
  %72 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %73 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %72, i32 0, i32 0
  %74 = call i32 @gs_free_requests(%struct.usb_ep* %69, %struct.list_head* %71, i32* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %53
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %39, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @gs_alloc_requests(%struct.usb_ep*, %struct.list_head*, i32, i32*) #1

declare dso_local i32 @gs_free_requests(%struct.usb_ep*, %struct.list_head*, i32*) #1

declare dso_local i32 @gs_start_rx(%struct.gs_port*) #1

declare dso_local i32 @tty_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
