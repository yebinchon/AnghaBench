; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_parse_mgmt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_parse_mgmt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.fwtty_peer = type { i64, i32, i32, i32, i32, %struct.fwtty_port*, %struct.TYPE_4__ }
%struct.fwtty_port = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fwserial_mgmt_pkt = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@fwserial_mgmt_addr_handler = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@RCODE_DATA_ERROR = common dso_local global i32 0, align 4
@FWPS_GONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"peer already removed\0A\00", align 1
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mgmt: hdr.code: %04hx\0A\00", align 1
@FWSC_CODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"plug req: busy\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@fwserial_handle_plug_req = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4
@FWPS_PLUG_PENDING = common dso_local global i64 0, align 8
@FWSC_RSP_NACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"NACK plug rsp\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unplug req: busy\0A\00", align 1
@fwserial_handle_unplug_req = common dso_local global i32 0, align 4
@FWPS_UNPLUG_PENDING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"NACK unplug?\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unknown mgmt code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*, i64, i64)* @fwserial_parse_mgmt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_parse_mgmt_write(%struct.fwtty_peer* %0, %struct.fwserial_mgmt_pkt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwtty_peer*, align 8
  %7 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fwtty_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwtty_port*, align 8
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %6, align 8
  store %struct.fwserial_mgmt_pkt* %1, %struct.fwserial_mgmt_pkt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.fwtty_port* null, %struct.fwtty_port** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fwserial_mgmt_addr_handler, i32 0, i32 0), align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %206

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %25 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %23, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %34 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mgmt_pkt_expected_len(i32 %36)
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %22
  %40 = load i32, i32* @RCODE_DATA_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %206

41:                                               ; preds = %31
  %42 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %43 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %46 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FWPS_GONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %52 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %51, i32 0, i32 2
  %53 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %55 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %57, i32* %5, align 4
  br label %206

58:                                               ; preds = %41
  %59 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %61 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %60, i32 0, i32 2
  %62 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %63 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fwtty_dbg(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %68 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be16_to_cpu(i32 %70)
  %72 = load i32, i32* @FWSC_CODE_MASK, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %184 [
    i32 131, label %74
    i32 130, label %99
    i32 129, label %140
    i32 128, label %159
  ]

74:                                               ; preds = %58
  %75 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %76 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %75, i32 0, i32 3
  %77 = call i32 @work_pending(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %81 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %80, i32 0, i32 2
  %82 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %83, i32* %12, align 4
  br label %98

84:                                               ; preds = %74
  %85 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %86 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %89 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @fwserial_handle_plug_req, align 4
  %92 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %93 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @system_unbound_wq, align 4
  %95 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %96 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %95, i32 0, i32 3
  %97 = call i32 @queue_work(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %84, %79
  br label %194

99:                                               ; preds = %58
  %100 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %101 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FWPS_PLUG_PENDING, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %106, i32* %12, align 4
  br label %139

107:                                              ; preds = %99
  %108 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %109 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be16_to_cpu(i32 %111)
  %113 = load i32, i32* @FWSC_RSP_NACK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %118 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %117, i32 0, i32 2
  %119 = call i32 @fwtty_notice(i32* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %121 = call %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %120)
  store %struct.fwtty_port* %121, %struct.fwtty_port** %10, align 8
  br label %138

122:                                              ; preds = %107
  %123 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %124 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %123, i32 0, i32 5
  %125 = load %struct.fwtty_port*, %struct.fwtty_port** %124, align 8
  store %struct.fwtty_port* %125, %struct.fwtty_port** %13, align 8
  %126 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %127 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %128 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %127, i32 0, i32 1
  %129 = call i32 @fwserial_virt_plug_complete(%struct.fwtty_peer* %126, i32* %128)
  %130 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %131 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %130, i32 0, i32 1
  %132 = call i32 @spin_unlock_bh(i32* %131)
  %133 = load %struct.fwtty_port*, %struct.fwtty_port** %13, align 8
  %134 = call i32 @fwtty_write_port_status(%struct.fwtty_port* %133)
  %135 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %136 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %135, i32 0, i32 1
  %137 = call i32 @spin_lock_bh(i32* %136)
  br label %138

138:                                              ; preds = %122, %116
  br label %139

139:                                              ; preds = %138, %105
  br label %194

140:                                              ; preds = %58
  %141 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %142 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %141, i32 0, i32 3
  %143 = call i32 @work_pending(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %147 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %146, i32 0, i32 2
  %148 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %149, i32* %12, align 4
  br label %158

150:                                              ; preds = %140
  %151 = load i32, i32* @fwserial_handle_unplug_req, align 4
  %152 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %153 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @system_unbound_wq, align 4
  %155 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %156 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %155, i32 0, i32 3
  %157 = call i32 @queue_work(i32 %154, i32* %156)
  br label %158

158:                                              ; preds = %150, %145
  br label %194

159:                                              ; preds = %58
  %160 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %161 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @FWPS_UNPLUG_PENDING, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %166, i32* %12, align 4
  br label %183

167:                                              ; preds = %159
  %168 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %169 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be16_to_cpu(i32 %171)
  %173 = load i32, i32* @FWSC_RSP_NACK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %178 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %177, i32 0, i32 2
  %179 = call i32 @fwtty_notice(i32* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %167
  %181 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %182 = call %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %181)
  store %struct.fwtty_port* %182, %struct.fwtty_port** %10, align 8
  store i32 1, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %165
  br label %194

184:                                              ; preds = %58
  %185 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %186 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %185, i32 0, i32 2
  %187 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %7, align 8
  %188 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @be16_to_cpu(i32 %190)
  %192 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @RCODE_DATA_ERROR, align 4
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %184, %183, %158, %139, %98
  %195 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %196 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %195, i32 0, i32 1
  %197 = call i32 @spin_unlock_bh(i32* %196)
  %198 = load %struct.fwtty_port*, %struct.fwtty_port** %10, align 8
  %199 = icmp ne %struct.fwtty_port* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.fwtty_port*, %struct.fwtty_port** %10, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @fwserial_release_port(%struct.fwtty_port* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %50, %39, %20
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @mgmt_pkt_expected_len(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fwtty_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_dbg(i32*, i8*, i32) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @fwtty_notice(i32*, i8*) #1

declare dso_local %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer*) #1

declare dso_local i32 @fwserial_virt_plug_complete(%struct.fwtty_peer*, i32*) #1

declare dso_local i32 @fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
