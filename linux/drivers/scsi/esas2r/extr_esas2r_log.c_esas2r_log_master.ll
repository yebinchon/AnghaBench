; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_log.c_esas2r_log_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_log.c_esas2r_log_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@event_log_level = common dso_local global i64 0, align 8
@event_buffer = common dso_local global i8* null, align 8
@EVENT_LOG_BUFF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%s: \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s%s [%s, %s, %s]\00", align 1
@event_buffer_lock = common dso_local global i32 0, align 4
@ESAS2R_DRVR_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.device*, i8*, i32)* @esas2r_log_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_log_master(i64 %0, %struct.device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @event_log_level, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i8*, i8** @event_buffer, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i64, i64* @EVENT_LOG_BUFF_SIZE, align 8
  store i64 %22, i64* %13, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @translate_esas2r_event_level_to_kernel(i64 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @event_buffer_lock, i64 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @memset(i8* %27, i32 0, i64 %28)
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = icmp eq %struct.device* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* @ESAS2R_DRVR_NAME, align 4
  %38 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %33, i64 %34, i8* %35, i8* %36, i32 %37)
  br label %74

39:                                               ; preds = %20
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* @ESAS2R_DRVR_NAME, align 4
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i8* [ %54, %49 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %55 ]
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i8* [ %67, %62 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %68 ]
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = call i32 @dev_name(%struct.device* %71)
  %73 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %40, i64 %41, i8* %42, i8* %43, i32 %44, i8* %57, i8* %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %32
  %75 = load i8*, i8** @event_buffer, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** @event_buffer, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %13, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @vsnprintf(i8* %83, i64 %84, i8* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* @event_buffer_lock, i64 %91)
  store i32 -1, i32* %5, align 4
  br label %99

93:                                               ; preds = %74
  %94 = load i8*, i8** @event_buffer, align 8
  %95 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @event_buffer_lock, i64 %96)
  br label %98

98:                                               ; preds = %93, %4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @translate_esas2r_event_level_to_kernel(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
