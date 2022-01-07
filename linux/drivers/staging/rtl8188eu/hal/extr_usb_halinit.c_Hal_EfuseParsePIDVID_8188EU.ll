; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_Hal_EfuseParsePIDVID_8188EU.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_Hal_EfuseParsePIDVID_8188EU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i8*, i8*, i8*, i8* }

@EEPROM_VID_88EU = common dso_local global i64 0, align 8
@EEPROM_PID_88EU = common dso_local global i64 0, align 8
@EEPROM_CUSTOMERID_88E = common dso_local global i64 0, align 8
@EEPROM_Default_SubCustomerID = common dso_local global i8* null, align 8
@EEPROM_Default_VID = common dso_local global i8* null, align 8
@EEPROM_Default_PID = common dso_local global i8* null, align 8
@EEPROM_Default_CustomerID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"VID = 0x%04X, PID = 0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Customer ID: 0x%02X, SubCustomer ID: 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i8**, i32)* @Hal_EfuseParsePIDVID_8188EU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hal_EfuseParsePIDVID_8188EU(%struct.adapter* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  store %struct.hal_data_8188e* %10, %struct.hal_data_8188e** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64, i64* @EEPROM_VID_88EU, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = bitcast i8** %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @EF2BYTE(i32 %18)
  %20 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %21 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load i64, i64* @EEPROM_PID_88EU, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = bitcast i8** %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @EF2BYTE(i32 %26)
  %28 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %29 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i64, i64* @EEPROM_CUSTOMERID_88E, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %35 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @EEPROM_Default_SubCustomerID, align 8
  %37 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %38 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %52

39:                                               ; preds = %3
  %40 = load i8*, i8** @EEPROM_Default_VID, align 8
  %41 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %42 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @EEPROM_Default_PID, align 8
  %44 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %45 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @EEPROM_Default_CustomerID, align 8
  %47 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %48 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @EEPROM_Default_SubCustomerID, align 8
  %50 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %51 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %39, %13
  %53 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %54 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %57 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %58)
  %60 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %61 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %64 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @DBG_88E(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %65)
  ret void
}

declare dso_local i8* @EF2BYTE(i32) #1

declare dso_local i32 @DBG_88E(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
