; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_mcu_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_mcu_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@Q_SELECT = common dso_local global i32 0, align 4
@MCU_RESP_URB_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@MT_EP_IN_CMD_RESP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mt7601u_complete_urb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_mcu_cmd_init(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = load i32, i32* @Q_SELECT, align 4
  %7 = call i32 @mt7601u_mcu_function_select(%struct.mt7601u_dev* %5, i32 %6, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @init_completion(i32* %15)
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %18 = load i32, i32* @MCU_RESP_URB_SIZE, align 4
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i64 @mt7601u_usb_alloc_buf(%struct.mt7601u_dev* %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %12
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mt7601u_usb_free_buf(%struct.mt7601u_dev* %25, i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %55

32:                                               ; preds = %12
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %34 = load i32, i32* @USB_DIR_IN, align 4
  %35 = load i32, i32* @MT_EP_IN_CMD_RESP, align 4
  %36 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load i32, i32* @mt7601u_complete_urb, align 4
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @mt7601u_usb_submit_buf(%struct.mt7601u_dev* %33, i32 %34, i32 %35, i32* %38, i32 %39, i32 %40, i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mt7601u_usb_free_buf(%struct.mt7601u_dev* %48, i32* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %47, %24, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @mt7601u_mcu_function_select(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @mt7601u_usb_alloc_buf(%struct.mt7601u_dev*, i32, i32*) #1

declare dso_local i32 @mt7601u_usb_free_buf(%struct.mt7601u_dev*, i32*) #1

declare dso_local i32 @mt7601u_usb_submit_buf(%struct.mt7601u_dev*, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
