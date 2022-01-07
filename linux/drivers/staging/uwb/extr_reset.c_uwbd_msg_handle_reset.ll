; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwbd_msg_handle_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwbd_msg_handle_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_event = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32 (%struct.uwb_rc*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"resetting radio controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to reset hardware: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwbd_msg_handle_reset(%struct.uwb_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_event*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca i32, align 4
  store %struct.uwb_event* %0, %struct.uwb_event** %3, align 8
  %6 = load %struct.uwb_event*, %struct.uwb_event** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %6, i32 0, i32 0
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %4, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 0
  %15 = load i32 (%struct.uwb_rc*)*, i32 (%struct.uwb_rc*)** %14, align 8
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %17 = call i32 %15(%struct.uwb_rc* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %20
  %28 = call i32 @msleep(i32 1000)
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %30 = call i32 @uwb_rc_reset_all(%struct.uwb_rc* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @uwb_rc_reset_all(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
