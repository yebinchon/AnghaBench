; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_get_num_pdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_get_num_pdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.sdw_cdns_pdi = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_cdns_pdi*, i32, i64)* @cdns_get_num_pdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_get_num_pdi(%struct.sdw_cdns* %0, %struct.sdw_cdns_pdi* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca %struct.sdw_cdns_pdi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %6, align 8
  store %struct.sdw_cdns_pdi* %1, %struct.sdw_cdns_pdi** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %51, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %17, i64 %19
  %21 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %26, i64 %28
  %30 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %35, i64 %37
  %39 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %44

43:                                               ; preds = %25
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %12

54:                                               ; preds = %49, %12
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
