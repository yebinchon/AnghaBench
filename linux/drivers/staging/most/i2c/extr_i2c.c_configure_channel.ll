; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_channel_config = type { i64, i64 }
%struct.hdm_i2c = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@NUM_CHANNELS = common dso_local global i32 0, align 4
@MOST_CH_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"bad data type for channel %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bad direction for channel %d\0A\00", align 1
@MOST_CH_RX = common dso_local global i64 0, align 8
@polling_rate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"bad irq: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@most_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"request_irq(%d) failed: %d\0A\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"polling rate is %u Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.most_channel_config*)* @configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_channel(%struct.most_interface* %0, i32 %1, %struct.most_channel_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.most_channel_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdm_i2c*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.most_channel_config* %2, %struct.most_channel_config** %7, align 8
  %12 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %13 = call %struct.hdm_i2c* @to_hdm(%struct.most_interface* %12)
  store %struct.hdm_i2c* %13, %struct.hdm_i2c** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUM_CHANNELS, align 4
  %19 = icmp sge i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %25 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MOST_CH_CONTROL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %132

34:                                               ; preds = %20
  %35 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %36 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %39 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %37, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %132

52:                                               ; preds = %34
  %53 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %54 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MOST_CH_RX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %131

58:                                               ; preds = %52
  %59 = load i32, i32* @polling_rate, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %58
  %62 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %63 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %70 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %132

77:                                               ; preds = %61
  %78 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %79 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %82 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @most_irq_handler, align 4
  %87 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %88 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %93 = call i32 @request_irq(i32 %85, i32 %86, i32 0, i32 %91, %struct.hdm_i2c* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %77
  %97 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %98 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %132

105:                                              ; preds = %77
  br label %130

106:                                              ; preds = %58
  %107 = load i32, i32* @MSEC_PER_SEC, align 4
  %108 = load i32, i32* @polling_rate, align 4
  %109 = udiv i32 %107, %108
  %110 = call i32 @msecs_to_jiffies(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  br label %116

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 1, %115 ]
  %118 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %119 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @MSEC_PER_SEC, align 4
  %122 = load %struct.hdm_i2c*, %struct.hdm_i2c** %9, align 8
  %123 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @jiffies_to_msecs(i32 %125)
  %127 = udiv i32 %121, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %116, %105
  br label %131

131:                                              ; preds = %130, %52
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %96, %68, %47, %29
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.hdm_i2c* @to_hdm(%struct.most_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.hdm_i2c*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
