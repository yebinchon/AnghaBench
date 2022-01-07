; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dev_data = type { i64, i32 }

@STATE_DEV_UNCONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@GADGETFS_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*)* @gadgetfs_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gadgetfs_disconnect(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.dev_data*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.dev_data* @get_gadget_data(%struct.usb_gadget* %5)
  store %struct.dev_data* %6, %struct.dev_data** %3, align 8
  %7 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %8 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %12 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %28

17:                                               ; preds = %1
  %18 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %19 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %20 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %22 = call i32 @INFO(%struct.dev_data* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %24 = load i32, i32* @GADGETFS_DISCONNECT, align 4
  %25 = call i32 @next_event(%struct.dev_data* %23, i32 %24)
  %26 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %27 = call i32 @ep0_readable(%struct.dev_data* %26)
  br label %28

28:                                               ; preds = %17, %16
  %29 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %30 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.dev_data* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*) #1

declare dso_local i32 @next_event(%struct.dev_data*, i32) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
