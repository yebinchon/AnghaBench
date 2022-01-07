; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_get_serial_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_get_serial_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32 }

@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@MISR = common dso_local global i32 0, align 4
@MISCSTATUS_CTS = common dso_local global i32 0, align 4
@SerialSignal_CTS = common dso_local global i32 0, align 4
@MISCSTATUS_DCD = common dso_local global i32 0, align 4
@SerialSignal_DCD = common dso_local global i32 0, align 4
@MISCSTATUS_RI = common dso_local global i32 0, align 4
@SerialSignal_RI = common dso_local global i32 0, align 4
@MISCSTATUS_DSR = common dso_local global i32 0, align 4
@SerialSignal_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_get_serial_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_get_serial_signals(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %4 = load i32, i32* @SerialSignal_RTS, align 4
  %5 = load i32, i32* @SerialSignal_DTR, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = load i32, i32* @MISR, align 4
  %13 = call i32 @usc_InReg(%struct.mgsl_struct* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MISCSTATUS_CTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @SerialSignal_CTS, align 4
  %20 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %21 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MISCSTATUS_DCD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @SerialSignal_DCD, align 4
  %31 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @MISCSTATUS_RI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @SerialSignal_RI, align 4
  %42 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %43 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MISCSTATUS_DSR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @SerialSignal_DSR, align 4
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
