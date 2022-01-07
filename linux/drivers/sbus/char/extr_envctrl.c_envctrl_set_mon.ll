; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_set_mon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_set_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"temp,cpu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"temp,cpu0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"temp,cpu1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"temp,cpu2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"temp,cpu3\00", align 1
@ENVCTRL_CPUTEMP_MON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"vddcore,cpu0\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"vddcore,cpu1\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"vddcore,cpu2\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"vddcore,cpu3\00", align 1
@ENVCTRL_CPUVOLTAGE_MON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"temp,motherboard\00", align 1
@ENVCTRL_MTHRBDTEMP_MON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"temp,scsi\00", align 1
@ENVCTRL_SCSITEMP_MON = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"temp,ethernet\00", align 1
@ENVCTRL_ETHERTEMP_MON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_child_t*, i8*, i32)* @envctrl_set_mon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envctrl_set_mon(%struct.i2c_child_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_child_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_child_t* %0, %struct.i2c_child_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22, %18, %14, %10, %3
  %27 = load i32, i32* @ENVCTRL_CPUTEMP_MON, align 4
  %28 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %42, %38, %34
  %51 = load i32, i32* @ENVCTRL_CPUVOLTAGE_MON, align 4
  %52 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENVCTRL_MTHRBDTEMP_MON, align 4
  %64 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ENVCTRL_SCSITEMP_MON, align 4
  %76 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %70
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @ENVCTRL_ETHERTEMP_MON, align 4
  %88 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %82
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
