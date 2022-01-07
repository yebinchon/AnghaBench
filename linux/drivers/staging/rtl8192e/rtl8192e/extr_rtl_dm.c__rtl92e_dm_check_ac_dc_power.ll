; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_ac_dc_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_ac_dc_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_rtl92e_dm_check_ac_dc_power.ac_dc_script = internal constant [38 x i8] c"/etc/acpi/wireless-rtl-ac-dc-power.sh\00", align 16
@DRV_NAME = common dso_local global i8* null, align 8
@_rtl92e_dm_check_ac_dc_power.envp = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PATH=/usr/bin:/bin\00", align 1
@RESET_TYPE_SILENT = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"GPIOChangeRFWorkItemCallBack(): Silent Reset!!!!!!!\0A\00", align 1
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@UMH_WAIT_PROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_check_ac_dc_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_check_ac_dc_power(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca [3 x i8*], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_rtl92e_dm_check_ac_dc_power.ac_dc_script, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** @DRV_NAME, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  store i8* null, i8** %10, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RESET_TYPE_SILENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @COMP_INIT, align 4
  %18 = load i32, i32* @COMP_POWER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @RT_TRACE(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTLLIB_LINKED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %34 = load i32, i32* @UMH_WAIT_PROC, align 4
  %35 = call i32 @call_usermodehelper(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_rtl92e_dm_check_ac_dc_power.ac_dc_script, i64 0, i64 0), i8** %33, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_rtl92e_dm_check_ac_dc_power.envp, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %31, %16
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
