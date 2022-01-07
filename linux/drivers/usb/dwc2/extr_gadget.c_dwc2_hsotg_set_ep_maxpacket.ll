; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_set_ep_maxpacket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_set_ep_maxpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_hsotg_ep = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DXEPCTL_MPS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ep%d: bad mps of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, i32, i32, i32, i32)* @dwc2_hsotg_set_ep_maxpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_set_ep_maxpacket(%struct.dwc2_hsotg* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dwc2_hsotg_ep*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.dwc2_hsotg_ep* @index_to_ep(%struct.dwc2_hsotg* %14, i32 %15, i32 %16)
  store %struct.dwc2_hsotg_ep* %17, %struct.dwc2_hsotg_ep** %11, align 8
  %18 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  %19 = icmp ne %struct.dwc2_hsotg_ep* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %99

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @dwc2_hsotg_ep0_mps(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %92

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %54

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = icmp ugt i32 %39, 1024
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %92

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %92

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  %52 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %31
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @DIEPCTL(i32 %59)
  %61 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %58, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @DXEPCTL_MPS_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @DIEPCTL(i32 %71)
  %73 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %69, i32 %70, i32 %72)
  br label %91

74:                                               ; preds = %54
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @DOEPCTL(i32 %76)
  %78 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @DXEPCTL_MPS_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @DOEPCTL(i32 %88)
  %90 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %74, %57
  br label %99

92:                                               ; preds = %48, %41, %30
  %93 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %91, %20
  ret void
}

declare dso_local %struct.dwc2_hsotg_ep* @index_to_ep(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_hsotg_ep0_mps(i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @DIEPCTL(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @DOEPCTL(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
