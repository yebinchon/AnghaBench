; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.sbp_target_agent = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sbp_session* }
%struct.sbp_session = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"ignoring request with wrong generation\0A\00", align 1
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ignoring request from foreign node (%x != %x)\0A\00", align 1
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @tgt_agent_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgt_agent_rw(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
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
  %21 = alloca %struct.sbp_target_agent*, align 8
  %22 = alloca %struct.sbp_session*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
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
  %27 = bitcast i8* %26 to %struct.sbp_target_agent*
  store %struct.sbp_target_agent* %27, %struct.sbp_target_agent** %21, align 8
  %28 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %29 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.sbp_session*, %struct.sbp_session** %31, align 8
  store %struct.sbp_session* %32, %struct.sbp_session** %22, align 8
  %33 = load %struct.sbp_session*, %struct.sbp_session** %22, align 8
  %34 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.sbp_session*, %struct.sbp_session** %22, align 8
  %37 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %23, align 4
  %39 = load %struct.sbp_session*, %struct.sbp_session** %22, align 8
  %40 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %24, align 4
  %42 = load %struct.sbp_session*, %struct.sbp_session** %22, align 8
  %43 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %10
  %49 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %50, i32* %25, align 4
  br label %133

51:                                               ; preds = %10
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %24, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %24, align 4
  %58 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %59, i32* %25, align 4
  br label %133

60:                                               ; preds = %51
  %61 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %62 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %17, align 8
  %67 = load i64, i64* %17, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i64, i64* %19, align 8
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %77 = call i32 @tgt_agent_rw_agent_state(%struct.fw_card* %73, i32 %74, i8* %75, %struct.sbp_target_agent* %76)
  store i32 %77, i32* %25, align 4
  br label %132

78:                                               ; preds = %69, %60
  %79 = load i64, i64* %17, align 8
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i64, i64* %19, align 8
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i8*, i8** %18, align 8
  %88 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %89 = call i32 @tgt_agent_rw_agent_reset(%struct.fw_card* %85, i32 %86, i8* %87, %struct.sbp_target_agent* %88)
  store i32 %89, i32* %25, align 4
  br label %131

90:                                               ; preds = %81, %78
  %91 = load i64, i64* %17, align 8
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i64, i64* %19, align 8
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** %18, align 8
  %100 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %101 = call i32 @tgt_agent_rw_orb_pointer(%struct.fw_card* %97, i32 %98, i8* %99, %struct.sbp_target_agent* %100)
  store i32 %101, i32* %25, align 4
  br label %130

102:                                              ; preds = %93, %90
  %103 = load i64, i64* %17, align 8
  %104 = icmp eq i64 %103, 16
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i64, i64* %19, align 8
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %113 = call i32 @tgt_agent_rw_doorbell(%struct.fw_card* %109, i32 %110, i8* %111, %struct.sbp_target_agent* %112)
  store i32 %113, i32* %25, align 4
  br label %129

114:                                              ; preds = %105, %102
  %115 = load i64, i64* %17, align 8
  %116 = icmp eq i64 %115, 20
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i64, i64* %19, align 8
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i8*, i8** %18, align 8
  %124 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %21, align 8
  %125 = call i32 @tgt_agent_rw_unsolicited_status_enable(%struct.fw_card* %121, i32 %122, i8* %123, %struct.sbp_target_agent* %124)
  store i32 %125, i32* %25, align 4
  br label %128

126:                                              ; preds = %117, %114
  %127 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %127, i32* %25, align 4
  br label %128

128:                                              ; preds = %126, %120
  br label %129

129:                                              ; preds = %128, %108
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %84
  br label %132

132:                                              ; preds = %131, %72
  br label %133

133:                                              ; preds = %132, %55, %48
  %134 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %135 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %136 = load i32, i32* %25, align 4
  %137 = call i32 @fw_send_response(%struct.fw_card* %134, %struct.fw_request* %135, i32 %136)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @tgt_agent_rw_agent_state(%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*) #1

declare dso_local i32 @tgt_agent_rw_agent_reset(%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*) #1

declare dso_local i32 @tgt_agent_rw_orb_pointer(%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*) #1

declare dso_local i32 @tgt_agent_rw_doorbell(%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*) #1

declare dso_local i32 @tgt_agent_rw_unsolicited_status_enable(%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
