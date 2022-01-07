; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_battery = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Unable to read max raw channel value\0A\00", align 1
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to read channel avail scale\0A\00", align 1
@IIO_AVAIL_LIST = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to find matching voltage scale\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_battery*)* @ingenic_battery_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_battery_set_scale(%struct.ingenic_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ingenic_battery*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ingenic_battery* %0, %struct.ingenic_battery** %3, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %15 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iio_read_max_channel_raw(i32 %16, i32* %9)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %22 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %2, align 4
  br label %121

26:                                               ; preds = %1
  %27 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %28 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %31 = call i32 @iio_read_avail_channel_attribute(i32 %29, i32** %4, i32* %6, i32* %5, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %36 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %121

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @IIO_AVAIL_LIST, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %121

51:                                               ; preds = %44
  %52 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %53 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 1000
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %91, %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %68, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %91

80:                                               ; preds = %61
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83, %80
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %87, %79
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  br label %57

94:                                               ; preds = %57
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %99 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %121

104:                                              ; preds = %94
  %105 = load %struct.ingenic_battery*, %struct.ingenic_battery** %3, align 8
  %106 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %120 = call i32 @iio_write_channel_attribute(i32 %107, i32 %112, i32 %118, i32 %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %104, %97, %48, %34, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @iio_read_max_channel_raw(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iio_read_avail_channel_attribute(i32, i32**, i32*, i32*, i32) #1

declare dso_local i32 @iio_write_channel_attribute(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
