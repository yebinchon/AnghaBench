; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"move: 0x%x => 0x%x\0A\00", align 1
@CHET_MT = common dso_local global i64 0, align 8
@MOVE_MEDIUM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32)* @ch_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_move(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [12 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 0, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @CHET_MT, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %5
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 48)
  %27 = load i32, i32* @MOVE_MEDIUM, align 4
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 7
  %35 = shl i32 %34, 5
  %36 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 5
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 6
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 7
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 10
  store i32 %61, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  %65 = load i32, i32* @DMA_NONE, align 4
  %66 = call i32 @ch_do_scsi(%struct.TYPE_6__* %63, i32* %64, i32 12, i32* null, i32 0, i32 %65)
  ret i32 %66
}

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_6__*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
