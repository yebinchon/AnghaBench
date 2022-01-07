; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_raid_request_synchronous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_raid_request_synchronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.pqi_iu_header = type { i64, i32 }
%struct.pqi_raid_error_info = type { i32 }
%struct.pqi_io_request = type { %struct.pqi_iu_header*, i32*, i32, %struct.pqi_raid_error_info*, i32 }
%struct.pqi_raid_path_request = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@PQI_SYNC_FLAGS_INTERRUPTABLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PQI_REQUEST_IU_RAID_PATH_IO = common dso_local global i64 0, align 8
@PQI_REQUEST_HEADER_LENGTH = common dso_local global i64 0, align 8
@pqi_raid_synchronous_complete = common dso_local global i32 0, align 4
@PQI_DEFAULT_QUEUE_GROUP = common dso_local global i64 0, align 8
@RAID_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"command timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_iu_header*, i32, %struct.pqi_raid_error_info*, i64)* @pqi_submit_raid_request_synchronous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info* %0, %struct.pqi_iu_header* %1, i32 %2, %struct.pqi_raid_error_info* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pqi_ctrl_info*, align 8
  %8 = alloca %struct.pqi_iu_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pqi_raid_error_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pqi_io_request*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %7, align 8
  store %struct.pqi_iu_header* %1, %struct.pqi_iu_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pqi_raid_error_info* %3, %struct.pqi_raid_error_info** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @wait, align 4
  %18 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PQI_SYNC_FLAGS_INTERRUPTABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 0
  %26 = call i64 @down_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %201

31:                                               ; preds = %23
  br label %67

32:                                               ; preds = %5
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @NO_TIMEOUT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %38 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %37, i32 0, i32 0
  %39 = call i32 @down(i32* %38)
  br label %66

40:                                               ; preds = %32
  %41 = load i64, i64* @jiffies, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %43 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @msecs_to_jiffies(i64 %44)
  %46 = call i64 @down_timeout(i32* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %201

51:                                               ; preds = %40
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %14, align 8
  %54 = sub i64 %52, %53
  %55 = call i64 @jiffies_to_msecs(i64 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %196

62:                                               ; preds = %51
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %62, %36
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %69 = call i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info* %68)
  %70 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @pqi_wait_if_ctrl_blocked(%struct.pqi_ctrl_info* %70, i64 %71)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %77 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %76)
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %196

80:                                               ; preds = %67
  %81 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %82 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %86 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %85)
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %196

89:                                               ; preds = %80
  %90 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %91 = call %struct.pqi_io_request* @pqi_alloc_io_request(%struct.pqi_ctrl_info* %90)
  store %struct.pqi_io_request* %91, %struct.pqi_io_request** %13, align 8
  %92 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %93 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %96 = bitcast %struct.pqi_iu_header* %95 to %struct.pqi_raid_path_request*
  %97 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %96, i32 0, i32 0
  %98 = call i32 @put_unaligned_le16(i32 %94, i32* %97)
  %99 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %100 = getelementptr inbounds %struct.pqi_iu_header, %struct.pqi_iu_header* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PQI_REQUEST_IU_RAID_PATH_IO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %89
  %105 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %106 = bitcast %struct.pqi_iu_header* %105 to %struct.pqi_raid_path_request*
  %107 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %110 = bitcast %struct.pqi_iu_header* %109 to %struct.pqi_raid_path_request*
  %111 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %89
  %113 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %114 = getelementptr inbounds %struct.pqi_iu_header, %struct.pqi_iu_header* %113, i32 0, i32 1
  %115 = call i64 @get_unaligned_le16(i32* %114)
  %116 = load i64, i64* @PQI_REQUEST_HEADER_LENGTH, align 8
  %117 = add i64 %115, %116
  store i64 %117, i64* %16, align 8
  %118 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %119 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %118, i32 0, i32 3
  %120 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %119, align 8
  %121 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %8, align 8
  %122 = load i64, i64* %16, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(%struct.pqi_raid_error_info* %120, %struct.pqi_iu_header* %121, i32 %123)
  %125 = load i32, i32* @pqi_raid_synchronous_complete, align 4
  %126 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %127 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %129 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %128, i32 0, i32 1
  store i32* @wait, i32** %129, align 8
  %130 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %131 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %132 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @PQI_DEFAULT_QUEUE_GROUP, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* @RAID_PATH, align 4
  %137 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %138 = call i32 @pqi_start_io(%struct.pqi_ctrl_info* %130, i32* %135, i32 %136, %struct.pqi_io_request* %137)
  %139 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %140 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %139)
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* @NO_TIMEOUT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %112
  %145 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %146 = call i32 @pqi_wait_for_completion_io(%struct.pqi_ctrl_info* %145, i32* @wait)
  br label %161

147:                                              ; preds = %112
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @msecs_to_jiffies(i64 %148)
  %150 = call i32 @wait_for_completion_io_timeout(i32* @wait, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %154 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = call i32 @dev_warn(i32* %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @ETIMEDOUT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %152, %147
  br label %161

161:                                              ; preds = %160, %144
  %162 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %10, align 8
  %163 = icmp ne %struct.pqi_raid_error_info* %162, null
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %166 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %165, i32 0, i32 0
  %167 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %166, align 8
  %168 = icmp ne %struct.pqi_iu_header* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %10, align 8
  %171 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %172 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %171, i32 0, i32 0
  %173 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %172, align 8
  %174 = call i32 @memcpy(%struct.pqi_raid_error_info* %170, %struct.pqi_iu_header* %173, i32 4)
  br label %178

175:                                              ; preds = %164
  %176 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %10, align 8
  %177 = call i32 @memset(%struct.pqi_raid_error_info* %176, i32 0, i32 4)
  br label %178

178:                                              ; preds = %175, %169
  br label %193

179:                                              ; preds = %161
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %184 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %183, i32 0, i32 0
  %185 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %184, align 8
  %186 = icmp ne %struct.pqi_iu_header* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %189 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %188, i32 0, i32 0
  %190 = load %struct.pqi_iu_header*, %struct.pqi_iu_header** %189, align 8
  %191 = call i32 @pqi_process_raid_io_error_synchronous(%struct.pqi_iu_header* %190)
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %187, %182, %179
  br label %193

193:                                              ; preds = %192, %178
  %194 = load %struct.pqi_io_request*, %struct.pqi_io_request** %13, align 8
  %195 = call i32 @pqi_free_io_request(%struct.pqi_io_request* %194)
  br label %196

196:                                              ; preds = %193, %84, %75, %59
  %197 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %198 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %197, i32 0, i32 0
  %199 = call i32 @up(i32* %198)
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %196, %48, %28
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @down_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_wait_if_ctrl_blocked(%struct.pqi_ctrl_info*, i64) #1

declare dso_local i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local %struct.pqi_io_request* @pqi_alloc_io_request(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @memcpy(%struct.pqi_raid_error_info*, %struct.pqi_iu_header*, i32) #1

declare dso_local i32 @pqi_start_io(%struct.pqi_ctrl_info*, i32*, i32, %struct.pqi_io_request*) #1

declare dso_local i32 @pqi_wait_for_completion_io(%struct.pqi_ctrl_info*, i32*) #1

declare dso_local i32 @wait_for_completion_io_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @memset(%struct.pqi_raid_error_info*, i32, i32) #1

declare dso_local i32 @pqi_process_raid_io_error_synchronous(%struct.pqi_iu_header*) #1

declare dso_local i32 @pqi_free_io_request(%struct.pqi_io_request*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
