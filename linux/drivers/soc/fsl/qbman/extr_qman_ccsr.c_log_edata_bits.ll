; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_log_edata_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_log_edata_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ErrInt, EDATA:\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"  0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @log_edata_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_edata_bits(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 32
  %21 = shl i32 %18, %20
  %22 = xor i32 %21, -1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 16, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @REG_EDATA(i32 %27)
  %29 = call i32 @qm_ccsr_in(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %44, %23
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @REG_EDATA(i32 %40)
  %42 = call i32 @qm_ccsr_in(i32 %41)
  %43 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %35

47:                                               ; preds = %35
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @qm_ccsr_in(i32) #1

declare dso_local i32 @REG_EDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
