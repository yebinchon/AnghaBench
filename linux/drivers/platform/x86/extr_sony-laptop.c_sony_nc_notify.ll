; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"sony_nc_notify, event: 0x%.2x\0A\00", align 1
@handles = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Event 0x%x outside of capabilities list\0A\00", align 1
@HOTKEY = common dso_local global i32 0, align 4
@KILLSWITCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"GFX switch event received (reason: %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"switch change\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"output switch\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFX_SWITCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Unknown event 0x%x for handle 0x%x\0A\00", align 1
@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"SN05\00", align 1
@sony_nc_acpi_device = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @sony_nc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 144
  br i1 %16, label %17, label %95

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 144
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @handles, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %110

29:                                               ; preds = %17
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @handles, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %86 [
    i32 256, label %38
    i32 295, label %38
    i32 292, label %50
    i32 309, label %50
    i32 296, label %61
    i32 326, label %61
    i32 347, label %83
  ]

38:                                               ; preds = %29, %29
  %39 = load i32, i32* @HOTKEY, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @sony_nc_hotkeys_decode(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @sony_laptop_report_input_event(i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %38
  br label %90

50:                                               ; preds = %29, %29
  %51 = load i32, i32* @KILLSWITCH, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sony_call_snc_handle(i32 %52, i32 256, i32* %8)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 (...) @sony_nc_rfkill_update()
  br label %60

60:                                               ; preds = %58, %50
  br label %90

61:                                               ; preds = %29, %29
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @sony_call_snc_handle(i32 %62, i32 0, i32* %8)
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %78

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 3
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %70 ], [ %75, %71 ]
  br label %78

78:                                               ; preds = %76, %66
  %79 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %66 ], [ %77, %76 ]
  %80 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @GFX_SWITCH, align 4
  store i32 %81, i32* %6, align 4
  %82 = call i32 (...) @__sony_nc_gfx_switch_status_get()
  store i32 %82, i32* %5, align 4
  br label %90

83:                                               ; preds = %29
  %84 = load i32, i32* @GFX_SWITCH, align 4
  store i32 %84, i32* %6, align 4
  %85 = call i32 (...) @__sony_nc_gfx_switch_status_get()
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %29
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83, %78, %60, %49
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 1, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @sony_nc_acpi_handle, align 4
  %94 = call i32 @sony_nc_int_call(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %9, i32* %8)
  br label %99

95:                                               ; preds = %2
  %96 = load i32, i32* @HOTKEY, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @sony_laptop_report_input_event(i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sony_nc_acpi_device, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sony_nc_acpi_device, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @dev_name(i32* %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @acpi_bus_generate_netlink_event(i32 %103, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %99, %26
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sony_nc_hotkeys_decode(i32, i32) #1

declare dso_local i32 @sony_laptop_report_input_event(i32) #1

declare dso_local i32 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @sony_nc_rfkill_update(...) #1

declare dso_local i32 @__sony_nc_gfx_switch_status_get(...) #1

declare dso_local i32 @sony_nc_int_call(i32, i8*, i32*, i32*) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
