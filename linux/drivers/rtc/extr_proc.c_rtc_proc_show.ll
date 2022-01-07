; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_proc.c_rtc_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_proc.c_rtc_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rtc_device* }
%struct.rtc_device = type { %struct.TYPE_4__, i32, i32, i64, %struct.TYPE_3__, %struct.rtc_class_ops* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rtc_class_ops = type { i32 (i32, %struct.seq_file*)* }
%struct.rtc_wkalrm = type { i64, i64, i32 }
%struct.rtc_time = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"rtc_time\09: %ptRt\0Artc_date\09: %ptRd\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"alrm_time\09: %ptRt\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"alrm_date\09: %ptRd\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"alarm_IRQ\09: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"alrm_pending\09: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"update IRQ enabled\09: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"periodic IRQ enabled\09: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"periodic IRQ frequency\09: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"max user IRQ frequency\09: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"24hr\09\09: yes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rtc_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca %struct.rtc_class_ops*, align 8
  %8 = alloca %struct.rtc_wkalrm, align 8
  %9 = alloca %struct.rtc_time, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  store %struct.rtc_device* %12, %struct.rtc_device** %6, align 8
  %13 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 5
  %15 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %14, align 8
  store %struct.rtc_class_ops* %15, %struct.rtc_class_ops** %7, align 8
  %16 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %17 = call i32 @rtc_read_time(%struct.rtc_device* %16, %struct.rtc_time* %9)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %9, %struct.rtc_time* %9)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %25 = call i32 @rtc_read_alarm(%struct.rtc_device* %24, %struct.rtc_wkalrm* %8)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %51 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %60 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %68 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %73 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %28, %23
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %79 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %7, align 8
  %80 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %79, i32 0, i32 0
  %81 = load i32 (i32, %struct.seq_file*)*, i32 (i32, %struct.seq_file*)** %80, align 8
  %82 = icmp ne i32 (i32, %struct.seq_file*)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %7, align 8
  %85 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %84, i32 0, i32 0
  %86 = load i32 (i32, %struct.seq_file*)*, i32 (i32, %struct.seq_file*)** %85, align 8
  %87 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %88 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 %86(i32 %90, %struct.seq_file* %91)
  br label %93

93:                                               ; preds = %83, %76
  ret i32 0
}

declare dso_local i32 @rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @rtc_read_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
