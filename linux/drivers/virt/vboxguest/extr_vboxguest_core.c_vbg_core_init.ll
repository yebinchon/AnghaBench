; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, %struct.TYPE_2__, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VMMDEV_EVENT_HGCM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i8* null, align 8
@vbg_heartbeat_timer = common dso_local global i32 0, align 4
@vbg_balloon_work = common dso_local global i32 0, align 4
@VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4
@VMMDEVREQ_CHANGE_MEMBALLOON = common dso_local global i32 0, align 4
@VMMDEVREQ_HGCM_CANCEL2 = common dso_local global i32 0, align 4
@VMMDEVREQ_ACKNOWLEDGE_EVENTS = common dso_local global i32 0, align 4
@VMMDEVREQ_GET_MOUSE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vboxguest: vbg_report_guest_info error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"vboxguest: Error setting fixed event filter: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"vboxguest: Error clearing guest capabilities: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"vboxguest: Error clearing mouse status: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"vboxguest: Error reporting driver status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_core_init(%struct.vbg_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vbg_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VMMDEV_EVENT_HGCM, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** @U32_MAX, align 8
  %15 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %16 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %15, i32 0, i32 12
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @U32_MAX, align 8
  %18 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %18, i32 0, i32 11
  store i8* %17, i8** %19, align 8
  %20 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %21 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %20, i32 0, i32 10
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %23, i32 0, i32 9
  %25 = call i32 @init_waitqueue_head(i32* %24)
  %26 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %27 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %26, i32 0, i32 8
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %30 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %29, i32 0, i32 7
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %32, i32 0, i32 6
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %36 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %35, i32 0, i32 5
  %37 = load i32, i32* @vbg_heartbeat_timer, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %40 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* @vbg_balloon_work, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load i32, i32* @VMMDEVREQ_GET_MEMBALLOON_CHANGE_REQ, align 4
  %45 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %46 = call i8* @vbg_req_alloc(i32 1, i32 %44, i32 %45)
  %47 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @VMMDEVREQ_CHANGE_MEMBALLOON, align 4
  %51 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %52 = call i8* @vbg_req_alloc(i32 1, i32 %50, i32 %51)
  %53 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %54 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @VMMDEVREQ_HGCM_CANCEL2, align 4
  %57 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %58 = call i8* @vbg_req_alloc(i32 1, i32 %56, i32 %57)
  %59 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %60 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @VMMDEVREQ_ACKNOWLEDGE_EVENTS, align 4
  %62 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %63 = call i8* @vbg_req_alloc(i32 1, i32 %61, i32 %62)
  %64 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %65 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @VMMDEVREQ_GET_MOUSE_STATUS, align 4
  %67 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %68 = call i8* @vbg_req_alloc(i32 1, i32 %66, i32 %67)
  %69 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %70 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %72 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %97

76:                                               ; preds = %2
  %77 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %78 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %84 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %89 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %94 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %87, %82, %76, %2
  br label %152

98:                                               ; preds = %92
  %99 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %100 = call i32 @vbg_query_host_version(%struct.vbg_dev* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %152

104:                                              ; preds = %98
  %105 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %106 = call i32 @vbg_report_guest_info(%struct.vbg_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @vbg_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %152

112:                                              ; preds = %104
  %113 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %114 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %115 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @vbg_reset_host_event_filter(%struct.vbg_dev* %113, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @vbg_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %152

123:                                              ; preds = %112
  %124 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %125 = call i32 @vbg_reset_host_capabilities(%struct.vbg_dev* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @vbg_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %152

131:                                              ; preds = %123
  %132 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %133 = call i32 @vbg_core_set_mouse_status(%struct.vbg_dev* %132, i32 0)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @vbg_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %152

139:                                              ; preds = %131
  %140 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %141 = call i32 @vbg_guest_mappings_init(%struct.vbg_dev* %140)
  %142 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %143 = call i32 @vbg_heartbeat_init(%struct.vbg_dev* %142)
  %144 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %145 = call i32 @vbg_report_driver_status(%struct.vbg_dev* %144, i32 1)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @vbg_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %148, %139
  store i32 0, i32* %3, align 4
  br label %176

152:                                              ; preds = %136, %128, %120, %109, %103, %97
  %153 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %154 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @vbg_req_free(i8* %155, i32 1)
  %157 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %158 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @vbg_req_free(i8* %159, i32 1)
  %161 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %162 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @vbg_req_free(i8* %163, i32 1)
  %165 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %166 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @vbg_req_free(i8* %168, i32 1)
  %170 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %171 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @vbg_req_free(i8* %173, i32 1)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %152, %151
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @vbg_query_host_version(%struct.vbg_dev*) #1

declare dso_local i32 @vbg_report_guest_info(%struct.vbg_dev*) #1

declare dso_local i32 @vbg_err(i8*, i32) #1

declare dso_local i32 @vbg_reset_host_event_filter(%struct.vbg_dev*, i32) #1

declare dso_local i32 @vbg_reset_host_capabilities(%struct.vbg_dev*) #1

declare dso_local i32 @vbg_core_set_mouse_status(%struct.vbg_dev*, i32) #1

declare dso_local i32 @vbg_guest_mappings_init(%struct.vbg_dev*) #1

declare dso_local i32 @vbg_heartbeat_init(%struct.vbg_dev*) #1

declare dso_local i32 @vbg_report_driver_status(%struct.vbg_dev*, i32) #1

declare dso_local i32 @vbg_req_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
