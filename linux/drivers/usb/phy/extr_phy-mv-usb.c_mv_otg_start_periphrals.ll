; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_start_periphrals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_start_periphrals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.usb_otg* }
%struct.usb_otg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"gadget %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_otg*, i32)* @mv_otg_start_periphrals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_otg_start_periphrals(%struct.mv_otg* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_otg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_otg*, align 8
  store %struct.mv_otg* %0, %struct.mv_otg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %7 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  store %struct.usb_otg* %9, %struct.usb_otg** %5, align 8
  %10 = load %struct.usb_otg*, %struct.usb_otg** %5, align 8
  %11 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %17 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @dev_info(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.usb_otg*, %struct.usb_otg** %5, align 8
  %29 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_gadget_vbus_connect(i32 %30)
  br label %37

32:                                               ; preds = %15
  %33 = load %struct.usb_otg*, %struct.usb_otg** %5, align 8
  %34 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_gadget_vbus_disconnect(i32 %35)
  br label %37

37:                                               ; preds = %14, %32, %27
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @usb_gadget_vbus_connect(i32) #1

declare dso_local i32 @usb_gadget_vbus_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
