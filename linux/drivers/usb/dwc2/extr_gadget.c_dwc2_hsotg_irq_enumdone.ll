; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_irq_enumdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_irq_enumdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i64*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EnumDone (DSTS=0x%08x)\0A\00", align 1
@DSTS_ENUMSPD_MASK = common dso_local global i32 0, align 4
@DSTS_ENUMSPD_SHIFT = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@EP0_MPS_LIMIT = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"new device is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\0A\00", align 1
@DIEPCTL0 = common dso_local global i32 0, align 4
@DOEPCTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_hsotg_irq_enumdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_irq_enumdone(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = load i32, i32* @DSTS, align 4
  %9 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DSTS_ENUMSPD_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @DSTS_ENUMSPD_SHIFT, align 4
  %19 = ashr i32 %17, %18
  switch i32 %19, label %37 [
    i32 131, label %20
    i32 130, label %20
    i32 129, label %26
    i32 128, label %32
  ]

20:                                               ; preds = %1, %1
  %21 = load i32, i32* @USB_SPEED_FULL, align 4
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @EP0_MPS_LIMIT, align 4
  store i32 %25, i32* %4, align 4
  store i32 1023, i32* %5, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* @USB_SPEED_HIGH, align 4
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @EP0_MPS_LIMIT, align 4
  store i32 %31, i32* %4, align 4
  store i32 1024, i32* %5, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @USB_SPEED_LOW, align 4
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  store i32 8, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %37

37:                                               ; preds = %1, %32, %26, %20
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usb_speed_string(i32 %44)
  %46 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %37
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg* %50, i32 0, i32 %51, i32 0, i32 1)
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg* %53, i32 0, i32 %54, i32 0, i32 0)
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %91, %49
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %59 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %64 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg* %72, i32 %73, i32 %74, i32 0, i32 1)
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg* %86, i32 %87, i32 %88, i32 0, i32 0)
  br label %90

90:                                               ; preds = %85, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %56

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94, %37
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %97 = call i32 @dwc2_hsotg_enqueue_setup(%struct.dwc2_hsotg* %96)
  %98 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %99 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %102 = load i32, i32* @DIEPCTL0, align 4
  %103 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %101, i32 %102)
  %104 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %105 = load i32, i32* @DOEPCTL0, align 4
  %106 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %104, i32 %105)
  %107 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106)
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @usb_speed_string(i32) #1

declare dso_local i32 @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg*, i32, i32, i32, i32) #1

declare dso_local i32 @dwc2_hsotg_enqueue_setup(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
