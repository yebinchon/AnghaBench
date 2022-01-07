; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_proc.c_dasd_devices_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_proc.c_dasd_devices_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dasd_device = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.dasd_block* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_block = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" at (%3d:%6d)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"  at (???:??????)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" is %-8s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" is ????????\00", align 1
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"(ro)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%4s: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"unformatted\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"active \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"n/f\09 \00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"at blocksize: %u, %lu blocks, %lu MB\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"no stat\00", align 1
@dasd_probeonly = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"(probeonly)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dasd_devices_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_devices_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.dasd_block*, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = sub i64 %10, 1
  %12 = call %struct.dasd_device* @dasd_device_from_devindex(i64 %11)
  store %struct.dasd_device* %12, %struct.dasd_device** %6, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

17:                                               ; preds = %2
  %18 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 4
  %20 = load %struct.dasd_block*, %struct.dasd_block** %19, align 8
  %21 = icmp ne %struct.dasd_block* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 4
  %25 = load %struct.dasd_block*, %struct.dasd_block** %24, align 8
  store %struct.dasd_block* %25, %struct.dasd_block** %7, align 8
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %28 = call i32 @dasd_put_device(%struct.dasd_device* %27)
  store i32 0, i32* %3, align 4
  br label %160

29:                                               ; preds = %22
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_name(i32* %34)
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %52

49:                                               ; preds = %29
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %54 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %60 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @disk_devt(%struct.TYPE_6__* %61)
  %63 = call i32 @MAJOR(i32 %62)
  %64 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %65 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @disk_devt(%struct.TYPE_6__* %66)
  %68 = call i32 @MINOR(i32 %67)
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %68)
  br label %73

70:                                               ; preds = %52
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %57
  %74 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %75 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %81 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %89

86:                                               ; preds = %73
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %78
  %90 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %91 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  store i8* %97, i8** %8, align 8
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %99)
  %101 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %102 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %146 [
    i32 131, label %104
    i32 132, label %107
    i32 133, label %110
    i32 128, label %113
    i32 129, label %116
    i32 130, label %116
  ]

104:                                              ; preds = %89
  %105 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %149

107:                                              ; preds = %89
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %149

110:                                              ; preds = %89
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %149

113:                                              ; preds = %89
  %114 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %149

116:                                              ; preds = %89, %89
  %117 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %118 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %119 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %120 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dasd_check_blocksize(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %126 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %145

127:                                              ; preds = %116
  %128 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %129 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %130 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %133 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %136 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 9
  %139 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  %140 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = ashr i32 %142, 11
  %144 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %131, i32 %134, i32 %143)
  br label %145

145:                                              ; preds = %127, %124
  br label %149

146:                                              ; preds = %89
  %147 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %148 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %145, %113, %110, %107, %104
  %150 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %151 = call i32 @dasd_put_device(%struct.dasd_device* %150)
  %152 = load i64, i64* @dasd_probeonly, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %156 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %159 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %26, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.dasd_device* @dasd_device_from_devindex(i64) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @disk_devt(%struct.TYPE_6__*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @dasd_check_blocksize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
