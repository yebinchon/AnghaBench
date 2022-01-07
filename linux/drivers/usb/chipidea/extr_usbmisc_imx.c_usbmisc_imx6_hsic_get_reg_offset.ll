; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_get_reg_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_get_reg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"index is error for usbmisc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx6_hsic_get_reg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx6_hsic_get_reg_offset(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca %struct.imx_usbmisc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  %6 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  %11 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %9, %1
  %15 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  %16 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 2
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %9
  %21 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  %22 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %33

26:                                               ; preds = %20
  %27 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  %28 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %25
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
