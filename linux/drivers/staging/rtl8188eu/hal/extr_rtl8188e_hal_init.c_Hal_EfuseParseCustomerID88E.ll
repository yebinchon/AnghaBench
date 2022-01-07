; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_EfuseParseCustomerID88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_EfuseParseCustomerID88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i64, i64 }

@EEPROM_CUSTOMERID_88E = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_EfuseParseCustomerID88E(%struct.adapter* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  store %struct.hal_data_8188e* %10, %struct.hal_data_8188e** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* @EEPROM_CUSTOMERID_88E, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %19 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %22 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %24 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %27 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %28)
  ret void
}

declare dso_local i32 @DBG_88E(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
