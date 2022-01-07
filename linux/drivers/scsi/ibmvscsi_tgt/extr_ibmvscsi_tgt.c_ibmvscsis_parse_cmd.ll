; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ibmvscsis_nexus* }
%struct.ibmvscsis_nexus = type { i32 }
%struct.ibmvscsis_cmd = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.iu_entry* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iu_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.srp_cmd = type { i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"parse_cmd: reserved bits set in IU\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"0x%llx: parsing SRP descriptor table failed.\0A\00", align 1
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@TCM_ORDERED_TAG = common dso_local global i32 0, align 4
@TCM_HEAD_TAG = common dso_local global i32 0, align 4
@TCM_ACA_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid task attribute %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"target_submit_cmd failed, rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, %struct.ibmvscsis_cmd*)* @ibmvscsis_parse_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_parse_cmd(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.ibmvscsis_cmd*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.srp_cmd*, align 8
  %7 = alloca %struct.ibmvscsis_nexus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %4, align 8
  %12 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %12, i32 0, i32 4
  %14 = load %struct.iu_entry*, %struct.iu_entry** %13, align 8
  store %struct.iu_entry* %14, %struct.iu_entry** %5, align 8
  %15 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %16 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.srp_cmd*
  store %struct.srp_cmd* %20, %struct.srp_cmd** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.ibmvscsis_nexus*, %struct.ibmvscsis_nexus** %23, align 8
  store %struct.ibmvscsis_nexus* %24, %struct.ibmvscsis_nexus** %7, align 8
  %25 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 1
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %39 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %37, i32 %38, i32 0)
  %40 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %41 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %42 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %40, %struct.ibmvscsis_cmd* %41)
  %43 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %156

46:                                               ; preds = %2
  %47 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %48 = call i64 @srp_get_desc_table(%struct.srp_cmd* %47, i32* %9, i32* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 1
  %53 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %146

57:                                               ; preds = %46
  %58 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %75 [
    i32 128, label %67
    i32 129, label %69
    i32 130, label %71
    i32 131, label %73
  ]

67:                                               ; preds = %57
  %68 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  store i32 %68, i32* %10, align 4
  br label %82

69:                                               ; preds = %57
  %70 = load i32, i32* @TCM_ORDERED_TAG, align 4
  store i32 %70, i32* %10, align 4
  br label %82

71:                                               ; preds = %57
  %72 = load i32, i32* @TCM_HEAD_TAG, align 4
  store i32 %72, i32* %10, align 4
  br label %82

73:                                               ; preds = %57
  %74 = load i32, i32* @TCM_ACA_TAG, align 4
  store i32 %74, i32* %10, align 4
  br label %82

75:                                               ; preds = %57
  %76 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %76, i32 0, i32 1
  %78 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %146

82:                                               ; preds = %73, %71, %69, %67
  %83 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %84 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be64_to_cpu(i32 %85)
  %87 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_bh(i32* %91)
  %93 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %93, i32 0, i32 0
  %95 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %95, i32 0, i32 2
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  %98 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %99 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 63
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %108, i32 0, i32 2
  %110 = load %struct.ibmvscsis_nexus*, %struct.ibmvscsis_nexus** %7, align 8
  %111 = getelementptr inbounds %struct.ibmvscsis_nexus, %struct.ibmvscsis_nexus* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %120 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %119, i32 0, i32 3
  %121 = call i32 @scsilun_to_int(%struct.TYPE_10__* %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @target_submit_cmd(%struct.TYPE_9__* %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %122, i32 %123, i32 %124, i32 0)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %82
  %129 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %130 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %129, i32 0, i32 1
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %134 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %133, i32 0, i32 0
  %135 = call i32 @spin_lock_bh(i32* %134)
  %136 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %137 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %136, i32 0, i32 0
  %138 = call i32 @list_del(i32* %137)
  %139 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %140 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %141 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %139, %struct.ibmvscsis_cmd* %140)
  %142 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %143 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock_bh(i32* %143)
  br label %146

145:                                              ; preds = %82
  br label %156

146:                                              ; preds = %128, %75, %50
  %147 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %148 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %147, i32 0, i32 0
  %149 = call i32 @spin_lock_bh(i32* %148)
  %150 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %151 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %152 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %150, i32 %151, i32 0)
  %153 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %154 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock_bh(i32* %154)
  br label %156

156:                                              ; preds = %146, %145, %30
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info*, %struct.ibmvscsis_cmd*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @srp_get_desc_table(%struct.srp_cmd*, i32*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @target_submit_cmd(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsilun_to_int(%struct.TYPE_10__*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
