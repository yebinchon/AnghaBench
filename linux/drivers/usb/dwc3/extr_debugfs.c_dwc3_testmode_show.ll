; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_testmode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_testmode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }

@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_TSTCTRL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no test\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"test_j\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"test_k\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"test_se0_nak\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"test_packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"test_force_enable\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"UNKNOWN %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dwc3_testmode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_testmode_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  store %struct.dwc3* %10, %struct.dwc3** %5, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DWC3_DCTL, align 4
  %19 = call i32 @dwc3_readl(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DWC3_DCTL_TSTCTRL_MASK, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %48 [
    i32 0, label %30
    i32 131, label %33
    i32 130, label %36
    i32 128, label %39
    i32 129, label %42
    i32 132, label %45
  ]

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %52

33:                                               ; preds = %2
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %52

39:                                               ; preds = %2
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %52

45:                                               ; preds = %2
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %52

48:                                               ; preds = %2
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %45, %42, %39, %36, %33, %30
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
