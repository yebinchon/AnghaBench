; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telem_ioss_states_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telem_ioss_states_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.telemetry_evtlog = type { i32 }

@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i32 0, align 4
@TELEM_IOSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09I0SS TELEMETRY EVENTLOG\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%-32s 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @telem_ioss_states_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telem_ioss_states_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.telemetry_evtlog, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @TELEM_IOSS, align 4
  %21 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %22 = call i32 @telemetry_read_eventlog(i32 %20, %struct.telemetry_evtlog* %16, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* @TELEM_IOSS, align 4
  %29 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %30 = call i32 @telemetry_get_evtname(i32 %28, i8** %19, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

35:                                               ; preds = %27
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %58, %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %19, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %16, i64 %53
  %55 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %56)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %42

61:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %33, %25
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @telemetry_read_eventlog(i32, %struct.telemetry_evtlog*, i32) #2

declare dso_local i32 @telemetry_get_evtname(i32, i8**, i32) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
