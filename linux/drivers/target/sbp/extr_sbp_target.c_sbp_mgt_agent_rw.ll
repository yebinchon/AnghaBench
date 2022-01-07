; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_mgt_agent_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_mgt_agent_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.sbp_management_agent = type { i32, i32, i32, %struct.sbp_management_request*, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.sbp_management_request = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sbp2_pointer = type { i32 }

@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@MANAGEMENT_AGENT_STATE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ignoring management request while busy\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @sbp_mgt_agent_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_mgt_agent_rw(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.sbp_management_agent*, align 8
  %22 = alloca %struct.sbp2_pointer*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.sbp_management_request*, align 8
  %25 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %26 = load i8*, i8** %20, align 8
  %27 = bitcast i8* %26 to %struct.sbp_management_agent*
  store %struct.sbp_management_agent* %27, %struct.sbp_management_agent** %21, align 8
  %28 = load i8*, i8** %18, align 8
  %29 = bitcast i8* %28 to %struct.sbp2_pointer*
  store %struct.sbp2_pointer* %29, %struct.sbp2_pointer** %22, align 8
  %30 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %30, i32* %23, align 4
  %31 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %32 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %31, i32 0, i32 6
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %10
  br label %121

38:                                               ; preds = %10
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %41 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %19, align 8
  %47 = icmp ne i64 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %38
  br label %121

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %49
  %54 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %55 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %54, i32 0, i32 4
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %58 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %25, align 4
  %60 = load i32, i32* @MANAGEMENT_AGENT_STATE_BUSY, align 4
  %61 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %62 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %64 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %63, i32 0, i32 4
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load i32, i32* %25, align 4
  %67 = load i32, i32* @MANAGEMENT_AGENT_STATE_BUSY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %71, i32* %23, align 4
  br label %121

72:                                               ; preds = %53
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.sbp_management_request* @kzalloc(i32 16, i32 %73)
  store %struct.sbp_management_request* %74, %struct.sbp_management_request** %24, align 8
  %75 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %76 = icmp ne %struct.sbp_management_request* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %78, i32* %23, align 4
  br label %121

79:                                               ; preds = %72
  %80 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %81 = call i32 @fw_card_get(%struct.fw_card* %80)
  %82 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %83 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %86 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %89 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %91 = call i32 @fw_get_request_speed(%struct.fw_request* %90)
  %92 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %93 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sbp2_pointer*, %struct.sbp2_pointer** %22, align 8
  %95 = call i32 @sbp2_pointer_to_addr(%struct.sbp2_pointer* %94)
  %96 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %97 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sbp_management_request*, %struct.sbp_management_request** %24, align 8
  %99 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %100 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %99, i32 0, i32 3
  store %struct.sbp_management_request* %98, %struct.sbp_management_request** %100, align 8
  %101 = load i32, i32* @system_unbound_wq, align 4
  %102 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %103 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %102, i32 0, i32 2
  %104 = call i32 @queue_work(i32 %101, i32* %103)
  %105 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %105, i32* %23, align 4
  br label %120

106:                                              ; preds = %49
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %21, align 8
  %112 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sbp2_pointer*, %struct.sbp2_pointer** %22, align 8
  %115 = call i32 @addr_to_sbp2_pointer(i32 %113, %struct.sbp2_pointer* %114)
  %116 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %116, i32* %23, align 4
  br label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %118, i32* %23, align 4
  br label %119

119:                                              ; preds = %117, %110
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %77, %69, %48, %37
  %122 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %123 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %124 = load i32, i32* %23, align 4
  %125 = call i32 @fw_send_response(%struct.fw_card* %122, %struct.fw_request* %123, i32 %124)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local %struct.sbp_management_request* @kzalloc(i32, i32) #1

declare dso_local i32 @fw_card_get(%struct.fw_card*) #1

declare dso_local i32 @fw_get_request_speed(%struct.fw_request*) #1

declare dso_local i32 @sbp2_pointer_to_addr(%struct.sbp2_pointer*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @addr_to_sbp2_pointer(i32, %struct.sbp2_pointer*) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
