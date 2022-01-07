; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_check_core_endianness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_check_core_endianness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64 }

@GSNPSID = common dso_local global i64 0, align 8
@GSNPSID_ID_MASK = common dso_local global i32 0, align 4
@DWC2_OTG_ID = common dso_local global i32 0, align 4
@DWC2_FS_IOT_ID = common dso_local global i32 0, align 4
@DWC2_HS_IOT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_check_core_endianness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_check_core_endianness(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GSNPSID, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ioread32(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GSNPSID_ID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @DWC2_OTG_ID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GSNPSID_ID_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @DWC2_FS_IOT_ID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GSNPSID_ID_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @DWC2_HS_IOT_ID, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %1
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
