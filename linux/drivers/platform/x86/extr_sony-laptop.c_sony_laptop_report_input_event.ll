; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_report_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_report_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.input_dev*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.sony_laptop_keypress = type { %struct.input_dev*, i32, i32* }

@sony_laptop_input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SONYPI_EVENT_FNKEY_RELEASED = common dso_local global i32 0, align 4
@SONYPI_EVENT_ANYBUTTON_RELEASED = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@sony_laptop_input_index = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"sony_laptop_report_input_event, event not known: %d\0A\00", align 1
@sony_laptop_input_keycode_map = common dso_local global i32* null, align 8
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown input event %.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sony_laptop_report_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_laptop_report_input_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.sony_laptop_keypress, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 4), align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 3), align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = bitcast %struct.sony_laptop_keypress* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SONYPI_EVENT_FNKEY_RELEASED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SONYPI_EVENT_ANYBUTTON_RELEASED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  br label %100

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %37 [
    i32 129, label %20
    i32 128, label %20
    i32 132, label %26
    i32 131, label %26
    i32 130, label %32
  ]

20:                                               ; preds = %18, %18
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @REL_WHEEL, align 4
  %23 = call i32 @input_report_rel(%struct.input_dev* %21, i32 %22, i32 1)
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = call i32 @input_sync(%struct.input_dev* %24)
  br label %100

26:                                               ; preds = %18, %18
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = load i32, i32* @REL_WHEEL, align 4
  %29 = call i32 @input_report_rel(%struct.input_dev* %27, i32 %28, i32 -1)
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = call i32 @input_sync(%struct.input_dev* %30)
  br label %100

32:                                               ; preds = %18
  %33 = load i32, i32* @BTN_MIDDLE, align 4
  %34 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %35, %struct.input_dev** %36, align 8
  br label %68

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** @sony_laptop_input_index, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %68

45:                                               ; preds = %37
  %46 = load i32*, i32** @sony_laptop_input_index, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i32*, i32** @sony_laptop_input_keycode_map, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @KEY_UNKNOWN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %64, %struct.input_dev** %65, align 8
  br label %66

66:                                               ; preds = %63, %52
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %42, %32
  %69 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %70 = load %struct.input_dev*, %struct.input_dev** %69, align 8
  %71 = icmp ne %struct.input_dev* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %77 = load %struct.input_dev*, %struct.input_dev** %76, align 8
  %78 = load i32, i32* @EV_MSC, align 4
  %79 = load i32, i32* @MSC_SCAN, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @input_event(%struct.input_dev* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  %83 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %84 = load %struct.input_dev*, %struct.input_dev** %83, align 8
  %85 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @input_report_key(%struct.input_dev* %84, i32 %86, i32 1)
  %88 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %89 = load %struct.input_dev*, %struct.input_dev** %88, align 8
  %90 = call i32 @input_sync(%struct.input_dev* %89)
  %91 = bitcast %struct.sony_laptop_keypress* %5 to i8*
  %92 = call i32 @kfifo_in_locked(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2), i8* %91, i32 24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1))
  %93 = load i64, i64* @jiffies, align 8
  %94 = call i64 @msecs_to_jiffies(i32 10)
  %95 = add nsw i64 %93, %94
  %96 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0), i64 %95)
  br label %100

97:                                               ; preds = %68
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %17, %20, %26, %97, %82
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @dprintk(i8*, i32) #2

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
