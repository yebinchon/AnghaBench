; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_ns_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_ns_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.rpmsg_ns_msg = type { i8*, i32, i32 }
%struct.rpmsg_channel_info = type { i32, i32, i32 }
%struct.virtproc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"malformed ns msg (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"anomaly: ns ept has an rpdev handle\0A\00", align 1
@RPMSG_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%sing channel %s addr 0x%x\0A\00", align 1
@RPMSG_NS_DESTROY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@RPMSG_ADDR_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"rpmsg_destroy_channel failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"rpmsg_create_channel failed\0A\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @rpmsg_ns_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_ns_cb(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpmsg_ns_msg*, align 8
  %13 = alloca %struct.rpmsg_device*, align 8
  %14 = alloca %struct.rpmsg_channel_info, align 4
  %15 = alloca %struct.virtproc_info*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.rpmsg_ns_msg*
  store %struct.rpmsg_ns_msg* %19, %struct.rpmsg_ns_msg** %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.virtproc_info*
  store %struct.virtproc_info* %21, %struct.virtproc_info** %15, align 8
  %22 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %23 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %16, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 16
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load %struct.device*, %struct.device** %16, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %108

35:                                               ; preds = %5
  %36 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %37 = icmp ne %struct.rpmsg_device* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %16, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %108

43:                                               ; preds = %35
  %44 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %45 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @RPMSG_NAME_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load %struct.device*, %struct.device** %16, align 8
  %52 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %53 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RPMSG_NS_DESTROY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %60 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %61 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %64 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(%struct.device* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %62, i32 %65)
  %67 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %14, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %70 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strncpy(i32 %68, i8* %71, i32 4)
  %73 = load i32, i32* @RPMSG_ADDR_ANY, align 4
  %74 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %14, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %76 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.rpmsg_ns_msg*, %struct.rpmsg_ns_msg** %12, align 8
  %80 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RPMSG_NS_DESTROY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %43
  %86 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %87 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @rpmsg_unregister_device(%struct.device* %89, %struct.rpmsg_channel_info* %14)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %85
  br label %107

98:                                               ; preds = %43
  %99 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %100 = call %struct.rpmsg_device* @rpmsg_create_channel(%struct.virtproc_info* %99, %struct.rpmsg_channel_info* %14)
  store %struct.rpmsg_device* %100, %struct.rpmsg_device** %13, align 8
  %101 = load %struct.rpmsg_device*, %struct.rpmsg_device** %13, align 8
  %102 = icmp ne %struct.rpmsg_device* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %16, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %97
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %38, %29
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @rpmsg_unregister_device(%struct.device*, %struct.rpmsg_channel_info*) #1

declare dso_local %struct.rpmsg_device* @rpmsg_create_channel(%struct.virtproc_info*, %struct.rpmsg_channel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
