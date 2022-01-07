; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.f_uas = type { i32 }
%struct.guas_setup_wq = type { i32, i32, %struct.f_uas* }

@USB_G_ALT_INT_BBB = common dso_local global i32 0, align 4
@USB_G_ALT_INT_UAS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcm_delayed_set_alt = common dso_local global i32 0, align 4
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @tcm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_uas*, align 8
  %9 = alloca %struct.guas_setup_wq*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_uas* @to_f_uas(%struct.usb_function* %10)
  store %struct.f_uas* %11, %struct.f_uas** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_G_ALT_INT_BBB, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @USB_G_ALT_INT_UAS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.guas_setup_wq* @kmalloc(i32 16, i32 %20)
  store %struct.guas_setup_wq* %21, %struct.guas_setup_wq** %9, align 8
  %22 = load %struct.guas_setup_wq*, %struct.guas_setup_wq** %9, align 8
  %23 = icmp ne %struct.guas_setup_wq* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.guas_setup_wq*, %struct.guas_setup_wq** %9, align 8
  %29 = getelementptr inbounds %struct.guas_setup_wq, %struct.guas_setup_wq* %28, i32 0, i32 1
  %30 = load i32, i32* @tcm_delayed_set_alt, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.f_uas*, %struct.f_uas** %8, align 8
  %33 = load %struct.guas_setup_wq*, %struct.guas_setup_wq** %9, align 8
  %34 = getelementptr inbounds %struct.guas_setup_wq, %struct.guas_setup_wq* %33, i32 0, i32 2
  store %struct.f_uas* %32, %struct.f_uas** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.guas_setup_wq*, %struct.guas_setup_wq** %9, align 8
  %37 = getelementptr inbounds %struct.guas_setup_wq, %struct.guas_setup_wq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.guas_setup_wq*, %struct.guas_setup_wq** %9, align 8
  %39 = getelementptr inbounds %struct.guas_setup_wq, %struct.guas_setup_wq* %38, i32 0, i32 1
  %40 = call i32 @schedule_work(i32* %39)
  %41 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %15
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %27, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.f_uas* @to_f_uas(%struct.usb_function*) #1

declare dso_local %struct.guas_setup_wq* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
