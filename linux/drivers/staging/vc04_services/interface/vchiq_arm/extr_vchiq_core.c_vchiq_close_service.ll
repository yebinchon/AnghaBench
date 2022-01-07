; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_close_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_close_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%d: close_service:%d\00", align 1
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_LISTENING = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_HIDDEN = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_POLL_TERMINATE = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%d: close_service:%d - waiting in state %s\00", align 1
@srvstate_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_close_service(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_service*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.vchiq_service* @find_service_by_handle(i32 %6)
  store %struct.vchiq_service* %7, %struct.vchiq_service** %4, align 8
  %8 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %10 = icmp ne %struct.vchiq_service* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %12, i64* %2, align 8
  br label %136

13:                                               ; preds = %1
  %14 = load i32, i32* @vchiq_core_log_level, align 4
  %15 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %16 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %21 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vchiq_log_info(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %25 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %13
  %30 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %31 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VCHIQ_SRVSTATE_LISTENING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %37 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VCHIQ_SRVSTATE_HIDDEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29, %13
  %42 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %43 = call i32 @unlock_service(%struct.vchiq_service* %42)
  %44 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %44, i64* %2, align 8
  br label %136

45:                                               ; preds = %35
  %46 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %47 = call i32 @mark_service_closing(%struct.vchiq_service* %46)
  %48 = load i64, i64* @current, align 8
  %49 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %50 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %57 = call i64 @vchiq_close_service_internal(%struct.vchiq_service* %56, i32 0)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @VCHIQ_RETRY, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  br label %70

63:                                               ; preds = %45
  %64 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %65 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %68 = load i32, i32* @VCHIQ_POLL_TERMINATE, align 4
  %69 = call i32 @request_poll(%struct.TYPE_2__* %66, %struct.vchiq_service* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %55
  br label %71

71:                                               ; preds = %70, %97
  %72 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %73 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %72, i32 0, i32 3
  %74 = call i64 @wait_for_completion_interruptible(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %77, i64* %5, align 8
  br label %114

78:                                               ; preds = %71
  %79 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %80 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %86 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VCHIQ_SRVSTATE_LISTENING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %92 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %84, %78
  br label %114

97:                                               ; preds = %90
  %98 = load i32, i32* @vchiq_core_log_level, align 4
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %100 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %105 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** @srvstate_names, align 8
  %108 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %109 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @vchiq_log_warning(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %112)
  br label %71

114:                                              ; preds = %96, %76
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %120 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %126 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VCHIQ_SRVSTATE_LISTENING, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %130, %124, %118, %114
  %133 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %134 = call i32 @unlock_service(%struct.vchiq_service* %133)
  %135 = load i64, i64* %5, align 8
  store i64 %135, i64* %2, align 8
  br label %136

136:                                              ; preds = %132, %41, %11
  %137 = load i64, i64* %2, align 8
  ret i64 %137
}

declare dso_local %struct.vchiq_service* @find_service_by_handle(i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

declare dso_local i32 @mark_service_closing(%struct.vchiq_service*) #1

declare dso_local i64 @vchiq_close_service_internal(%struct.vchiq_service*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @request_poll(%struct.TYPE_2__*, %struct.vchiq_service*, i32) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
