; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }

@f_obex1_cfg2 = common dso_local global i32 0, align 4
@f_obex2_cfg2 = common dso_local global i32 0, align 4
@f_obex1_cfg1 = common dso_local global i32 0, align 4
@f_obex2_cfg1 = common dso_local global i32 0, align 4
@f_phonet_cfg1 = common dso_local global i32 0, align 4
@f_phonet_cfg2 = common dso_local global i32 0, align 4
@f_acm_cfg1 = common dso_local global i32 0, align 4
@f_acm_cfg2 = common dso_local global i32 0, align 4
@f_ecm_cfg1 = common dso_local global i32 0, align 4
@f_ecm_cfg2 = common dso_local global i32 0, align 4
@f_msg_cfg1 = common dso_local global i32 0, align 4
@f_msg_cfg2 = common dso_local global i32 0, align 4
@fi_msg = common dso_local global i32 0, align 4
@fi_ecm = common dso_local global i32 0, align 4
@fi_obex2 = common dso_local global i32 0, align 4
@fi_obex1 = common dso_local global i32 0, align 4
@fi_phonet = common dso_local global i32 0, align 4
@fi_acm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @nokia_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_unbind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %3 = load i32, i32* @f_obex1_cfg2, align 4
  %4 = call i32 @IS_ERR_OR_NULL(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @f_obex1_cfg2, align 4
  %8 = call i32 @usb_put_function(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @f_obex2_cfg2, align 4
  %11 = call i32 @IS_ERR_OR_NULL(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @f_obex2_cfg2, align 4
  %15 = call i32 @usb_put_function(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @f_obex1_cfg1, align 4
  %18 = call i32 @IS_ERR_OR_NULL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @f_obex1_cfg1, align 4
  %22 = call i32 @usb_put_function(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @f_obex2_cfg1, align 4
  %25 = call i32 @IS_ERR_OR_NULL(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @f_obex2_cfg1, align 4
  %29 = call i32 @usb_put_function(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @f_phonet_cfg1, align 4
  %32 = call i32 @IS_ERR_OR_NULL(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @f_phonet_cfg1, align 4
  %36 = call i32 @usb_put_function(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @f_phonet_cfg2, align 4
  %39 = call i32 @IS_ERR_OR_NULL(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @f_phonet_cfg2, align 4
  %43 = call i32 @usb_put_function(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @f_acm_cfg1, align 4
  %46 = call i32 @usb_put_function(i32 %45)
  %47 = load i32, i32* @f_acm_cfg2, align 4
  %48 = call i32 @usb_put_function(i32 %47)
  %49 = load i32, i32* @f_ecm_cfg1, align 4
  %50 = call i32 @usb_put_function(i32 %49)
  %51 = load i32, i32* @f_ecm_cfg2, align 4
  %52 = call i32 @usb_put_function(i32 %51)
  %53 = load i32, i32* @f_msg_cfg1, align 4
  %54 = call i32 @usb_put_function(i32 %53)
  %55 = load i32, i32* @f_msg_cfg2, align 4
  %56 = call i32 @usb_put_function(i32 %55)
  %57 = load i32, i32* @fi_msg, align 4
  %58 = call i32 @usb_put_function_instance(i32 %57)
  %59 = load i32, i32* @fi_ecm, align 4
  %60 = call i32 @usb_put_function_instance(i32 %59)
  %61 = load i32, i32* @fi_obex2, align 4
  %62 = call i32 @IS_ERR(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %44
  %65 = load i32, i32* @fi_obex2, align 4
  %66 = call i32 @usb_put_function_instance(i32 %65)
  br label %67

67:                                               ; preds = %64, %44
  %68 = load i32, i32* @fi_obex1, align 4
  %69 = call i32 @IS_ERR(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @fi_obex1, align 4
  %73 = call i32 @usb_put_function_instance(i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @fi_phonet, align 4
  %76 = call i32 @IS_ERR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @fi_phonet, align 4
  %80 = call i32 @usb_put_function_instance(i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @fi_acm, align 4
  %83 = call i32 @usb_put_function_instance(i32 %82)
  ret i32 0
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
