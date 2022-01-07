; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2413.c_state_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2413.c_state_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.w1_slave = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@W1_F3A_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mutex locked\00", align 1
@W1_F3A_FUNC_PIO_ACCESS_READ = common dso_local global i32 0, align 4
@W1_F3A_INVALID_PIO_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"slave device did not respond to PIO_ACCESS_READ, reselecting, retries left: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"PIO_ACCESS_READ error, retries left: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s, mutex unlocked, retries: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @state_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %18)
  store %struct.w1_slave* %19, %struct.w1_slave** %14, align 8
  %20 = load i32, i32* @W1_F3A_RETRIES, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %16, align 4
  %23 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %24 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %23, i32 0, i32 0
  %25 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kobject*, %struct.kobject** %9, align 8
  %30 = load i64, i64* %12, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %13, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.kobject* %29, i32 %31, i64 %32, i8* %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %122

38:                                               ; preds = %6
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %122

44:                                               ; preds = %38
  %45 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %46 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %51 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %88, %44
  %54 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %55 = call i64 @w1_reset_select_slave(%struct.w1_slave* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %107

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %101, %58
  %60 = load i32, i32* %15, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %15, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %65 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* @W1_F3A_FUNC_PIO_ACCESS_READ, align 4
  %68 = call i32 @w1_write_8(%struct.TYPE_6__* %66, i32 %67)
  %69 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %70 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @w1_read_8(%struct.TYPE_6__* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %73, 15
  %75 = load i32, i32* %17, align 4
  %76 = xor i32 %75, -1
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load i32, i32* %17, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %11, align 8
  store i8 %82, i8* %83, align 1
  store i32 1, i32* %16, align 4
  br label %107

84:                                               ; preds = %63
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @W1_F3A_INVALID_PIO_STATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %90 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %89, i32 0, i32 0
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %53

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %96 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i64 @w1_reset_resume_command(%struct.TYPE_6__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %107

101:                                              ; preds = %94
  %102 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %103 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %102, i32 0, i32 0
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %59

106:                                              ; preds = %59
  br label %107

107:                                              ; preds = %106, %100, %80, %57
  %108 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %109 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %114 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %113, i32 0, i32 0
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %118, i32 %119)
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %107, %41, %37
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @w1_read_8(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
