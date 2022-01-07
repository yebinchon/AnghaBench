; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ether.c_eth_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ether.c_eth_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@otg_desc = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@use_eem = common dso_local global i64 0, align 8
@fi_eem = common dso_local global i32 0, align 4
@f_eem = common dso_local global i32 0, align 4
@fi_ecm = common dso_local global i32 0, align 4
@f_ecm = common dso_local global i32 0, align 4
@fi_geth = common dso_local global i32 0, align 4
@f_geth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @eth_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_do_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %6 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @gadget_is_otg(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @otg_desc, align 4
  %14 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %15 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %17 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %18 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i64, i64* @use_eem, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* @fi_eem, align 4
  %26 = call i32 @usb_get_function(i32 %25)
  store i32 %26, i32* @f_eem, align 4
  %27 = load i32, i32* @f_eem, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @f_eem, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %92

33:                                               ; preds = %24
  %34 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %35 = load i32, i32* @f_eem, align 4
  %36 = call i32 @usb_add_function(%struct.usb_configuration* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @f_eem, align 4
  %41 = call i32 @usb_put_function(i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %92

44:                                               ; preds = %21
  %45 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %46 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @can_support_ecm(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load i32, i32* @fi_ecm, align 4
  %54 = call i32 @usb_get_function(i32 %53)
  store i32 %54, i32* @f_ecm, align 4
  %55 = load i32, i32* @f_ecm, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @f_ecm, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %92

61:                                               ; preds = %52
  %62 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %63 = load i32, i32* @f_ecm, align 4
  %64 = call i32 @usb_add_function(%struct.usb_configuration* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @f_ecm, align 4
  %69 = call i32 @usb_put_function(i32 %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %92

72:                                               ; preds = %44
  %73 = load i32, i32* @fi_geth, align 4
  %74 = call i32 @usb_get_function(i32 %73)
  store i32 %74, i32* @f_geth, align 4
  %75 = load i32, i32* @f_geth, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @f_geth, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %92

81:                                               ; preds = %72
  %82 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %83 = load i32, i32* @f_geth, align 4
  %84 = call i32 @usb_add_function(%struct.usb_configuration* %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @f_geth, align 4
  %89 = call i32 @usb_put_function(i32 %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %78, %70, %58, %42, %30
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @gadget_is_otg(i32) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i64 @can_support_ecm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
