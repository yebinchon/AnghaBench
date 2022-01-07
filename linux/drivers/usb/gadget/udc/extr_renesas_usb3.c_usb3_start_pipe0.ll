; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_start_pipe0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_start_pipe0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i64 }
%struct.renesas_usb3_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.renesas_usb3 = type { i32 }

@P0_MOD_DIR = common dso_local global i32 0, align 4
@USB3_P0_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_start_pipe0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_start_pipe0(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  %5 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %4, align 8
  %6 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %7 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %6)
  store %struct.renesas_usb3* %7, %struct.renesas_usb3** %5, align 8
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %9 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %15 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %22 = load i32, i32* @P0_MOD_DIR, align 4
  %23 = load i32, i32* @USB3_P0_MOD, align 4
  %24 = call i32 @usb3_set_bit(%struct.renesas_usb3* %21, i32 %22, i32 %23)
  %25 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %26 = call i32 @usb3_set_p0_con_for_ctrl_read_data(%struct.renesas_usb3* %25)
  br label %41

27:                                               ; preds = %13
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %29 = load i32, i32* @P0_MOD_DIR, align 4
  %30 = load i32, i32* @USB3_P0_MOD, align 4
  %31 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %28, i32 %29, i32 %30)
  %32 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %33 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %39 = call i32 @usb3_set_p0_con_for_ctrl_write_data(%struct.renesas_usb3* %38)
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %43 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %44 = call i32 @usb3_p0_xfer(%struct.renesas_usb3_ep* %42, %struct.renesas_usb3_request* %43)
  br label %45

45:                                               ; preds = %41, %12
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_set_p0_con_for_ctrl_read_data(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_set_p0_con_for_ctrl_write_data(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_p0_xfer(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
