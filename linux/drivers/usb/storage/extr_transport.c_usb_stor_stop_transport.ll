; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_stop_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_stop_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32 }

@US_FLIDX_URB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"-- cancelling URB\0A\00", align 1
@US_FLIDX_SG_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"-- cancelling sg request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_stop_transport(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 1
  %6 = call i64 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.us_data*, %struct.us_data** %2, align 8
  %10 = call i32 @usb_stor_dbg(%struct.us_data* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.us_data*, %struct.us_data** %2, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_unlink_urb(i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load i32, i32* @US_FLIDX_SG_ACTIVE, align 4
  %17 = load %struct.us_data*, %struct.us_data** %2, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 1
  %19 = call i64 @test_and_clear_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.us_data*, %struct.us_data** %2, align 8
  %23 = call i32 @usb_stor_dbg(%struct.us_data* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.us_data*, %struct.us_data** %2, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 0
  %26 = call i32 @usb_sg_cancel(i32* %25)
  br label %27

27:                                               ; preds = %21, %15
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i32 @usb_sg_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
