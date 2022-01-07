; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipen_bfrdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipen_bfrdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }
%struct.renesas_usb3_ep = type { i64 }
%struct.renesas_usb3_request = type { i32 }

@USB3_PN_WRITE = common dso_local global i32 0, align 4
@PN_INT_BFRDY = common dso_local global i32 0, align 4
@USB3_PN_INT_ENA = common dso_local global i32 0, align 4
@USB3_PN_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, i32)* @usb3_irq_epc_pipen_bfrdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_pipen_bfrdy(%struct.renesas_usb3* %0, i32 %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3_ep*, align 8
  %6 = alloca %struct.renesas_usb3_request*, align 8
  %7 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %8, i32 %9)
  store %struct.renesas_usb3_ep* %10, %struct.renesas_usb3_ep** %5, align 8
  %11 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %12 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %11)
  store %struct.renesas_usb3_request* %12, %struct.renesas_usb3_request** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %14 = icmp ne %struct.renesas_usb3_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %18 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @usb3_pn_change(%struct.renesas_usb3* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %27 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %32 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %33 = load i32, i32* @USB3_PN_WRITE, align 4
  %34 = call i32 @usb3_write_pipe(%struct.renesas_usb3_ep* %31, %struct.renesas_usb3_request* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %38 = load i32, i32* @PN_INT_BFRDY, align 4
  %39 = load i32, i32* @USB3_PN_INT_ENA, align 4
  %40 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %50

42:                                               ; preds = %25
  %43 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %44 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %45 = load i32, i32* @USB3_PN_READ, align 4
  %46 = call i32 @usb3_read_pipe(%struct.renesas_usb3_ep* %43, %struct.renesas_usb3_request* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %53 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %59 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %60 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %6, align 8
  %61 = call i32 @usb3_request_done_pipen(%struct.renesas_usb3* %58, %struct.renesas_usb3_ep* %59, %struct.renesas_usb3_request* %60, i32 0)
  br label %62

62:                                               ; preds = %15, %57, %51
  ret void
}

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write_pipe(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_read_pipe(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb3_request_done_pipen(%struct.renesas_usb3*, %struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
