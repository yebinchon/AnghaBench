; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hal_notch_filter_8723b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hal_notch_filter_8723b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Enable notch filter\0A\00", align 1
@rOFDM0_RxDSP = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Disable notch filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @hal_notch_filter_8723b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_notch_filter_8723b(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = call i32 @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i64, i64* @rOFDM0_RxDSP, align 8
  %11 = add nsw i64 %10, 1
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i64, i64* @rOFDM0_RxDSP, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @rtw_read8(%struct.adapter* %12, i64 %14)
  %16 = load i32, i32* @BIT1, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rtw_write8(%struct.adapter* %9, i64 %11, i32 %17)
  br label %32

19:                                               ; preds = %2
  %20 = call i32 @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i64, i64* @rOFDM0_RxDSP, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = load i64, i64* @rOFDM0_RxDSP, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @rtw_read8(%struct.adapter* %24, i64 %26)
  %28 = load i32, i32* @BIT1, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @rtw_write8(%struct.adapter* %21, i64 %23, i32 %30)
  br label %32

32:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
