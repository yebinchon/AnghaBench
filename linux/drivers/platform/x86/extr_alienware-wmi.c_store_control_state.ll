; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_store_control_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_store_control_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"booting\0A\00", align 1
@LEGACY_BOOTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@LEGACY_SUSPEND = common dso_local global i64 0, align 8
@interface = common dso_local global i64 0, align 8
@LEGACY = common dso_local global i64 0, align 8
@LEGACY_RUNNING = common dso_local global i64 0, align 8
@WMAX_RUNNING = common dso_local global i64 0, align 8
@lighting_control_state = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"alienware-wmi: updated control state to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_control_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_control_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i64, i64* @LEGACY_BOOTING, align 8
  store i64 %14, i64* %9, align 8
  br label %31

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @LEGACY_SUSPEND, align 8
  store i64 %20, i64* %9, align 8
  br label %30

21:                                               ; preds = %15
  %22 = load i64, i64* @interface, align 8
  %23 = load i64, i64* @LEGACY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @LEGACY_RUNNING, align 8
  store i64 %26, i64* %9, align 8
  br label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @WMAX_RUNNING, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* @lighting_control_state, align 8
  %33 = load i64, i64* @lighting_control_state, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %8, align 8
  ret i64 %35
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
