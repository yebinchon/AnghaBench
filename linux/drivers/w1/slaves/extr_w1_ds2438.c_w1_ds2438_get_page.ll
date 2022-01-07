; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@W1_DS2438_RETRIES = common dso_local global i32 0, align 4
@W1_DS2438_RECALL_MEMORY = common dso_local global i64 0, align 8
@W1_DS2438_READ_SCRATCH = common dso_local global i64 0, align 8
@DS2438_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i64*)* @w1_ds2438_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2438_get_page(%struct.w1_slave* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @W1_DS2438_RETRIES, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %69, %34, %21, %3
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  store i64 0, i64* %10, align 8
  %18 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %19 = call i64 @w1_reset_select_slave(%struct.w1_slave* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %13

22:                                               ; preds = %17
  %23 = load i64, i64* @W1_DS2438_RECALL_MEMORY, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %27 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %30 = call i32 @w1_write_block(i32 %28, i64* %29, i32 2)
  %31 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %32 = call i64 @w1_reset_select_slave(%struct.w1_slave* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %13

35:                                               ; preds = %22
  %36 = load i64, i64* @W1_DS2438_READ_SCRATCH, align 8
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %36, i64* %37, align 16
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %40 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %43 = call i32 @w1_write_block(i32 %41, i64* %42, i32 2)
  %44 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %45 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i64 @w1_read_block(i32 %46, i64* %47, i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %35
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %59 = call i64 @w1_calc_crc8(i64* %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %71

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %35
  br label %13

70:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(i32, i64*, i32) #1

declare dso_local i64 @w1_read_block(i32, i64*, i32) #1

declare dso_local i64 @w1_calc_crc8(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
