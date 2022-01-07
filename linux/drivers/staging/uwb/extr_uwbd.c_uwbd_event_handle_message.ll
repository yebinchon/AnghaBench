; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_handle_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.uwb_event*)*, i32 }
%struct.uwb_event = type { i64, %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@uwbd_message_handlers = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"UWBD: invalid message type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"UWBD: '%s' message failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_event*)* @uwbd_event_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwbd_event_handle_message(%struct.uwb_event* %0) #0 {
  %2 = alloca %struct.uwb_event*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  store %struct.uwb_event* %0, %struct.uwb_event** %2, align 8
  %5 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %5, i32 0, i32 1
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rc* %7, %struct.uwb_rc** %3, align 8
  %8 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %9 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwbd_message_handlers, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12, %1
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %21 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %53

27:                                               ; preds = %12
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwbd_message_handlers, align 8
  %29 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %30 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.uwb_event*)*, i32 (%struct.uwb_event*)** %33, align 8
  %35 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %36 = call i32 %34(%struct.uwb_event* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %27
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %41 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwbd_message_handlers, align 8
  %44 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %45 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %19, %39, %27
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
