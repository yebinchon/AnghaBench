; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_dev_on_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_dev_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i64, i32, i64 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"gadget (%s) pullup D%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtu3_dev_on_off(%struct.mtu3* %0, i32 %1) #0 {
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %6 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %11 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_SUPER, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mtu3_ss_func_set(%struct.mtu3* %16, i32 %17)
  br label %23

19:                                               ; preds = %9, %2
  %20 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mtu3_hs_softconn_set(%struct.mtu3* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %25 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %28 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @usb_speed_string(i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %34)
  ret void
}

declare dso_local i32 @mtu3_ss_func_set(%struct.mtu3*, i32) #1

declare dso_local i32 @mtu3_hs_softconn_set(%struct.mtu3*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_speed_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
