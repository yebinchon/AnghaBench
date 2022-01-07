; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_passthru_dev_info_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_passthru_dev_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_10__, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.atto_vda_devinfo }
%struct.atto_vda_devinfo = type { i32, i32, i32 }
%struct.esas2r_disc_context = type { i32, i32, i32, i32, i32, i32, i32 }

@RS_SCAN_GEN = common dso_local global i64 0, align 8
@DCS_PT_DEV_INFO = common dso_local global i32 0, align 4
@RS_SUCCESS = common dso_local global i64 0, align 8
@VDADEVFEAT_PHYS_ID = common dso_local global i32 0, align 4
@ATTO_GDA_AT_PORT = common dso_local global i32 0, align 4
@DCS_PT_DEV_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"curr_virt_id: %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"curr_phys_id: %d\00", align 1
@RS_DEV_INVALID = common dso_local global i64 0, align 8
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"A request for device information failed - status:%d\00", align 1
@DCS_DISC_DONE = common dso_local global i32 0, align 4
@DCF_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_passthru_dev_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_disc_passthru_dev_info_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atto_vda_devinfo*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_disc_context*
  store %struct.esas2r_disc_context* %11, %struct.esas2r_disc_context** %5, align 8
  %12 = call i32 (...) @esas2r_trace_enter()
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RS_SCAN_GEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %29 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %31 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @DCS_PT_DEV_INFO, align 4
  %33 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %34 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  br label %113

35:                                               ; preds = %2
  %36 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %37 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RS_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %43 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.atto_vda_devinfo* %47, %struct.atto_vda_devinfo** %7, align 8
  %48 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %49 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %55 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atto_vda_devinfo*, %struct.atto_vda_devinfo** %7, align 8
  %57 = getelementptr inbounds %struct.atto_vda_devinfo, %struct.atto_vda_devinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %61 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.atto_vda_devinfo*, %struct.atto_vda_devinfo** %7, align 8
  %63 = getelementptr inbounds %struct.atto_vda_devinfo, %struct.atto_vda_devinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load i32, i32* @VDADEVFEAT_PHYS_ID, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %41
  %70 = load %struct.atto_vda_devinfo*, %struct.atto_vda_devinfo** %7, align 8
  %71 = getelementptr inbounds %struct.atto_vda_devinfo, %struct.atto_vda_devinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %75 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ATTO_GDA_AT_PORT, align 4
  %77 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %78 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @DCS_PT_DEV_ADDR, align 4
  %80 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %81 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %83 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @esas2r_trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %87 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @esas2r_trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %95

90:                                               ; preds = %41
  %91 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %92 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %69
  br label %112

96:                                               ; preds = %35
  %97 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %98 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @RS_DEV_INVALID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %104 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %105 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @esas2r_log(i32 %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* @DCS_DISC_DONE, align 4
  %110 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %111 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %95
  br label %113

113:                                              ; preds = %112, %22
  %114 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %115 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %116 = call i32 @esas2r_rq_destroy_request(%struct.esas2r_request* %114, %struct.esas2r_adapter* %115)
  %117 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %118 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DCF_POLLED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %113
  %124 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %125 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %126 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %124, %struct.esas2r_request* %125)
  br label %127

127:                                              ; preds = %123, %113
  %128 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %128, i32 0, i32 0
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*, i64) #1

declare dso_local i32 @esas2r_rq_destroy_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_continue(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
