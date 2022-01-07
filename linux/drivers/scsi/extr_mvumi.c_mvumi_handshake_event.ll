; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_handshake_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_handshake_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mvumi_hba*)* }

@jiffies = common dso_local global i64 0, align 8
@FW_STATE_STARTED = common dso_local global i64 0, align 8
@FW_MAX_DELAY = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"no handshake response at state 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"isr : global=0x%x,status=0x%x.\0A\00", align 1
@DRBL_HANDSHAKE_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hba*)* @mvumi_handshake_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mvumi_handshake_event(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %8 = call i32 @mvumi_handshake(%struct.mvumi_hba* %7)
  br label %9

9:                                                ; preds = %54, %1
  %10 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mvumi_hba*)*, i32 (%struct.mvumi_hba*)** %13, align 8
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %16 = call i32 %14(%struct.mvumi_hba* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FW_STATE_STARTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i8 0, i8* %2, align 1
  br label %61

23:                                               ; preds = %9
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FW_MAX_DELAY, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = mul i64 %26, %27
  %29 = add i64 %25, %28
  %30 = call i64 @time_after(i64 %24, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %38 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %42 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %48, i32 %49)
  store i8 -1, i8* %2, align 1
  br label %61

51:                                               ; preds = %23
  %52 = call i32 (...) @rmb()
  %53 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DRBL_HANDSHAKE_ISR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %9, label %60

60:                                               ; preds = %54
  store i8 0, i8* %2, align 1
  br label %61

61:                                               ; preds = %60, %32, %22
  %62 = load i8, i8* %2, align 1
  ret i8 %62
}

declare dso_local i32 @mvumi_handshake(%struct.mvumi_hba*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
