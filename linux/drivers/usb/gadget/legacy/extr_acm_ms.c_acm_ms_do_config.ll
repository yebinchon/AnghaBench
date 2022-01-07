; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_acm_ms.c_acm_ms_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_acm_ms.c_acm_ms_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsg_opts = type { i32 }

@otg_desc = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@fi_msg = common dso_local global i32 0, align 4
@f_acm_inst = common dso_local global i32 0, align 4
@f_acm = common dso_local global i32 0, align 4
@f_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @acm_ms_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_ms_do_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.fsg_opts*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  %6 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %7 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gadget_is_otg(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @otg_desc, align 4
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %16 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %18 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %19 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @fi_msg, align 4
  %24 = call %struct.fsg_opts* @fsg_opts_from_func_inst(i32 %23)
  store %struct.fsg_opts* %24, %struct.fsg_opts** %4, align 8
  %25 = load i32, i32* @f_acm_inst, align 4
  %26 = call i32 @usb_get_function(i32 %25)
  store i32 %26, i32* @f_acm, align 4
  %27 = load i32, i32* @f_acm, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @f_acm, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %22
  %34 = load i32, i32* @fi_msg, align 4
  %35 = call i32 @usb_get_function(i32 %34)
  store i32 %35, i32* @f_msg, align 4
  %36 = load i32, i32* @f_msg, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @f_msg, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %64

42:                                               ; preds = %33
  %43 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %44 = load i32, i32* @f_acm, align 4
  %45 = call i32 @usb_add_function(%struct.usb_configuration* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %61

49:                                               ; preds = %42
  %50 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %51 = load i32, i32* @f_msg, align 4
  %52 = call i32 @usb_add_function(%struct.usb_configuration* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %68

57:                                               ; preds = %55
  %58 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %59 = load i32, i32* @f_acm, align 4
  %60 = call i32 @usb_remove_function(%struct.usb_configuration* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i32, i32* @f_msg, align 4
  %63 = call i32 @usb_put_function(i32 %62)
  br label %64

64:                                               ; preds = %61, %39
  %65 = load i32, i32* @f_acm, align 4
  %66 = call i32 @usb_put_function(i32 %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %56, %30
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @gadget_is_otg(i32) #1

declare dso_local %struct.fsg_opts* @fsg_opts_from_func_inst(i32) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_remove_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
