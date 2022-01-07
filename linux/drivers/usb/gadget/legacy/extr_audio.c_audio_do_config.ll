; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_audio.c_audio_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_audio.c_audio_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@otg_desc = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@fi_uac2 = common dso_local global i32 0, align 4
@f_uac2 = common dso_local global i32 0, align 4
@f_uac1 = common dso_local global i32 0, align 4
@fi_uac1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @audio_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_do_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  %5 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %6 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @gadget_is_otg(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @otg_desc, align 4
  %14 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %15 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %17 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %18 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i32, i32* @fi_uac2, align 4
  %23 = call i32 @usb_get_function(i32 %22)
  store i32 %23, i32* @f_uac2, align 4
  %24 = load i32, i32* @f_uac2, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @f_uac2, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %33 = load i32, i32* @f_uac2, align 4
  %34 = call i32 @usb_add_function(%struct.usb_configuration* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @f_uac2, align 4
  %39 = call i32 @usb_put_function(i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @gadget_is_otg(i32) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
