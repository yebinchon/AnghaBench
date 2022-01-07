; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usba_ep = type { i64, i32, %struct.TYPE_2__, i64, %struct.usba_udc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usba_udc = type { i32 }

@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"endpoint %s: %s HALT\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Attempted to halt uninitialized ep %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Attempted to halt isochronous ep %s\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@STA = common dso_local global i32 0, align 4
@BUSY_BANKS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SET_STA = common dso_local global i32 0, align 4
@USBA_FORCE_STALL = common dso_local global i32 0, align 4
@CLR_STA = common dso_local global i32 0, align 4
@USBA_TOGGLE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, i32)* @usba_ep_set_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_set_halt(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usba_ep*, align 8
  %7 = alloca %struct.usba_udc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %10)
  store %struct.usba_ep* %11, %struct.usba_ep** %6, align 8
  %12 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %13 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %12, i32 0, i32 4
  %14 = load %struct.usba_udc*, %struct.usba_udc** %13, align 8
  store %struct.usba_udc* %14, %struct.usba_udc** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @DBG_GADGET, align 4
  %16 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %17 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i32, i8*, i32, ...) @DBG(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %23)
  %25 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %26 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @DBG_ERR, align 4
  %32 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %33 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @DBG(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %2
  %40 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %41 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* @DBG_ERR, align 4
  %46 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %47 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @DBG(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOTTY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %39
  %54 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %55 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %59 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %58, i32 0, i32 1
  %60 = call i32 @list_empty(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %67 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %72 = load i32, i32* @STA, align 4
  %73 = call i32 @usba_ep_readl(%struct.usba_ep* %71, i32 %72)
  %74 = load i32, i32* @BUSY_BANKS, align 4
  %75 = call i32 @USBA_BF(i32 %74, i64 -1)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70, %53
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %100

81:                                               ; preds = %70, %65, %62
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %86 = load i32, i32* @SET_STA, align 4
  %87 = load i32, i32* @USBA_FORCE_STALL, align 4
  %88 = call i32 @usba_ep_writel(%struct.usba_ep* %85, i32 %86, i32 %87)
  br label %96

89:                                               ; preds = %81
  %90 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %91 = load i32, i32* @CLR_STA, align 4
  %92 = load i32, i32* @USBA_FORCE_STALL, align 4
  %93 = load i32, i32* @USBA_TOGGLE_CLR, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @usba_ep_writel(%struct.usba_ep* %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %98 = load i32, i32* @STA, align 4
  %99 = call i32 @usba_ep_readl(%struct.usba_ep* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %78
  %101 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %102 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %101, i32 0, i32 0
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %44, %30
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @USBA_BF(i32, i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
