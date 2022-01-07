; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_get_trunk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_get_trunk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.lpfc_trunk_info = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"2744 Received GET TRUNK _INFO request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"2728 Received GET TRUNK _INFO reply below minimum size\0A\00", align 1
@lpfc_trunk_info_link_status = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@lpfc_trunk_info_trunk_active0 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_active1 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_active2 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_active3 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_config0 = common dso_local global i32 0, align 4
@lpfc_conf_trunk_port0 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_config1 = common dso_local global i32 0, align 4
@lpfc_conf_trunk_port1 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_config2 = common dso_local global i32 0, align 4
@lpfc_conf_trunk_port2 = common dso_local global i32 0, align 4
@lpfc_trunk_info_trunk_config3 = common dso_local global i32 0, align 4
@lpfc_conf_trunk_port3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_get_trunk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_get_trunk_info(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.lpfc_trunk_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %8 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %9 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %8)
  %10 = call %struct.lpfc_vport* @shost_priv(i32 %9)
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %4, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 2
  %16 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %15, align 8
  store %struct.fc_bsg_reply* %16, %struct.fc_bsg_reply** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load i32, i32* @LOG_LIBDFC, align 4
  %26 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %157

29:                                               ; preds = %1
  %30 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_trunk_info*
  store %struct.lpfc_trunk_info* %35, %struct.lpfc_trunk_info** %6, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 12
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load i32, i32* @LOG_LIBDFC, align 4
  %45 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %157

48:                                               ; preds = %29
  %49 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %50 = icmp eq %struct.lpfc_trunk_info* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %157

54:                                               ; preds = %48
  %55 = load i32, i32* @lpfc_trunk_info_link_status, align 4
  %56 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LPFC_LINK_UP, align 8
  %61 = icmp sge i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = call i32 @bsg_bf_set(i32 %55, %struct.lpfc_trunk_info* %56, i32 %63)
  %65 = load i32, i32* @lpfc_trunk_info_trunk_active0, align 4
  %66 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LPFC_LINK_UP, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = call i32 @bsg_bf_set(i32 %65, %struct.lpfc_trunk_info* %66, i32 %75)
  %77 = load i32, i32* @lpfc_trunk_info_trunk_active1, align 4
  %78 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LPFC_LINK_UP, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = call i32 @bsg_bf_set(i32 %77, %struct.lpfc_trunk_info* %78, i32 %87)
  %89 = load i32, i32* @lpfc_trunk_info_trunk_active2, align 4
  %90 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LPFC_LINK_UP, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = call i32 @bsg_bf_set(i32 %89, %struct.lpfc_trunk_info* %90, i32 %99)
  %101 = load i32, i32* @lpfc_trunk_info_trunk_active3, align 4
  %102 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LPFC_LINK_UP, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 @bsg_bf_set(i32 %101, %struct.lpfc_trunk_info* %102, i32 %111)
  %113 = load i32, i32* @lpfc_trunk_info_trunk_config0, align 4
  %114 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %115 = load i32, i32* @lpfc_conf_trunk_port0, align 4
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 1
  %118 = call i32 @bf_get(i32 %115, %struct.TYPE_18__* %117)
  %119 = call i32 @bsg_bf_set(i32 %113, %struct.lpfc_trunk_info* %114, i32 %118)
  %120 = load i32, i32* @lpfc_trunk_info_trunk_config1, align 4
  %121 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %122 = load i32, i32* @lpfc_conf_trunk_port1, align 4
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 1
  %125 = call i32 @bf_get(i32 %122, %struct.TYPE_18__* %124)
  %126 = call i32 @bsg_bf_set(i32 %120, %struct.lpfc_trunk_info* %121, i32 %125)
  %127 = load i32, i32* @lpfc_trunk_info_trunk_config2, align 4
  %128 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %129 = load i32, i32* @lpfc_conf_trunk_port2, align 4
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 1
  %132 = call i32 @bf_get(i32 %129, %struct.TYPE_18__* %131)
  %133 = call i32 @bsg_bf_set(i32 %127, %struct.lpfc_trunk_info* %128, i32 %132)
  %134 = load i32, i32* @lpfc_trunk_info_trunk_config3, align 4
  %135 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %136 = load i32, i32* @lpfc_conf_trunk_port3, align 4
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 1
  %139 = call i32 @bf_get(i32 %136, %struct.TYPE_18__* %138)
  %140 = call i32 @bsg_bf_set(i32 %134, %struct.lpfc_trunk_info* %135, i32 %139)
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %145, 1000
  %147 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %148 = getelementptr inbounds %struct.lpfc_trunk_info, %struct.lpfc_trunk_info* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 1000
  %155 = load %struct.lpfc_trunk_info*, %struct.lpfc_trunk_info** %6, align 8
  %156 = getelementptr inbounds %struct.lpfc_trunk_info, %struct.lpfc_trunk_info* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %54, %51, %41, %22
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %160 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %157
  %164 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %165 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %166 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %169 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @bsg_job_done(%struct.bsg_job* %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %163, %157
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @bsg_bf_set(i32, %struct.lpfc_trunk_info*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
