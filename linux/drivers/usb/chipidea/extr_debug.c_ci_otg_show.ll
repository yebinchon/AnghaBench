; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_otg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_otg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ci_hdrc* }
%struct.ci_hdrc = type { %struct.TYPE_2__, %struct.otg_fsm }
%struct.TYPE_2__ = type { i32 }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"OTG state: %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"a_bus_drop: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"a_bus_req: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"a_srp_det: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"a_vbus_vld: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"b_conn: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"adp_change: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"power_up: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"a_bus_resume: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"a_bus_suspend: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"a_conn: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"b_bus_req: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"b_bus_suspend: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"b_se0_srp: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"b_ssend_srp: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"b_sess_vld: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"b_srp_done: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"drv_vbus: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"loc_conn: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"loc_sof: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"adp_prb: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"id: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"protocol: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ci_otg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_otg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca %struct.otg_fsm*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %9, align 8
  store %struct.ci_hdrc* %10, %struct.ci_hdrc** %6, align 8
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %12 = icmp ne %struct.ci_hdrc* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %15 = call i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %138

18:                                               ; preds = %13
  %19 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %19, i32 0, i32 1
  store %struct.otg_fsm* %20, %struct.otg_fsm** %7, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_otg_state_string(i32 %25)
  %27 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %30 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %29, i32 0, i32 21
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %35 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %34, i32 0, i32 20
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %40 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %39, i32 0, i32 19
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %45 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %44, i32 0, i32 18
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %50 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %49, i32 0, i32 17
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %55 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %54, i32 0, i32 16
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %60 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %65 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %70 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %75 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %80 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %85 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %90 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %95 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %100 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %104 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %105 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %110 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %115 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %120 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %121)
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %125 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %126)
  %128 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %129 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %130 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %131)
  %133 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %134 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %135 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %18, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
