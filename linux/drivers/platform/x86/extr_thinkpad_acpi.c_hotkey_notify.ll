; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ibm_struct = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unknown HKEY notification event %d\0A\00", align 1
@hkey_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"MHKP\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to retrieve HKEY event\0A\00", align 1
@hotkey_autosleep_ack = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"bay ejected\0A\00", align 1
@tp_features = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TP_HKEY_EV_RFKILL_CHANGED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unhandled HKEY event 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"please report the conditions when this event happened to %s\0A\00", align 1
@TPACPI_MAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibm_struct*, i32)* @hotkey_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotkey_notify(%struct.ibm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.ibm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibm_struct* %0, %struct.ibm_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 128
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ibm_struct*, %struct.ibm_struct** %3, align 8
  %15 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ibm_struct*, %struct.ibm_struct** %3, align 8
  %23 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @dev_name(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @acpi_bus_generate_netlink_event(i32 %21, i32 %28, i32 %29, i32 0)
  br label %113

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %112
  %33 = load i32, i32* @hkey_handle, align 4
  %34 = call i32 @acpi_evalf(i32 %33, i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %113

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %113

42:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 12
  switch i32 %44, label %78 [
    i32 1, label %45
    i32 2, label %48
    i32 3, label %51
    i32 4, label %59
    i32 5, label %62
    i32 6, label %65
    i32 7, label %68
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @hotkey_notify_hotkey(i32 %46, i32* %6, i32* %7)
  store i32 %47, i32* %8, align 4
  br label %79

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @hotkey_notify_wakeup(i32 %49, i32* %6, i32* %7)
  store i32 %50, i32* %8, align 4
  br label %79

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %57 [
    i32 129, label %53
    i32 128, label %56
  ]

53:                                               ; preds = %51
  store i32 1, i32* @hotkey_autosleep_ack, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 (...) @hotkey_wakeup_hotunplug_complete_notify_change()
  store i32 1, i32* %8, align 4
  br label %58

56:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %56, %53
  br label %79

59:                                               ; preds = %42
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @hotkey_notify_dockevent(i32 %60, i32* %6, i32* %7)
  store i32 %61, i32* %8, align 4
  br label %79

62:                                               ; preds = %42
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @hotkey_notify_usrevent(i32 %63, i32* %6, i32* %7)
  store i32 %64, i32* %8, align 4
  br label %79

65:                                               ; preds = %42
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @hotkey_notify_6xxx(i32 %66, i32* %6, i32* %7)
  store i32 %67, i32* %8, align 4
  br label %79

68:                                               ; preds = %42
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp_features, i32 0, i32 0), align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TP_HKEY_EV_RFKILL_CHANGED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (...) @tpacpi_send_radiosw_update()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %79

77:                                               ; preds = %71, %68
  br label %78

78:                                               ; preds = %42, %77
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %75, %65, %62, %59, %58, %48, %45
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pr_notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @TPACPI_MAIL, align 4
  %86 = call i32 @pr_notice(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.ibm_struct*, %struct.ibm_struct** %3, align 8
  %95 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ibm_struct*, %struct.ibm_struct** %3, align 8
  %103 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i32 @dev_name(i32* %107)
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @acpi_bus_generate_netlink_event(i32 %101, i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %93, %90, %87
  br label %32

113:                                              ; preds = %41, %36, %11
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @hotkey_notify_hotkey(i32, i32*, i32*) #1

declare dso_local i32 @hotkey_notify_wakeup(i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @hotkey_wakeup_hotunplug_complete_notify_change(...) #1

declare dso_local i32 @hotkey_notify_dockevent(i32, i32*, i32*) #1

declare dso_local i32 @hotkey_notify_usrevent(i32, i32*, i32*) #1

declare dso_local i32 @hotkey_notify_6xxx(i32, i32*, i32*) #1

declare dso_local i32 @tpacpi_send_radiosw_update(...) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
