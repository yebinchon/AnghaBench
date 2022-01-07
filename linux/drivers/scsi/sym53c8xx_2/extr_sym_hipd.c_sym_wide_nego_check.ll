; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wide_nego_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wide_nego_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i64*, i64, i64* }
%struct.sym_ccb = type { i32, i32 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wide msgin\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"wdtr: wide=%d chg=%d.\0A\00", align 1
@M_NOOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"wide msgout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, i32, %struct.sym_ccb*)* @sym_wide_nego_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_wide_nego_check(%struct.sym_hcb* %0, i32 %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sym_ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sym_ccb* %2, %struct.sym_ccb** %7, align 8
  %11 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %12 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @DEBUG_FLAGS, align 4
  %15 = load i32, i32* @DEBUG_NEGO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %22 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %19, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %23)
  br label %25

25:                                               ; preds = %18, %3
  store i64 0, i64* %9, align 8
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %27 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %33 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  store i64 1, i64* %9, align 8
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i32, i32* @DEBUG_FLAGS, align 4
  %42 = load i32, i32* @DEBUG_NEGO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %47 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @sym_print_addr(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %90

59:                                               ; preds = %55, %52
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @sym_setwide(%struct.sym_hcb* %60, i32 %61, i64 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %91

67:                                               ; preds = %59
  %68 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %69 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spi_populate_width_msg(i64* %70, i64 %71)
  %73 = load i64, i64* @M_NOOP, align 8
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %75 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %73, i64* %77, align 8
  %78 = load i32, i32* @DEBUG_FLAGS, align 4
  %79 = load i32, i32* @DEBUG_NEGO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %67
  %83 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %86 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %87)
  br label %89

89:                                               ; preds = %82, %67
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %66
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @sym_print_nego_msg(%struct.sym_hcb*, i32, i8*, i64*) #1

declare dso_local i32 @sym_print_addr(i32, i8*, i64, i64) #1

declare dso_local i32 @sym_setwide(%struct.sym_hcb*, i32, i64) #1

declare dso_local i32 @spi_populate_width_msg(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
