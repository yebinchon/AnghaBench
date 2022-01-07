; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tle62x0.c_tle62x0_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tle62x0.c_tle62x0_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tle62x0_state = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"tle62x0_read() returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"byte %d is %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tle62x0_status_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tle62x0_status_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tle62x0_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.tle62x0_state* @dev_get_drvdata(%struct.device* %14)
  store %struct.tle62x0_state* %15, %struct.tle62x0_state** %8, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %18 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %21 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %24 = call i32 @tle62x0_read(%struct.tle62x0_state* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %32 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %39 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = sdiv i32 %41, 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = shl i64 %45, 8
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %11, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %44
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %36

67:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %71 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 2
  %79 = zext i32 %78 to i64
  %80 = lshr i64 %76, %79
  %81 = call i8* @decode_fault(i64 %80)
  %82 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  store i8 10, i8* %90, align 1
  %92 = load %struct.tle62x0_state*, %struct.tle62x0_state** %8, align 8
  %93 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %89, %30
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.tle62x0_state* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tle62x0_read(%struct.tle62x0_state*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @decode_fault(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
