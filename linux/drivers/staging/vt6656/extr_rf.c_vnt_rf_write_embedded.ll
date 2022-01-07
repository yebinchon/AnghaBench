; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_write_embedded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_write_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@VNT_RF_REG_LEN = common dso_local global i32 0, align 4
@IFREGCTL_REGW = common dso_local global i32 0, align 4
@MESSAGE_TYPE_WRITE_IFRF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_rf_write_embedded(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i64], align 16
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @VNT_RF_REG_LEN, align 4
  %7 = shl i32 %6, 3
  %8 = load i32, i32* @IFREGCTL_REGW, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %21, i64* %22, align 16
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 24
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  store i64 %25, i64* %26, align 8
  %27 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %28 = load i32, i32* @MESSAGE_TYPE_WRITE_IFRF, align 4
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i64* %29)
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %32 = call i32 @vnt_control_out(%struct.vnt_private* %27, i32 %28, i32 0, i32 0, i32 %30, i64* %31)
  ret i32 1
}

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
