; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_enable_aux_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_enable_aux_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64 }

@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@TC0R = common dso_local global i32 0, align 4
@HCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@IOCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*, i32)* @usc_enable_aux_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_enable_aux_clock(%struct.mgsl_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.mgsl_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %2
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 11059200, i32* %5, align 4
  br label %17

16:                                               ; preds = %9
  store i32 14745600, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %22, %23
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %29, %17
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %34 = load i32, i32* @TC0R, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @usc_OutReg(%struct.mgsl_struct* %33, i32 %34, i64 %35)
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %38 = load i32, i32* @HCR, align 4
  %39 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %40 = load i32, i32* @HCR, align 4
  %41 = call i32 @usc_InReg(%struct.mgsl_struct* %39, i32 %40)
  %42 = load i32, i32* @BIT1, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @BIT0, align 4
  %46 = or i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = call i32 @usc_OutReg(%struct.mgsl_struct* %37, i32 %38, i64 %47)
  %49 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %50 = load i32, i32* @IOCR, align 4
  %51 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %52 = load i32, i32* @IOCR, align 4
  %53 = call i32 @usc_InReg(%struct.mgsl_struct* %51, i32 %52)
  %54 = and i32 %53, 65528
  %55 = or i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @usc_OutReg(%struct.mgsl_struct* %49, i32 %50, i64 %56)
  br label %69

58:                                               ; preds = %2
  %59 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %60 = load i32, i32* @HCR, align 4
  %61 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %62 = load i32, i32* @HCR, align 4
  %63 = call i32 @usc_InReg(%struct.mgsl_struct* %61, i32 %62)
  %64 = load i32, i32* @BIT0, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = call i32 @usc_OutReg(%struct.mgsl_struct* %59, i32 %60, i64 %67)
  br label %69

69:                                               ; preds = %58, %32
  ret void
}

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i64) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
