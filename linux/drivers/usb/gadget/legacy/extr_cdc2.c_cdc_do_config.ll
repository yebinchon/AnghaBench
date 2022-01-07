; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_cdc2.c_cdc_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_cdc2.c_cdc_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@otg_desc = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@fi_ecm = common dso_local global i32 0, align 4
@f_ecm = common dso_local global i32 0, align 4
@fi_serial = common dso_local global i32 0, align 4
@f_acm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @cdc_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_do_config(%struct.usb_configuration* %0) #0 {
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
  %22 = load i32, i32* @fi_ecm, align 4
  %23 = call i32 @usb_get_function(i32 %22)
  store i32 %23, i32* @f_ecm, align 4
  %24 = load i32, i32* @f_ecm, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @f_ecm, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %32 = load i32, i32* @f_ecm, align 4
  %33 = call i32 @usb_add_function(%struct.usb_configuration* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %61

37:                                               ; preds = %30
  %38 = load i32, i32* @fi_serial, align 4
  %39 = call i32 @usb_get_function(i32 %38)
  store i32 %39, i32* @f_acm, align 4
  %40 = load i32, i32* @f_acm, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @f_acm, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %48 = load i32, i32* @f_acm, align 4
  %49 = call i32 @usb_add_function(%struct.usb_configuration* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %66

54:                                               ; preds = %52
  %55 = load i32, i32* @f_acm, align 4
  %56 = call i32 @usb_put_function(i32 %55)
  br label %57

57:                                               ; preds = %54, %43
  %58 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %59 = load i32, i32* @f_ecm, align 4
  %60 = call i32 @usb_remove_function(%struct.usb_configuration* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %36
  %62 = load i32, i32* @f_ecm, align 4
  %63 = call i32 @usb_put_function(i32 %62)
  br label %64

64:                                               ; preds = %61, %27
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @gadget_is_otg(i32) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_remove_function(%struct.usb_configuration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
