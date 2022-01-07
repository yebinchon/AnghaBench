; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_map_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_map_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32, i32*, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@ALIGN32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_fib_map_free(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %6 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %12 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %18 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %25 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = load i64, i64* @ALIGN32, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  store i64 %35, i64* %3, align 8
  %36 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %42 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %45 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_free_coherent(i32* %39, i64 %40, i32* %43, i32 %46)
  %48 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %49 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %51 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
