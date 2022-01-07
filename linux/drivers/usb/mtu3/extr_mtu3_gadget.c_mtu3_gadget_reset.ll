; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"gadget RESET\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtu3_gadget_reset(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %3 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %4 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %8 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %15 = call i32 @mtu3_gadget_disconnect(%struct.mtu3* %14)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %18 = call i32 @mtu3_state_reset(%struct.mtu3* %17)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mtu3_gadget_disconnect(%struct.mtu3*) #1

declare dso_local i32 @mtu3_state_reset(%struct.mtu3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
