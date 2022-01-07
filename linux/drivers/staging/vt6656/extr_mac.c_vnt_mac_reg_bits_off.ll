; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_mac.c_vnt_mac_reg_bits_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_mac.c_vnt_mac_reg_bits_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MESSAGE_TYPE_WRITE_MASK = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i64], align 16
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %8, align 16
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %9, i64* %10, align 8
  %11 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %12 = load i32, i32* @MESSAGE_TYPE_WRITE_MASK, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i64* %15)
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %18 = call i32 @vnt_control_out(%struct.vnt_private* %11, i32 %12, i64 %13, i32 %14, i32 %16, i64* %17)
  ret i32 %18
}

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i64, i32, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
