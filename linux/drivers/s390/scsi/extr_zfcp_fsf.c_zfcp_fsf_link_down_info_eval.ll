; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_link_down_info_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_link_down_info_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fsf_link_down_info = type { i32 }

@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"There is no light signal from the local fibre channel cable\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"There is a wrap plug instead of a fibre channel cable\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"The adjacent fibre channel node does not support FCP\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"The FCP device is suspended because of a firmware update\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"The FCP device detected a WWPN that is duplicate or not valid\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"The fibre channel fabric does not support NPIV\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"The FCP adapter cannot support more NPIV ports\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"The adjacent switch cannot support more NPIV ports\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"The FCP adapter could not log in to the fibre channel fabric\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"The WWPN assignment file on the FCP adapter has been damaged\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"The mode table on the FCP adapter has been damaged\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"All NPIV ports on the FCP adapter have been assigned\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"The link between the FCP adapter and the FC fabric is down\0A\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, %struct.fsf_link_down_info*)* @zfcp_fsf_link_down_info_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %0, %struct.fsf_link_down_info* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.fsf_link_down_info*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store %struct.fsf_link_down_info* %1, %struct.fsf_link_down_info** %4, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 0
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %5, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %139

16:                                               ; preds = %2
  %17 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 1
  %20 = call i32 @atomic_or(i32 %17, i32* %19)
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %22 = call i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter* %21)
  %23 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %4, align 8
  %24 = icmp ne %struct.fsf_link_down_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %135

26:                                               ; preds = %16
  %27 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %4, align 8
  %28 = getelementptr inbounds %struct.fsf_link_down_info, %struct.fsf_link_down_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %126 [
    i32 132, label %30
    i32 129, label %38
    i32 134, label %46
    i32 138, label %54
    i32 137, label %62
    i32 131, label %70
    i32 133, label %78
    i32 135, label %86
    i32 139, label %94
    i32 128, label %102
    i32 136, label %110
    i32 130, label %118
  ]

30:                                               ; preds = %26
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %31, i32 0, i32 0
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %32, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %134

38:                                               ; preds = %26
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 0
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %40, align 8
  %42 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %134

46:                                               ; preds = %26
  %47 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %47, i32 0, i32 0
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %48, align 8
  %50 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %134

54:                                               ; preds = %26
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 0
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %56, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %134

62:                                               ; preds = %26
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 0
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %64, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %134

70:                                               ; preds = %26
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %72, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @dev_warn(i32* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %134

78:                                               ; preds = %26
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  %81 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %80, align 8
  %82 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %134

86:                                               ; preds = %26
  %87 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %88 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %87, i32 0, i32 0
  %89 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %88, align 8
  %90 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %134

94:                                               ; preds = %26
  %95 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %96 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %95, i32 0, i32 0
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %96, align 8
  %98 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @dev_warn(i32* %100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %134

102:                                              ; preds = %26
  %103 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %104 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %103, i32 0, i32 0
  %105 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %104, align 8
  %106 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @dev_warn(i32* %108, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  br label %134

110:                                              ; preds = %26
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %112 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %111, i32 0, i32 0
  %113 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %112, align 8
  %114 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(i32* %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %134

118:                                              ; preds = %26
  %119 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %120 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %119, i32 0, i32 0
  %121 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %120, align 8
  %122 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @dev_warn(i32* %124, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  br label %134

126:                                              ; preds = %26
  %127 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %128 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %127, i32 0, i32 0
  %129 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %128, align 8
  %130 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @dev_warn(i32* %132, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %126, %118, %110, %102, %94, %86, %78, %70, %62, %54, %46, %38, %30
  br label %135

135:                                              ; preds = %134, %25
  %136 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %137 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %138 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %15
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
