; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_writedata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_writedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DT2801_TIMEOUT = common dso_local global i32 0, align 4
@DT2801_STATUS = common dso_local global i64 0, align 8
@DT_S_COMPOSITE_ERROR = common dso_local global i32 0, align 4
@DT_S_DATA_IN_FULL = common dso_local global i32 0, align 4
@DT2801_DATA = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @dt2801_writedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2801_writedata(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @DT2801_TIMEOUT, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DT2801_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb_p(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DT_S_COMPOSITE_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %9
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DT_S_DATA_IN_FULL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DT2801_DATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb_p(i32 %29, i64 %34)
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %9, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ETIME, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %27, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
