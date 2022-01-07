; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_handle_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CMD_GET_DEV_STAT = common dso_local global i32 0, align 4
@DAT_GET_DEV_STAT = common dso_local global i32 0, align 4
@DEV_RST = common dso_local global i32 0, align 4
@DEV_CON_CH = common dso_local global i32 0, align 4
@DEV_CON = common dso_local global i32 0, align 4
@DEV_SUS_CH = common dso_local global i32 0, align 4
@DEV_SUS = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_handle_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_handle_dev(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %4 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %5 = load i32, i32* @CMD_GET_DEV_STAT, align 4
  %6 = call i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc* %4, i32 %5)
  %7 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %8 = load i32, i32* @DAT_GET_DEV_STAT, align 4
  %9 = call i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DEV_RST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %16 = call i32 @uda_usb_reset(%struct.lpc32xx_udc* %15)
  br label %97

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @DEV_CON_CH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DEV_CON, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @uda_power_event(%struct.lpc32xx_udc* %23, i32 %26)
  br label %96

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @DEV_SUS_CH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DEV_SUS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %45 = call i32 @stop_activity(%struct.lpc32xx_udc* %44)
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %60 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %62 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %61, i32 0, i32 2
  %63 = call i32 @schedule_work(i32* %62)
  %64 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %65 = call i32 @uda_resm_susp_event(%struct.lpc32xx_udc* %64, i32 1)
  br label %66

66:                                               ; preds = %58, %53, %46
  br label %67

67:                                               ; preds = %66, %43
  br label %94

68:                                               ; preds = %33
  %69 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %77 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %87 = call i32 @uda_resm_susp_event(%struct.lpc32xx_udc* %86, i32 0)
  %88 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %89 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %91 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %90, i32 0, i32 2
  %92 = call i32 @schedule_work(i32* %91)
  br label %93

93:                                               ; preds = %85, %80, %75, %68
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %28
  br label %96

96:                                               ; preds = %95, %22
  br label %97

97:                                               ; preds = %96, %14
  ret void
}

declare dso_local i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @uda_usb_reset(%struct.lpc32xx_udc*) #1

declare dso_local i32 @uda_power_event(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @stop_activity(%struct.lpc32xx_udc*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @uda_resm_susp_event(%struct.lpc32xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
