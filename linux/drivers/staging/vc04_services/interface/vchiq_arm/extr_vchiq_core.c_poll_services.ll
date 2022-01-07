; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_poll_services.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_poll_services.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, i32*, i32 }
%struct.vchiq_service = type { i32, i32, i32, i32, i32, i32 }

@VCHIQ_POLL_REMOVE = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%d: ps - remove %d<->%d\00", align 1
@VCHIQ_FOURCC_INVALID = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_POLL_TERMINATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: ps - terminate %d<->%d\00", align 1
@VCHIQ_POLL_TXNOTIFY = common dso_local global i32 0, align 4
@VCHIQ_POLL_RXNOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vchiq_state*)* @poll_services to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_services(%struct.vchiq_state* %0) #0 {
  %2 = alloca %struct.vchiq_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vchiq_service*, align 8
  %7 = alloca i32, align 4
  store %struct.vchiq_state* %0, %struct.vchiq_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %140, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %11 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BITSET_SIZE(i32 %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %143

15:                                               ; preds = %8
  %16 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %17 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @atomic_xchg(i32* %21, i32 0)
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %136, %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %139

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %26
  %33 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 %34, 5
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = call %struct.vchiq_service* @find_service_by_port(%struct.vchiq_state* %33, i32 %37)
  store %struct.vchiq_service* %38, %struct.vchiq_service** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %45 = icmp ne %struct.vchiq_service* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  br label %136

47:                                               ; preds = %32
  %48 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %49 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %48, i32 0, i32 5
  %50 = call i32 @atomic_xchg(i32* %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @VCHIQ_POLL_REMOVE, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %47
  %57 = load i32, i32* @vchiq_core_log_level, align 4
  %58 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %59 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %62 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %65 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vchiq_log_info(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* @VCHIQ_FOURCC_INVALID, align 4
  %69 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %70 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %72 = call i64 @vchiq_close_service_internal(%struct.vchiq_service* %71, i32 0)
  %73 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %56
  %76 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %77 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %78 = load i32, i32* @VCHIQ_POLL_REMOVE, align 4
  %79 = call i32 @request_poll(%struct.vchiq_state* %76, %struct.vchiq_service* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %56
  br label %110

81:                                               ; preds = %47
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @VCHIQ_POLL_TERMINATE, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load i32, i32* @vchiq_core_log_level, align 4
  %89 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %90 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %93 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %96 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @vchiq_log_info(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %100 = call i64 @vchiq_close_service_internal(%struct.vchiq_service* %99, i32 0)
  %101 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %87
  %104 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %105 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %106 = load i32, i32* @VCHIQ_POLL_TERMINATE, align 4
  %107 = call i32 @request_poll(%struct.vchiq_state* %104, %struct.vchiq_service* %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %87
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %80
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @VCHIQ_POLL_TXNOTIFY, align 4
  %113 = shl i32 1, %112
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %118 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %119 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %118, i32 0, i32 1
  %120 = call i32 @notify_bulks(%struct.vchiq_service* %117, i32* %119, i32 1)
  br label %121

121:                                              ; preds = %116, %110
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @VCHIQ_POLL_RXNOTIFY, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %129 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %130 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %129, i32 0, i32 0
  %131 = call i32 @notify_bulks(%struct.vchiq_service* %128, i32* %130, i32 1)
  br label %132

132:                                              ; preds = %127, %121
  %133 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %134 = call i32 @unlock_service(%struct.vchiq_service* %133)
  br label %135

135:                                              ; preds = %132, %26
  br label %136

136:                                              ; preds = %135, %46
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %23

139:                                              ; preds = %23
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %8

143:                                              ; preds = %8
  ret void
}

declare dso_local i32 @BITSET_SIZE(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local %struct.vchiq_service* @find_service_by_port(%struct.vchiq_state*, i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @vchiq_close_service_internal(%struct.vchiq_service*, i32) #1

declare dso_local i32 @request_poll(%struct.vchiq_state*, %struct.vchiq_service*, i32) #1

declare dso_local i32 @notify_bulks(%struct.vchiq_service*, i32*, i32) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
