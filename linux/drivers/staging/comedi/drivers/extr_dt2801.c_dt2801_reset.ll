; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@DT2801_DATA = common dso_local global i64 0, align 8
@DT_C_STOP = common dso_local global i32 0, align 4
@DT2801_CMD = common dso_local global i64 0, align 8
@DT2801_STATUS = common dso_local global i64 0, align 8
@DT_S_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout 1 status=0x%02x\0A\00", align 1
@DT_C_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"timeout 2 status=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dt2801_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2801_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DT2801_DATA, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @inb_p(i64 %10)
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DT2801_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inb_p(i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DT2801_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb_p(i64 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DT2801_DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb_p(i64 %28)
  %30 = load i32, i32* @DT_C_STOP, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DT2801_CMD, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb_p(i32 %30, i64 %35)
  %37 = call i32 @usleep_range(i32 100, i32 200)
  store i32 10000, i32* %5, align 4
  br label %38

38:                                               ; preds = %51, %1
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DT2801_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb_p(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @DT_S_READY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %55

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %38, label %55

55:                                               ; preds = %51, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* @DT_C_RESET, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT2801_CMD, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb_p(i32 %65, i64 %70)
  %72 = call i32 @usleep_range(i32 100, i32 200)
  store i32 10000, i32* %5, align 4
  br label %73

73:                                               ; preds = %86, %64
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DT2801_STATUS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inb_p(i64 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DT_S_READY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %90

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %5, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %73, label %90

90:                                               ; preds = %86, %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  %100 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %101 = call i32 @dt2801_readdata(%struct.comedi_device* %100, i32* %3)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dt2801_readdata(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
