; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_prefix_LRE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_prefix_LRE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i8*, i64, i32 }
%struct.PFX_eckd_data = type { i32, %struct.TYPE_6__, i32, i32, %struct.LRE_eckd_data, %struct.DE_eckd_data }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.LRE_eckd_data = type { i32 }
%struct.DE_eckd_data = type { i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@DASD_ECKD_CCW_PFX = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_WRITE_FULL_TRACK = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PFX LRE unknown format 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.PFX_eckd_data*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32, i32, i32, i32, i32)* @prefix_LRE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_LRE(%struct.ccw1* %0, %struct.PFX_eckd_data* %1, i32 %2, i32 %3, i32 %4, %struct.dasd_device* %5, %struct.dasd_device* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccw1*, align 8
  %15 = alloca %struct.PFX_eckd_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dasd_device*, align 8
  %20 = alloca %struct.dasd_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.dasd_eckd_private*, align 8
  %27 = alloca %struct.dasd_eckd_private*, align 8
  %28 = alloca %struct.LRE_eckd_data*, align 8
  %29 = alloca %struct.DE_eckd_data*, align 8
  %30 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %14, align 8
  store %struct.PFX_eckd_data* %1, %struct.PFX_eckd_data** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store %struct.dasd_device* %5, %struct.dasd_device** %19, align 8
  store %struct.dasd_device* %6, %struct.dasd_device** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 0, i32* %30, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %32, align 8
  store %struct.dasd_eckd_private* %33, %struct.dasd_eckd_private** %26, align 8
  %34 = load %struct.dasd_device*, %struct.dasd_device** %20, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 0
  %36 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %35, align 8
  store %struct.dasd_eckd_private* %36, %struct.dasd_eckd_private** %27, align 8
  %37 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %38 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %37, i32 0, i32 5
  store %struct.DE_eckd_data* %38, %struct.DE_eckd_data** %29, align 8
  %39 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %40 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %39, i32 0, i32 4
  store %struct.LRE_eckd_data* %40, %struct.LRE_eckd_data** %28, align 8
  %41 = load i32, i32* @DASD_ECKD_CCW_PFX, align 4
  %42 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @DASD_ECKD_CCW_WRITE_FULL_TRACK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %12
  %50 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %51 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %50, i32 0, i32 0
  store i32 38, i32* %51, align 8
  %52 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %53 = call i64 @__pa(%struct.PFX_eckd_data* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %56 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %58 = call i32 @memset(%struct.PFX_eckd_data* %57, i32 0, i32 38)
  br label %69

59:                                               ; preds = %12
  %60 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %61 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %60, i32 0, i32 0
  store i32 36, i32* %61, align 8
  %62 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %63 = call i64 @__pa(%struct.PFX_eckd_data* %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %66 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %68 = call i32 @memset(%struct.PFX_eckd_data* %67, i32 0, i32 36)
  br label %69

69:                                               ; preds = %59, %49
  %70 = load i32, i32* %21, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* @DBF_ERR, align 4
  %74 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @DBF_DEV_EVENT(i32 %73, %struct.dasd_device* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = call i32 (...) @BUG()
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %163

80:                                               ; preds = %69
  %81 = load i32, i32* %21, align 4
  %82 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %83 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %85 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %90 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %92 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %97 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %99 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %102 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %80
  %108 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %109 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %80
  %112 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %113 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %120 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %123 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %111
  %126 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %131 = load i32, i32* %24, align 4
  %132 = call i32 @define_extent(i32* null, %struct.DE_eckd_data* %126, i32 %127, i32 %128, i32 %129, %struct.dasd_device* %130, i32 %131)
  store i32 %132, i32* %30, align 4
  %133 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %134 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %125
  %139 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %140 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %146 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %138, %125
  %149 = load i32, i32* %21, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %28, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %25, align 4
  %160 = call i32 @locate_record_ext(i32* null, %struct.LRE_eckd_data* %152, i32 %153, i32 %154, i32 %155, i32 %156, %struct.dasd_device* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %151, %148
  %162 = load i32, i32* %30, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %161, %72
  %164 = load i32, i32* %13, align 4
  ret i32 %164
}

declare dso_local i64 @__pa(%struct.PFX_eckd_data*) #1

declare dso_local i32 @memset(%struct.PFX_eckd_data*, i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @define_extent(i32*, %struct.DE_eckd_data*, i32, i32, i32, %struct.dasd_device*, i32) #1

declare dso_local i32 @locate_record_ext(i32*, %struct.LRE_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
