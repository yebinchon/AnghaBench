; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dwc3 = type { i64, i32, i32, i32, i32 }

@DWC3_DCFG = common dso_local global i32 0, align 4
@DWC3_DCFG_SPEED_MASK = common dso_local global i32 0, align 4
@DWC3_REVISION_220A = common dso_local global i64 0, align 8
@DWC3_DCFG_SUPERSPEED = common dso_local global i32 0, align 4
@DWC3_DCFG_LOWSPEED = common dso_local global i32 0, align 4
@DWC3_DCFG_FULLSPEED = common dso_local global i32 0, align 4
@DWC3_DCFG_HIGHSPEED = common dso_local global i32 0, align 4
@DWC3_DCFG_SUPERSPEED_PLUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid speed (%d)\0A\00", align 1
@DWC3_REVISION_IS_DWC31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*, i32)* @dwc3_gadget_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_set_speed(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = call %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget* %8)
  store %struct.dwc3* %9, %struct.dwc3** %5, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DWC3_DCFG, align 4
  %18 = call i32 @dwc3_readl(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @DWC3_DCFG_SPEED_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DWC3_REVISION_220A, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @DWC3_DCFG_SUPERSPEED, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %91

37:                                               ; preds = %28, %2
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %68 [
    i32 130, label %39
    i32 132, label %43
    i32 131, label %47
    i32 129, label %51
    i32 128, label %55
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @DWC3_DCFG_LOWSPEED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %90

43:                                               ; preds = %37
  %44 = load i32, i32* @DWC3_DCFG_FULLSPEED, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %90

47:                                               ; preds = %37
  %48 = load i32, i32* @DWC3_DCFG_HIGHSPEED, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %90

51:                                               ; preds = %37
  %52 = load i32, i32* @DWC3_DCFG_SUPERSPEED, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %90

55:                                               ; preds = %37
  %56 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %57 = call i32 @dwc3_is_usb31(%struct.dwc3* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @DWC3_DCFG_SUPERSPEED_PLUS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @DWC3_DCFG_SUPERSPEED, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %59
  br label %90

68:                                               ; preds = %37
  %69 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %75 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @DWC3_REVISION_IS_DWC31, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @DWC3_DCFG_SUPERSPEED_PLUS, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %89

85:                                               ; preds = %68
  %86 = load i32, i32* @DWC3_DCFG_SUPERSPEED, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %67, %51, %47, %43, %39
  br label %91

91:                                               ; preds = %90, %33
  %92 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %93 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DWC3_DCFG, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dwc3_writel(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %99 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 1
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  ret void
}

declare dso_local %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
