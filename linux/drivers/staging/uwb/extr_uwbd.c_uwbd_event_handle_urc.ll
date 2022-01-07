; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_handle_urc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_handle_urc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwbd_evt_type_handler = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.uwb_event*)* }
%struct.uwb_event = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.uwb_event.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@uwbd_urc_evt_type_handlers = common dso_local global %struct.uwbd_evt_type_handler* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"UWBD: event 0x%02x/%04x/%02x, handling failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_event*)* @uwbd_event_handle_urc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwbd_event_handle_urc(%struct.uwb_event* %0) #0 {
  %2 = alloca %struct.uwb_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwbd_evt_type_handler*, align 8
  %5 = alloca i32 (%struct.uwb_event.0*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uwb_event* %0, %struct.uwb_event** %2, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %12 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %18 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le16_to_cpu(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.uwbd_evt_type_handler*, %struct.uwbd_evt_type_handler** @uwbd_urc_evt_type_handlers, align 8
  %32 = call i64 @ARRAY_SIZE(%struct.uwbd_evt_type_handler* %31)
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %68

35:                                               ; preds = %1
  %36 = load %struct.uwbd_evt_type_handler*, %struct.uwbd_evt_type_handler** @uwbd_urc_evt_type_handlers, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.uwbd_evt_type_handler, %struct.uwbd_evt_type_handler* %36, i64 %37
  store %struct.uwbd_evt_type_handler* %38, %struct.uwbd_evt_type_handler** %4, align 8
  %39 = load %struct.uwbd_evt_type_handler*, %struct.uwbd_evt_type_handler** %4, align 8
  %40 = getelementptr inbounds %struct.uwbd_evt_type_handler, %struct.uwbd_evt_type_handler* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %68

44:                                               ; preds = %35
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.uwbd_evt_type_handler*, %struct.uwbd_evt_type_handler** %4, align 8
  %47 = getelementptr inbounds %struct.uwbd_evt_type_handler, %struct.uwbd_evt_type_handler* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %68

51:                                               ; preds = %44
  %52 = load %struct.uwbd_evt_type_handler*, %struct.uwbd_evt_type_handler** %4, align 8
  %53 = getelementptr inbounds %struct.uwbd_evt_type_handler, %struct.uwbd_evt_type_handler* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32 (%struct.uwb_event*)*, i32 (%struct.uwb_event*)** %57, align 8
  %59 = bitcast i32 (%struct.uwb_event*)* %58 to i32 (%struct.uwb_event.0*)*
  store i32 (%struct.uwb_event.0*)* %59, i32 (%struct.uwb_event.0*)** %5, align 8
  %60 = load i32 (%struct.uwb_event.0*)*, i32 (%struct.uwb_event.0*)** %5, align 8
  %61 = icmp eq i32 (%struct.uwb_event.0*)* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %68

63:                                               ; preds = %51
  %64 = load i32 (%struct.uwb_event.0*)*, i32 (%struct.uwb_event.0*)** %5, align 8
  %65 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %66 = bitcast %struct.uwb_event* %65 to %struct.uwb_event.0*
  %67 = call i32 %64(%struct.uwb_event.0* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %62, %50, %43, %34
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %73 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %68
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.uwbd_evt_type_handler*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
