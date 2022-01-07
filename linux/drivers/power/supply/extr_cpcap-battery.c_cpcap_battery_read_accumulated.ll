; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_read_accumulated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_read_accumulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_battery_ddata = type { i64, i32 }
%struct.cpcap_coulomb_counter_data = type { i32, i32, i32 }

@CPCAP_REG_CCS1 = common dso_local global i32 0, align 4
@CPCAP_VENDOR_TI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_battery_ddata*, %struct.cpcap_coulomb_counter_data*)* @cpcap_battery_read_accumulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_read_accumulated(%struct.cpcap_battery_ddata* %0, %struct.cpcap_coulomb_counter_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_battery_ddata*, align 8
  %5 = alloca %struct.cpcap_coulomb_counter_data*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.cpcap_battery_ddata* %0, %struct.cpcap_battery_ddata** %4, align 8
  store %struct.cpcap_coulomb_counter_data* %1, %struct.cpcap_coulomb_counter_data** %5, align 8
  %8 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %9 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %11 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %13 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %4, align 8
  %15 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CPCAP_REG_CCS1, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @regmap_bulk_read(i32 %16, i32 %17, i32* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

25:                                               ; preds = %2
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 4095
  %29 = shl i32 %28, 16
  %30 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %31 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %35 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %4, align 8
  %39 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CPCAP_VENDOR_TI, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %45 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @sign_extend32(i32 24, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %50 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %25
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %56 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %60 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %64 = load i32, i32* %63, align 16
  %65 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %66 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %68 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @sign_extend32(i32 %69, i32 9)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %73 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %4, align 8
  %75 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %76 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %79 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cpcap_coulomb_counter_data*, %struct.cpcap_coulomb_counter_data** %5, align 8
  %82 = getelementptr inbounds %struct.cpcap_coulomb_counter_data, %struct.cpcap_coulomb_counter_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cpcap_battery_cc_to_uah(%struct.cpcap_battery_ddata* %74, i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %51, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @sign_extend32(i32, i32) #1

declare dso_local i32 @cpcap_battery_cc_to_uah(%struct.cpcap_battery_ddata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
