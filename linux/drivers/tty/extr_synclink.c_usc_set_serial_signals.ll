; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_serial_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_serial_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i8 }

@PCR = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i8 0, align 1
@BIT6 = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i8 0, align 1
@BIT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_serial_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_serial_signals(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %4, align 1
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %9 = load i32, i32* @PCR, align 4
  %10 = call i32 @usc_InReg(%struct.mgsl_struct* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @SerialSignal_RTS, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @BIT6, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @BIT6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @SerialSignal_DTR, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @BIT4, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load i32, i32* @BIT4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %44 = load i32, i32* @PCR, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @usc_OutReg(%struct.mgsl_struct* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
