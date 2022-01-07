; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@NPORT_CFG_GD0 = common dso_local global i32 0, align 4
@npregs = common dso_local global %struct.TYPE_9__* null, align 8
@TESTVAL = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@FONT_DATA = common dso_local global i32 0, align 4
@font_data = common dso_local global i32* null, align 8
@newport_has_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SGI Newport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @newport_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @newport_startup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NPORT_CFG_GD0, align 4
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @npregs, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @npregs, align 8
  %8 = call i64 @newport_wait(%struct.TYPE_9__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %43

11:                                               ; preds = %0
  %12 = load i32, i32* @TESTVAL, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @npregs, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @npregs, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @TESTVAL, align 4
  %22 = call i64 @XSTI_TO_FXSTART(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %43

25:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* @FONT_DATA, align 4
  %32 = load i32*, i32** @font_data, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %26

39:                                               ; preds = %26
  %40 = call i32 (...) @newport_reset()
  %41 = call i32 (...) @newport_get_revisions()
  %42 = call i32 (...) @newport_get_screensize()
  store i32 1, i32* @newport_has_init, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %44

43:                                               ; preds = %24, %10
  store i8* null, i8** %1, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i8*, i8** %1, align 8
  ret i8* %45
}

declare dso_local i64 @newport_wait(%struct.TYPE_9__*) #1

declare dso_local i64 @XSTI_TO_FXSTART(i32) #1

declare dso_local i32 @newport_reset(...) #1

declare dso_local i32 @newport_get_revisions(...) #1

declare dso_local i32 @newport_get_screensize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
