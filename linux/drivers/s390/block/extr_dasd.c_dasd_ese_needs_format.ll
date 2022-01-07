; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_ese_needs_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_ese_needs_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }
%struct.irb = type { i32 }

@SNS1_NO_REC_FOUND = common dso_local global i32 0, align 4
@SNS1_FILE_PROTECTED = common dso_local global i32 0, align 4
@SCHN_STAT_INCORR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.irb*)* @dasd_ese_needs_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_ese_needs_format(%struct.dasd_block* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  store %struct.dasd_device* null, %struct.dasd_device** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %9 = icmp ne %struct.dasd_block* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

11:                                               ; preds = %2
  %12 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 0
  %14 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  store %struct.dasd_device* %14, %struct.dasd_device** %6, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %16 = icmp ne %struct.dasd_device* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %21, align 8
  %23 = icmp ne i32 (%struct.dasd_device*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %11
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %17
  %26 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %29, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %32 = call i32 %30(%struct.dasd_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %25
  %36 = load %struct.irb*, %struct.irb** %5, align 8
  %37 = call i32* @dasd_get_sense(%struct.irb* %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %64

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SNS1_NO_REC_FOUND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SNS1_FILE_PROTECTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.irb*, %struct.irb** %5, align 8
  %57 = getelementptr inbounds %struct.irb, %struct.irb* %56, i32 0, i32 0
  %58 = call i64 @scsw_cstat(i32* %57)
  %59 = load i64, i64* @SCHN_STAT_INCORR_LEN, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %55, %48, %41
  %62 = phi i1 [ true, %48 ], [ true, %41 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %40, %34, %24, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @dasd_get_sense(%struct.irb*) #1

declare dso_local i64 @scsw_cstat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
