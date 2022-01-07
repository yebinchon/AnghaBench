; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_init_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32 }

@set_tmout = common dso_local global i32 0, align 4
@TA_WAIT_VRISE = common dso_local global i32 0, align 4
@a_wait_vrise_tmr = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TA_WAIT_BCON = common dso_local global i32 0, align 4
@a_wait_bcon_tmr = common dso_local global i8* null, align 8
@TA_AIDL_BDIS = common dso_local global i32 0, align 4
@a_aidl_bdis_tmr = common dso_local global i8* null, align 8
@TB_ASE0_BRST = common dso_local global i32 0, align 4
@b_ase0_brst_tmr = common dso_local global i8* null, align 8
@TB_SE0_SRP = common dso_local global i32 0, align 4
@b_se0_srp_tmr = common dso_local global i8* null, align 8
@TB_SRP_FAIL = common dso_local global i32 0, align 4
@b_srp_fail_tmr = common dso_local global i8* null, align 8
@a_wait_enum = common dso_local global i32 0, align 4
@a_wait_enum_tmr = common dso_local global i8* null, align 8
@b_srp_end = common dso_local global i32 0, align 4
@TB_SRP_WAIT = common dso_local global i32 0, align 4
@b_srp_wait_tmr = common dso_local global i8* null, align 8
@b_data_pulse_end = common dso_local global i32 0, align 4
@TB_DATA_PLS = common dso_local global i32 0, align 4
@b_data_pulse_tmr = common dso_local global i8* null, align 8
@b_vbus_pulse_end = common dso_local global i32 0, align 4
@TB_VBUS_PLS = common dso_local global i32 0, align 4
@b_vbus_pulse_tmr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_otg_init_timers(%struct.otg_fsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.otg_fsm*, align 8
  store %struct.otg_fsm* %0, %struct.otg_fsm** %3, align 8
  %4 = load i32, i32* @TA_WAIT_VRISE, align 4
  %5 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %6 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %5, i32 0, i32 5
  %7 = ptrtoint i32* %6 to i64
  %8 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %4, i64 %7)
  store i8* %8, i8** @a_wait_vrise_tmr, align 8
  %9 = load i8*, i8** @a_wait_vrise_tmr, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load i32, i32* @TA_WAIT_BCON, align 4
  %16 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %17 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %16, i32 0, i32 4
  %18 = ptrtoint i32* %17 to i64
  %19 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %15, i64 %18)
  store i8* %19, i8** @a_wait_bcon_tmr, align 8
  %20 = load i8*, i8** @a_wait_bcon_tmr, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %14
  %26 = load i32, i32* @TA_AIDL_BDIS, align 4
  %27 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %28 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %27, i32 0, i32 3
  %29 = ptrtoint i32* %28 to i64
  %30 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %26, i64 %29)
  store i8* %30, i8** @a_aidl_bdis_tmr, align 8
  %31 = load i8*, i8** @a_aidl_bdis_tmr, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %102

36:                                               ; preds = %25
  %37 = load i32, i32* @TB_ASE0_BRST, align 4
  %38 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %39 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %38, i32 0, i32 2
  %40 = ptrtoint i32* %39 to i64
  %41 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %37, i64 %40)
  store i8* %41, i8** @b_ase0_brst_tmr, align 8
  %42 = load i8*, i8** @b_ase0_brst_tmr, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %102

47:                                               ; preds = %36
  %48 = load i32, i32* @TB_SE0_SRP, align 4
  %49 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %50 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %49, i32 0, i32 1
  %51 = ptrtoint i32* %50 to i64
  %52 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %48, i64 %51)
  store i8* %52, i8** @b_se0_srp_tmr, align 8
  %53 = load i8*, i8** @b_se0_srp_tmr, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %102

58:                                               ; preds = %47
  %59 = load i32, i32* @TB_SRP_FAIL, align 4
  %60 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %61 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %60, i32 0, i32 0
  %62 = ptrtoint i32* %61 to i64
  %63 = call i8* @otg_timer_initializer(i32* @set_tmout, i32 %59, i64 %62)
  store i8* %63, i8** @b_srp_fail_tmr, align 8
  %64 = load i8*, i8** @b_srp_fail_tmr, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %102

69:                                               ; preds = %58
  %70 = ptrtoint %struct.otg_fsm** %3 to i64
  %71 = call i8* @otg_timer_initializer(i32* @a_wait_enum, i32 10, i64 %70)
  store i8* %71, i8** @a_wait_enum_tmr, align 8
  %72 = load i8*, i8** @a_wait_enum_tmr, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %102

77:                                               ; preds = %69
  %78 = load i32, i32* @TB_SRP_WAIT, align 4
  %79 = call i8* @otg_timer_initializer(i32* @b_srp_end, i32 %78, i64 0)
  store i8* %79, i8** @b_srp_wait_tmr, align 8
  %80 = load i8*, i8** @b_srp_wait_tmr, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %102

85:                                               ; preds = %77
  %86 = load i32, i32* @TB_DATA_PLS, align 4
  %87 = call i8* @otg_timer_initializer(i32* @b_data_pulse_end, i32 %86, i64 0)
  store i8* %87, i8** @b_data_pulse_tmr, align 8
  %88 = load i8*, i8** @b_data_pulse_tmr, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %102

93:                                               ; preds = %85
  %94 = load i32, i32* @TB_VBUS_PLS, align 4
  %95 = call i8* @otg_timer_initializer(i32* @b_vbus_pulse_end, i32 %94, i64 0)
  store i8* %95, i8** @b_vbus_pulse_tmr, align 8
  %96 = load i8*, i8** @b_vbus_pulse_tmr, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %98, %90, %82, %74, %66, %55, %44, %33, %22, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i8* @otg_timer_initializer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
