; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_wait_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_wait_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.aac_dev = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@OUTBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@AAC_CLEAR_SYNC_BIT = common dso_local global i32 0, align 4
@MUnit = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32*)* @aac_src_wait_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_wait_sync(%struct.aac_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 5, %10
  store i32 %11, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = call i64 @time_before(i64 %13, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %12
  %21 = call i32 @udelay(i32 5)
  %22 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %23 = call i32 @aac_src_get_sync_status(%struct.aac_dev* %22)
  %24 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %29 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %34 = load i32, i32* @AAC_CLEAR_SYNC_BIT, align 4
  %35 = call i32 @aac_src_access_devreg(%struct.aac_dev* %33, i32 %34)
  br label %43

36:                                               ; preds = %27
  %37 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %39 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %40 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @src_writel(%struct.aac_dev* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %32
  store i32 0, i32* %8, align 4
  br label %52

44:                                               ; preds = %20
  %45 = load i32, i32* @USEC_PER_MSEC, align 4
  %46 = mul nsw i32 1, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 50
  %51 = call i32 @usleep_range(i64 %48, i64 %50)
  br label %12

52:                                               ; preds = %43, %12
  %53 = load i32*, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %104

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %55
  %59 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %60 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i32 @readl(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %69 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @readl(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %78 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @readl(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %87 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = call i32 @readl(i32* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %96 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = call i32 @readl(i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %58, %55, %52
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @aac_src_get_sync_status(%struct.aac_dev*) #1

declare dso_local i32 @aac_src_access_devreg(%struct.aac_dev*, i32) #1

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
