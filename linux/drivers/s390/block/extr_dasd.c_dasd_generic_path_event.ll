; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_path_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_path_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)* }

@PE_PATH_GONE = common dso_local global i32 0, align 4
@PE_PATH_AVAILABLE = common dso_local global i32 0, align 4
@PE_PATHGROUP_ESTABLISHED = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Pathgroup re-established\0A\00", align 1
@DASD_STOPPED_NOT_ACC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"No verified channel paths remain for the device\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"last verified path gone\00", align 1
@DASD_EER_NOPATH = common dso_local global i32 0, align 4
@DASD_STOPPED_DC_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_path_event(%struct.ccw_device* %0, i32* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %11 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %10)
  store %struct.dasd_device* %11, %struct.dasd_device** %5, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = call i64 @IS_ERR(%struct.dasd_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %180

16:                                               ; preds = %2
  %17 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %18 = call i32 @dasd_path_get_opm(%struct.dasd_device* %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %95, %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %98

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PE_PATH_GONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dasd_path_notoper(%struct.dasd_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PE_PATH_AVAILABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dasd_path_available(%struct.dasd_device* %45, i32 %46)
  %48 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %49 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %48)
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PE_PATHGROUP_ESTABLISHED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %50
  %60 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dasd_path_is_operational(%struct.dasd_device* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dasd_path_need_verify(%struct.dasd_device* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dasd_path_available(%struct.dasd_device* %70, i32 %71)
  %73 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %74 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %73)
  br label %75

75:                                               ; preds = %69, %64, %59
  %76 = load i32, i32* @DBF_WARNING, align 4
  %77 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %78 = call i32 @DBF_DEV_EVENT(i32 %76, %struct.dasd_device* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %80 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %82, align 8
  %84 = icmp ne i32 (%struct.dasd_device*)* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %87 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %89, align 8
  %91 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %92 = call i32 %90(%struct.dasd_device* %91)
  br label %93

93:                                               ; preds = %85, %75
  br label %94

94:                                               ; preds = %93, %50
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %19

98:                                               ; preds = %19
  %99 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %100 = call i32 @dasd_path_get_hpfpm(%struct.dasd_device* %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %102 = call i32 @dasd_path_get_ifccpm(%struct.dasd_device* %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %104 = call i32 @dasd_path_get_opm(%struct.dasd_device* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %135, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %111 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %113, align 8
  %115 = icmp ne i32 (%struct.dasd_device*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %118 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %120, align 8
  %122 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %123 = call i32 %121(%struct.dasd_device* %122)
  br label %124

124:                                              ; preds = %116, %109
  %125 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %126 = load i32, i32* @DASD_STOPPED_NOT_ACC, align 4
  %127 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %125, i32 %126)
  %128 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dasd_path_set_tbvpm(%struct.dasd_device* %128, i32 %129)
  %131 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %132 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %131)
  %133 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %134 = call i32 @dasd_schedule_requeue(%struct.dasd_device* %133)
  br label %149

135:                                              ; preds = %106, %98
  %136 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %137 = call i32 @dasd_path_get_opm(%struct.dasd_device* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @dasd_path_set_tbvpm(%struct.dasd_device* %143, i32 %144)
  %146 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %147 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %146)
  br label %148

148:                                              ; preds = %142, %139, %135
  br label %149

149:                                              ; preds = %148, %124
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  %153 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %154 = call i32 @dasd_path_get_opm(%struct.dasd_device* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %177, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %159
  %163 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %164 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = call i32 @dev_warn(i32* %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* @DBF_WARNING, align 4
  %169 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %170 = call i32 @DBF_DEV_EVENT(i32 %168, %struct.dasd_device* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %172 = load i32, i32* @DASD_EER_NOPATH, align 4
  %173 = call i32 @dasd_eer_write(%struct.dasd_device* %171, i32* null, i32 %172)
  %174 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %175 = load i32, i32* @DASD_STOPPED_DC_WAIT, align 4
  %176 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %174, i32 %175)
  br label %177

177:                                              ; preds = %162, %159, %156, %152, %149
  %178 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %179 = call i32 @dasd_put_device(%struct.dasd_device* %178)
  br label %180

180:                                              ; preds = %177, %15
  ret void
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_notoper(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_available(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_is_operational(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_need_verify(%struct.dasd_device*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_path_get_hpfpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_ifccpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_set_tbvpm(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_requeue(%struct.dasd_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dasd_eer_write(%struct.dasd_device*, i32*, i32) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
