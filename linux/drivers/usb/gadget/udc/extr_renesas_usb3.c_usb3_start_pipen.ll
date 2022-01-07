; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_start_pipen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_start_pipen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i32, i64, i64 }
%struct.renesas_usb3_request = type { i32 }
%struct.renesas_usb3 = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@USB3_PN_WRITE = common dso_local global i32 0, align 4
@PN_INT_LSTTR = common dso_local global i32 0, align 4
@PN_INT_BFRDY = common dso_local global i32 0, align 4
@USB3_PN_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_start_pipen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_start_pipen(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca %struct.renesas_usb3_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %4, align 8
  %10 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %11 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %10)
  store %struct.renesas_usb3* %11, %struct.renesas_usb3** %5, align 8
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %13 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %12)
  store %struct.renesas_usb3_request* %13, %struct.renesas_usb3_request** %6, align 8
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %26 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %2
  br label %87

30:                                               ; preds = %24
  %31 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %32 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %33 = icmp ne %struct.renesas_usb3_request* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %87

35:                                               ; preds = %30
  %36 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %37 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %38 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @usb3_pn_change(%struct.renesas_usb3* %36, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %87

43:                                               ; preds = %35
  %44 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %45 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %47 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %48 = call i64 @usb3_dma_try_start(%struct.renesas_usb3_ep* %46, %struct.renesas_usb3_request* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %87

51:                                               ; preds = %43
  %52 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %53 = call i32 @usb3_pn_start(%struct.renesas_usb3* %52)
  %54 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %55 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %60 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %61 = load i32, i32* @USB3_PN_WRITE, align 4
  %62 = call i32 @usb3_write_pipe(%struct.renesas_usb3_ep* %59, %struct.renesas_usb3_request* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @PN_INT_LSTTR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %58, %51
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @PN_INT_BFRDY, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @USB3_PN_INT_ENA, align 4
  %80 = call i32 @usb3_set_bit(%struct.renesas_usb3* %77, i32 %78, i32 %79)
  %81 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %82 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %83 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @usb3_enable_pipe_irq(%struct.renesas_usb3* %81, i32 %84)
  br label %86

86:                                               ; preds = %76, %73
  br label %87

87:                                               ; preds = %86, %50, %42, %34, %29
  %88 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %89 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i64 @usb3_dma_try_start(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_pn_start(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_write_pipe(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_enable_pipe_irq(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
