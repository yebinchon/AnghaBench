; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_remove_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_remove_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%d: remove_service:%d\00", align 1
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_HIDDEN = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@VCHIQ_FOURCC_INVALID = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_POLL_REMOVE = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%d: remove_service:%d - waiting in state %s\00", align 1
@srvstate_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_remove_service(i32 %0) #0 {
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
  br label %121

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
  %23 = call i32 @vchiq_log_info(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %25 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %31 = call i32 @unlock_service(%struct.vchiq_service* %30)
  %32 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %32, i64* %2, align 8
  br label %121

33:                                               ; preds = %13
  %34 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %35 = call i32 @mark_service_closing(%struct.vchiq_service* %34)
  %36 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %37 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VCHIQ_SRVSTATE_HIDDEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* @current, align 8
  %43 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %44 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41, %33
  %50 = load i32, i32* @VCHIQ_FOURCC_INVALID, align 4
  %51 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %52 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %54 = call i64 @vchiq_close_service_internal(%struct.vchiq_service* %53, i32 0)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @VCHIQ_RETRY, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  br label %67

60:                                               ; preds = %41
  %61 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %62 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %65 = load i32, i32* @VCHIQ_POLL_REMOVE, align 4
  %66 = call i32 @request_poll(%struct.TYPE_2__* %63, %struct.vchiq_service* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %49
  br label %68

68:                                               ; preds = %67, %88
  %69 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %70 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %69, i32 0, i32 3
  %71 = call i64 @wait_for_completion_interruptible(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %74, i64* %5, align 8
  br label %105

75:                                               ; preds = %68
  %76 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %77 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %83 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %75
  br label %105

88:                                               ; preds = %81
  %89 = load i32, i32* @vchiq_core_log_level, align 4
  %90 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %91 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %96 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** @srvstate_names, align 8
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %100 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vchiq_log_warning(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97, i32 %103)
  br label %68

105:                                              ; preds = %87, %73
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %111 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %109, %105
  %118 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %119 = call i32 @unlock_service(%struct.vchiq_service* %118)
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %117, %29, %11
  %122 = load i64, i64* %2, align 8
  ret i64 %122
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
