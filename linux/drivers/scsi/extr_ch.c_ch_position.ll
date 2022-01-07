; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"position: 0x%x\0A\00", align 1
@CHET_MT = common dso_local global i64 0, align 8
@POSITION_TO_ELEMENT = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @ch_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_position(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 0, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CHET_MT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %14, %4
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 40)
  %24 = load i32, i32* @POSITION_TO_ELEMENT, align 4
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 5
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 4
  store i32 %43, i32* %44, align 16
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 5
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 8
  store i32 %51, i32* %52, align 16
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* @DMA_NONE, align 4
  %56 = call i32 @ch_do_scsi(%struct.TYPE_6__* %53, i32* %54, i32 10, i32* null, i32 0, i32 %55)
  ret i32 %56
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_6__*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
