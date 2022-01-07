; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_tx.c_v_enqueue_ret_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_tx.c_v_enqueue_ret_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { i32, i32 }
%struct.tx_item = type { i32, %struct.v_unlink*, i32 }
%struct.v_unlink = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@TX_UNLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_enqueue_ret_unlink(%struct.vudc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vudc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tx_item*, align 8
  %8 = alloca %struct.v_unlink*, align 8
  store %struct.vudc* %0, %struct.vudc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i8* @kzalloc(i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.tx_item*
  store %struct.tx_item* %11, %struct.tx_item** %7, align 8
  %12 = load %struct.tx_item*, %struct.tx_item** %7, align 8
  %13 = icmp ne %struct.tx_item* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.vudc*, %struct.vudc** %4, align 8
  %16 = getelementptr inbounds %struct.vudc, %struct.vudc* %15, i32 0, i32 1
  %17 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %18 = call i32 @usbip_event_add(i32* %16, i32 %17)
  br label %50

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kzalloc(i32 16, i32 %20)
  %22 = bitcast i8* %21 to %struct.v_unlink*
  store %struct.v_unlink* %22, %struct.v_unlink** %8, align 8
  %23 = load %struct.v_unlink*, %struct.v_unlink** %8, align 8
  %24 = icmp ne %struct.v_unlink* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.tx_item*, %struct.tx_item** %7, align 8
  %27 = call i32 @kfree(%struct.tx_item* %26)
  %28 = load %struct.vudc*, %struct.vudc** %4, align 8
  %29 = getelementptr inbounds %struct.vudc, %struct.vudc* %28, i32 0, i32 1
  %30 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %31 = call i32 @usbip_event_add(i32* %29, i32 %30)
  br label %50

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.v_unlink*, %struct.v_unlink** %8, align 8
  %35 = getelementptr inbounds %struct.v_unlink, %struct.v_unlink* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.v_unlink*, %struct.v_unlink** %8, align 8
  %38 = getelementptr inbounds %struct.v_unlink, %struct.v_unlink* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @TX_UNLINK, align 4
  %40 = load %struct.tx_item*, %struct.tx_item** %7, align 8
  %41 = getelementptr inbounds %struct.tx_item, %struct.tx_item* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.v_unlink*, %struct.v_unlink** %8, align 8
  %43 = load %struct.tx_item*, %struct.tx_item** %7, align 8
  %44 = getelementptr inbounds %struct.tx_item, %struct.tx_item* %43, i32 0, i32 1
  store %struct.v_unlink* %42, %struct.v_unlink** %44, align 8
  %45 = load %struct.tx_item*, %struct.tx_item** %7, align 8
  %46 = getelementptr inbounds %struct.tx_item, %struct.tx_item* %45, i32 0, i32 0
  %47 = load %struct.vudc*, %struct.vudc** %4, align 8
  %48 = getelementptr inbounds %struct.vudc, %struct.vudc* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %32, %25, %14
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @kfree(%struct.tx_item*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
