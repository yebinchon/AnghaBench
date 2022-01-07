; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_ns-thermal.c_ns_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_ns-thermal.c_ns_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_thermal = type { i64, i32 }

@PVTMON_CONTROL0 = common dso_local global i64 0, align 8
@PVTMON_CONTROL0_SEL_MASK = common dso_local global i32 0, align 4
@PVTMON_CONTROL0_SEL_TEMP_MONITOR = common dso_local global i32 0, align 4
@PVTMON_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @ns_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ns_thermal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ns_thermal*
  store %struct.ns_thermal* %10, %struct.ns_thermal** %5, align 8
  %11 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %12 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @thermal_zone_get_offset(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %16 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @thermal_zone_get_slope(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %20 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PVTMON_CONTROL0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PVTMON_CONTROL0_SEL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PVTMON_CONTROL0_SEL_TEMP_MONITOR, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load i32, i32* @PVTMON_CONTROL0_SEL_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @PVTMON_CONTROL0_SEL_TEMP_MONITOR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %40 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PVTMON_CONTROL0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %30, %2
  %46 = load %struct.ns_thermal*, %struct.ns_thermal** %5, align 8
  %47 = getelementptr inbounds %struct.ns_thermal, %struct.ns_thermal* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PVTMON_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  ret i32 0
}

declare dso_local i32 @thermal_zone_get_offset(i32) #1

declare dso_local i32 @thermal_zone_get_slope(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
