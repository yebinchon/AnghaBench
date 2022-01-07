; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect_data_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect_data_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i8* }
%struct.xenvif_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reading ring references\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/queue-%u\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"tx-ring-ref\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rx-ring-ref\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"reading %s/ring-ref\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"event-channel-tx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"event-channel-rx\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"reading %s/event-channel(-tx/rx)\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"mapping shared-frames %lu/%lu port tx %u rx %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backend_info*, %struct.xenvif_queue*)* @connect_data_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_data_rings(%struct.backend_info* %0, %struct.xenvif_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backend_info*, align 8
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.backend_info* %0, %struct.backend_info** %4, align 8
  store %struct.xenvif_queue* %1, %struct.xenvif_queue** %5, align 8
  %16 = load %struct.backend_info*, %struct.backend_info** %4, align 8
  %17 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %16, i32 0, i32 0
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %17, align 8
  store %struct.xenbus_device* %18, %struct.xenbus_device** %6, align 8
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %20 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i64 11, i64* %15, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %28 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add i64 %30, 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i64 %31, i32 %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %37, i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %129

43:                                               ; preds = %26
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %46 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcpy(i8* %44, i8* %47)
  br label %77

49:                                               ; preds = %2
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %51 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add i64 %53, 11
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i64 %55, i32 %56)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %49
  %61 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %61, i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %129

67:                                               ; preds = %49
  %68 = load i8*, i8** %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %71 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %74 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %43
  %78 = load i32, i32* @XBT_NIL, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_gather(i32 %78, i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %9, i8* null)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %84, i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  br label %125

88:                                               ; preds = %77
  %89 = load i32, i32* @XBT_NIL, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_gather(i32 %89, i8* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %11, i8* null)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i32, i32* @XBT_NIL, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @xenbus_scanf(i32 %95, i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %103)
  br label %125

105:                                              ; preds = %94
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %105, %88
  %108 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @xenvif_connect_data(%struct.xenvif_queue* %108, i64 %109, i64 %110, i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %117, i32 %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i64 %119, i64 %120, i32 %121, i32 %122)
  br label %125

124:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %116, %100, %83
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %60, %36
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_gather(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_scanf(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @xenvif_connect_data(%struct.xenvif_queue*, i64, i64, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
