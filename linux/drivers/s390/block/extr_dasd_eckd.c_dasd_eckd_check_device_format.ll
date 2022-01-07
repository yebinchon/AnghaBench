; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_device_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_device_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.format_check_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.eckd_count = type { i32 }
%struct.irb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.format_check_t*, i32)* @dasd_eckd_check_device_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_check_device_format(%struct.dasd_device* %0, %struct.format_check_t* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.format_check_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca %struct.eckd_count*, align 8
  %10 = alloca %struct.irb, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.format_check_t* %1, %struct.format_check_t** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %19, align 8
  store %struct.dasd_eckd_private* %20, %struct.dasd_eckd_private** %8, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %22 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %25, i32 0, i32 2
  %27 = call i32 @recs_per_track(%struct.TYPE_5__* %26, i32 0, i32 512)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %30 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %29, i32 0, i32 2
  %31 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %32 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @recs_per_track(%struct.TYPE_5__* %30, i32 0, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %37 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %41 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load i32, i32* @GFP_DMA, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.eckd_count* @kzalloc(i32 %52, i32 %55)
  store %struct.eckd_count* %56, %struct.eckd_count** %9, align 8
  %57 = load %struct.eckd_count*, %struct.eckd_count** %9, align 8
  %58 = icmp ne %struct.eckd_count* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %3
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %134

62:                                               ; preds = %3
  %63 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %64 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 40
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %74 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %16, align 4
  br label %78

78:                                               ; preds = %77, %71, %62
  %79 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %80 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %81 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.eckd_count*, %struct.eckd_count** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @dasd_eckd_format_process_data(%struct.dasd_device* %79, %struct.TYPE_6__* %81, i32 %82, i32 %83, %struct.eckd_count* %84, i32 %85, %struct.irb* %10)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %130

95:                                               ; preds = %89, %78
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.irb, %struct.irb* %10, i32 0, i32 0
  %105 = call i32 @scsw_cstat(i32* %104)
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  store i32 0, i32* %16, align 4
  %108 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %109 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %110 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %109, i32 0, i32 0
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.eckd_count*, %struct.eckd_count** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @dasd_eckd_format_process_data(%struct.dasd_device* %108, %struct.TYPE_6__* %110, i32 %111, i32 %112, %struct.eckd_count* %113, i32 %114, %struct.irb* %10)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %130

119:                                              ; preds = %107
  br label %121

120:                                              ; preds = %103, %100
  br label %130

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %121, %95
  %123 = load %struct.eckd_count*, %struct.eckd_count** %9, align 8
  %124 = load %struct.format_check_t*, %struct.format_check_t** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @dasd_eckd_format_evaluate_tracks(%struct.eckd_count* %123, %struct.format_check_t* %124, i32 %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %122, %120, %118, %94
  %131 = load %struct.eckd_count*, %struct.eckd_count** %9, align 8
  %132 = call i32 @kfree(%struct.eckd_count* %131)
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %59
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @recs_per_track(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.eckd_count* @kzalloc(i32, i32) #1

declare dso_local i32 @dasd_eckd_format_process_data(%struct.dasd_device*, %struct.TYPE_6__*, i32, i32, %struct.eckd_count*, i32, %struct.irb*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @dasd_eckd_format_evaluate_tracks(%struct.eckd_count*, %struct.format_check_t*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.eckd_count*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
