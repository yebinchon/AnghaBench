; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 }

@ADT7316_INT_STAT1 = common dso_local global i32 0, align 4
@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@ADT7316_INT_STAT2 = common dso_local global i32 0, align 4
@ADT7316_INT_MASK2_VDD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adt7316_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.adt7316_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %13)
  store %struct.adt7316_chip_info* %14, %struct.adt7316_chip_info** %6, align 8
  %15 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %16 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %17, align 8
  %19 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %20 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ADT7316_INT_STAT1, align 4
  %24 = call i32 %18(i32 %22, i32 %23, i32* %7)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %132, label %27

27:                                               ; preds = %2
  %28 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %29 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ID_FAMILY_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ID_ADT75XX, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 31
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = call i32 @iio_get_time_ns(%struct.iio_dev* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BIT(i32 0)
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = load i32, i32* @IIO_TEMP, align 4
  %48 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %49 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %50 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %47, i32 0, i32 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @iio_push_event(%struct.iio_dev* %46, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 1)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = load i32, i32* @IIO_TEMP, align 4
  %61 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %62 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %63 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %60, i32 0, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @iio_push_event(%struct.iio_dev* %59, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %53
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @BIT(i32 2)
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %73 = load i32, i32* @IIO_TEMP, align 4
  %74 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %75 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %76 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %73, i32 1, i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @iio_push_event(%struct.iio_dev* %72, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @BIT(i32 3)
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %86 = load i32, i32* @IIO_TEMP, align 4
  %87 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %88 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %89 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %86, i32 1, i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @iio_push_event(%struct.iio_dev* %85, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @BIT(i32 5)
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %99 = load i32, i32* @IIO_VOLTAGE, align 4
  %100 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %101 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %102 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %99, i32 1, i32 %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @iio_push_event(%struct.iio_dev* %98, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @BIT(i32 6)
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %112 = load i32, i32* @IIO_VOLTAGE, align 4
  %113 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %114 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %115 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %112, i32 2, i32 %113, i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @iio_push_event(%struct.iio_dev* %111, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %110, %105
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @BIT(i32 7)
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = load i32, i32* @IIO_VOLTAGE, align 4
  %126 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %127 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %128 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %125, i32 3, i32 %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @iio_push_event(%struct.iio_dev* %124, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %123, %118
  br label %132

132:                                              ; preds = %131, %2
  %133 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %134 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %135, align 8
  %137 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %138 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ADT7316_INT_STAT2, align 4
  %142 = call i32 %136(i32 %140, i32 %141, i32* %8)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ADT7316_INT_MASK2_VDD, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %152 = load i32, i32* @IIO_VOLTAGE, align 4
  %153 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %154 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %155 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %152, i32 0, i32 %153, i32 %154)
  %156 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %157 = call i32 @iio_get_time_ns(%struct.iio_dev* %156)
  %158 = call i32 @iio_push_event(%struct.iio_dev* %151, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %150, %145
  br label %160

160:                                              ; preds = %159, %132
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %161
}

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
