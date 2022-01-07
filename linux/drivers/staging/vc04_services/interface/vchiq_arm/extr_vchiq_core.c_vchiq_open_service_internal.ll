; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_open_service_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_open_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i32, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vchiq_open_payload = type { i32, i32, i32, i32 }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_MSG_OPEN = common dso_local global i32 0, align 4
@memcpy_copy_callback = common dso_local global i32 0, align 4
@QMFLAGS_IS_BLOCKING = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_CLOSEWAIT = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%d: osi - srvstate = %s (ref %d)\00", align 1
@srvstate_names = common dso_local global i32* null, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@error_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_open_service_internal(%struct.vchiq_service* %0, i32 %1) #0 {
  %3 = alloca %struct.vchiq_service*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_open_payload, align 4
  %6 = alloca i64, align 8
  store %struct.vchiq_service* %0, %struct.vchiq_service** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 0
  %8 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %9 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 2
  %15 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %16 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 3
  %19 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %20 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %25 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %27 = call i32 @vchiq_use_service_internal(%struct.vchiq_service* %26)
  %28 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %29 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @VCHIQ_MSG_OPEN, align 4
  %32 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %33 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VCHIQ_MAKE_MSG(i32 %31, i32 %34, i32 0)
  %36 = load i32, i32* @memcpy_copy_callback, align 4
  %37 = load i32, i32* @QMFLAGS_IS_BLOCKING, align 4
  %38 = call i64 @queue_message(%struct.TYPE_4__* %30, i32* null, i32 %35, i32 %36, %struct.vchiq_open_payload* %5, i32 16, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %2
  %43 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %44 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %43, i32 0, i32 4
  %45 = call i64 @wait_for_completion_interruptible(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %48, i64* %6, align 8
  %49 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %50 = call i32 @vchiq_release_service_internal(%struct.vchiq_service* %49)
  br label %94

51:                                               ; preds = %42
  %52 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %53 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %59 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VCHIQ_SRVSTATE_OPENSYNC, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %65 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VCHIQ_SRVSTATE_CLOSEWAIT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i32, i32* @vchiq_core_log_level, align 4
  %71 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %72 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @srvstate_names, align 8
  %77 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %78 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %83 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @vchiq_log_error(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %69, %63
  %87 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %87, i64* %6, align 8
  %88 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %89 = load i32, i32* @error_count, align 4
  %90 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %88, i32 %89)
  %91 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %92 = call i32 @vchiq_release_service_internal(%struct.vchiq_service* %91)
  br label %93

93:                                               ; preds = %86, %57, %51
  br label %94

94:                                               ; preds = %93, %47
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i64, i64* %6, align 8
  ret i64 %96
}

declare dso_local i32 @vchiq_use_service_internal(%struct.vchiq_service*) #1

declare dso_local i64 @queue_message(%struct.TYPE_4__*, i32*, i32, i32, %struct.vchiq_open_payload*, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @vchiq_release_service_internal(%struct.vchiq_service*) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
