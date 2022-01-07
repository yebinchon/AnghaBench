; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_adapter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_adapter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"adapter_idle: flags 0x%x, state 0x%hx\0A\00", align 1
@WAIT_CONNECTION = common dso_local global i32 0, align 4
@TRANS_EVENT = common dso_local global i32 0, align 4
@CFG_SLEEPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adapter_idle, disc_rec: flags 0x%x\0A\00", align 1
@SCHEDULE_DISCONNECT = common dso_local global i32 0, align 4
@DISCONNECT_SCHEDULED = common dso_local global i32 0, align 4
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@WAIT_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"adapter_idle, disc: flags 0x%x, state 0x%hx\0A\00", align 1
@PREP_FOR_SUSPEND_PENDING = common dso_local global i32 0, align 4
@PRESERVE_FLAG_FIELDS = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"adapter_idle, wait: flags 0x%x, state 0x%hx\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"adapter_idle, disconnected: flags 0x%x, state 0x%hx\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"adapter_idle: in invalid state %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"adapter_idle: flags 0x%x, state 0x%hx, acr_flags 0x%x, acr_state 0x%hx\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Leaving adapter_idle: flags 0x%x, state 0x%hx, new_state 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*)* @ibmvscsis_adapter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_adapter_idle(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %5, i32 0, i32 6
  %7 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WAIT_CONNECTION, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TRANS_EVENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %189 [
    i32 129, label %31
    i32 130, label %53
    i32 132, label %62
    i32 128, label %100
    i32 131, label %173
  ]

31:                                               ; preds = %27
  %32 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %33 = call i32 @ibmvscsis_free_command_q(%struct.scsi_info* %32)
  %34 = call i32 (...) @dma_rmb()
  %35 = call i32 (...) @isync()
  %36 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CFG_SLEEPING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32, i32* @CFG_SLEEPING, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 11
  %51 = call i32 @complete(i32* %50)
  br label %52

52:                                               ; preds = %42, %31
  br label %196

53:                                               ; preds = %27
  %54 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %55 = call i32 @ibmvscsis_reset_queue(%struct.scsi_info* %54)
  %56 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %57 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %56, i32 0, i32 6
  %58 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %196

62:                                               ; preds = %27
  %63 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %64 = call i32 @ibmvscsis_free_command_q(%struct.scsi_info* %63)
  %65 = load i32, i32* @SCHEDULE_DISCONNECT, align 4
  %66 = load i32, i32* @DISCONNECT_SCHEDULED, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %70 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %74 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %75 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %79 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %62
  %84 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %85 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %84, i32 0, i32 1
  store i32 131, i32* %85, align 4
  br label %90

86:                                               ; preds = %62
  %87 = load i32, i32* @WAIT_ENABLED, align 4
  %88 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 6
  %93 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %94 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %97 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %98)
  br label %196

100:                                              ; preds = %27
  %101 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %102 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %105 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %104, i32 0, i32 8
  store i32 0, i32* %105, align 8
  %106 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %106, i32 0, i32 7
  store i32 0, i32* %107, align 4
  %108 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %109 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PREP_FOR_SUSPEND_PENDING, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %100
  %115 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %116 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %119 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %121 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %120, i32 0, i32 2
  store i32 0, i32* %121, align 8
  %122 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %123 = call i64 @ibmvscsis_ready_for_suspend(%struct.scsi_info* %122, i32 1)
  store i64 %123, i64* %4, align 8
  %124 = load i32, i32* @DISCONNECT_SCHEDULED, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %127 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i64, i64* %4, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %114
  br label %196

133:                                              ; preds = %114
  br label %161

134:                                              ; preds = %100
  %135 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %136 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TRANS_EVENT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load i32, i32* @WAIT_CONNECTION, align 4
  %143 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %144 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @PRESERVE_FLAG_FIELDS, align 4
  %146 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %147 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %160

150:                                              ; preds = %134
  %151 = load i32, i32* @CONNECTED, align 4
  %152 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %153 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @DISCONNECT_SCHEDULED, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %157 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %150, %141
  br label %161

161:                                              ; preds = %160, %133
  %162 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %163 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %162, i32 0, i32 6
  %164 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %165 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %168 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %169)
  %171 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %172 = call i32 @ibmvscsis_poll_cmd_q(%struct.scsi_info* %171)
  br label %196

173:                                              ; preds = %27
  %174 = load i32, i32* @DISCONNECT_SCHEDULED, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %177 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %181 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %180, i32 0, i32 6
  %182 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %183 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %186 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %181, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %184, i32 %187)
  br label %196

189:                                              ; preds = %27
  %190 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %191 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %190, i32 0, i32 6
  %192 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %193 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %189, %173, %161, %132, %90, %53, %52
  %197 = load i32, i32* %3, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %201 = call i32 @ibmvscsis_free_cmd_qs(%struct.scsi_info* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %204 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %239

207:                                              ; preds = %202
  %208 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %209 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %212 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %216 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %217 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %215, i64 %218, i32 0)
  %220 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %221 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %220, i32 0, i32 3
  store i64 0, i64* %221, align 8
  %222 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %223 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %222, i32 0, i32 4
  store i32 0, i32* %223, align 8
  %224 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %225 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %224, i32 0, i32 6
  %226 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %227 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %230 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %233 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %236 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %225, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %228, i32 %231, i32 %234, i64 %237)
  br label %239

239:                                              ; preds = %207, %202
  %240 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %241 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %240, i32 0, i32 6
  %242 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %243 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %246 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %249 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %241, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %244, i32 %247, i32 %250)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @ibmvscsis_free_command_q(%struct.scsi_info*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ibmvscsis_reset_queue(%struct.scsi_info*) #1

declare dso_local i64 @ibmvscsis_ready_for_suspend(%struct.scsi_info*, i32) #1

declare dso_local i32 @ibmvscsis_poll_cmd_q(%struct.scsi_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ibmvscsis_free_cmd_qs(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
