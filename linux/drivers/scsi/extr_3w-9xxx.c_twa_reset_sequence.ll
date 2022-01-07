; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_reset_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_reset_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@TW_MAX_RESET_TRIES = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Response queue (large) empty failed during reset sequence\00", align 1
@TW_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@TW_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Microcontroller not ready during reset sequence\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Response queue empty failed during reset sequence\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Compatibility check failed during reset sequence\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"AEN drain failed during reset sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @twa_reset_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_reset_sequence(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %89, %80, %69, %57, %45, %23, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TW_MAX_RESET_TRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %98

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @TW_SOFT_RESET(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i64 @twa_empty_response_queue_large(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TW_DRIVER, align 4
  %28 = call i32 @TW_PRINTK(i32 %26, i32 %27, i32 54, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i32, i32* @TW_STATUS_MICROCONTROLLER_READY, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @TW_STATUS_ATTENTION_INTERRUPT, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = or i32 %34, %41
  %43 = call i64 @twa_poll_status(%struct.TYPE_9__* %33, i32 %42, i32 60)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TW_DRIVER, align 4
  %50 = call i32 @TW_PRINTK(i32 %48, i32 %49, i32 31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %10

53:                                               ; preds = %40
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = call i64 @twa_empty_response_queue(%struct.TYPE_9__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TW_DRIVER, align 4
  %62 = call i32 @TW_PRINTK(i32 %60, i32 %61, i32 32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %10

65:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = call i64 @twa_check_srl(%struct.TYPE_9__* %66, i32* %7)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TW_DRIVER, align 4
  %74 = call i32 @TW_PRINTK(i32 %72, i32 %73, i32 33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %10

77:                                               ; preds = %65
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %10

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @twa_aen_drain_queue(%struct.TYPE_9__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TW_DRIVER, align 4
  %94 = call i32 @TW_PRINTK(i32 %92, i32 %93, i32 34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %10

97:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %99

98:                                               ; preds = %10
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @TW_SOFT_RESET(%struct.TYPE_9__*) #1

declare dso_local i64 @twa_empty_response_queue_large(%struct.TYPE_9__*) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i64 @twa_poll_status(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @twa_empty_response_queue(%struct.TYPE_9__*) #1

declare dso_local i64 @twa_check_srl(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @twa_aen_drain_queue(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
