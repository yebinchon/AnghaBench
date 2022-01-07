; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.cpl_act_establish = type { i32, i32, i32, i32 }
%struct.cxgb4_lld_info = type { i32*, %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NO conn. for atid %u, cdev 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"atid 0x%x, tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\0A\00", align 1
@CTPF_HAS_TID = common dso_local global i32 0, align 4
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"csk 0x%p,%u,0x%lx,%u, got EST.\0A\00", align 1
@RCV_BUFSIZ_MASK = common dso_local global i32 0, align 4
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"csk 0x%p, mss_idx %u, advmss %u.\0A\00", align 1
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_act_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_act_establish(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_act_establish*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgb4_lld_info*, align 8
  %11 = alloca %struct.tid_info*, align 8
  %12 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cpl_act_establish*
  store %struct.cpl_act_establish* %16, %struct.cpl_act_establish** %6, align 8
  %17 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %18 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i16 @ntohs(i32 %19)
  store i16 %20, i16* %7, align 2
  %21 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %22 = call i32 @GET_TID(%struct.cpl_act_establish* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %24 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = call i32 @TID_TID_G(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %29 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %28)
  store %struct.cxgb4_lld_info* %29, %struct.cxgb4_lld_info** %10, align 8
  %30 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %31 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %30, i32 0, i32 1
  %32 = load %struct.tid_info*, %struct.tid_info** %31, align 8
  store %struct.tid_info* %32, %struct.tid_info** %11, align 8
  %33 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %34 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.cxgbi_sock* @lookup_atid(%struct.tid_info* %37, i32 %38)
  store %struct.cxgbi_sock* %39, %struct.cxgbi_sock** %5, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = icmp ne %struct.cxgbi_sock* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %49 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.cxgbi_device* %48)
  br label %245

50:                                               ; preds = %2
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %63 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %66 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %69 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %57, %struct.cxgbi_sock* %58, i64 %61, i32 %64, i32 %67, i32 %70)
  br label %245

72:                                               ; preds = %50
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %74 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %73, i32 0, i32 14
  %75 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %76 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %75, i32 0, i32 13
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @pr_info_ipaddr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32* %74, i32* %76, i32 %77, i32 %78, %struct.cxgbi_sock* %79, i64 %82, i32 %85, i32 %86)
  %88 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %89 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @module_put(i32 %90)
  %92 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %93 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %92)
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %96 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %98 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %97, i32 0, i32 1
  %99 = load %struct.tid_info*, %struct.tid_info** %98, align 8
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %103 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cxgb4_insert_tid(%struct.tid_info* %99, %struct.cxgbi_sock* %100, i32 %101, i32 %104)
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %107 = load i32, i32* @CTPF_HAS_TID, align 4
  %108 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %106, i32 %107)
  %109 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %110 = call i32 @free_atid(%struct.cxgbi_sock* %109)
  %111 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %112 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %111, i32 0, i32 5
  %113 = call i32 @spin_lock_bh(i32* %112)
  %114 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %115 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %72
  %123 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %124 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %125 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %128 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %131 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %123, i64 %126, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %122, %72
  %135 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %136 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %142 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %141, i32 0, i32 10
  %143 = call i32 @del_timer(%struct.TYPE_2__* %142)
  %144 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %145 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %144, i32 0, i32 10
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %140, %134
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %150 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  %151 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %152 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %151, i32 0, i32 7
  store i32 %148, i32* %152, align 4
  %153 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %154 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %153, i32 0, i32 9
  store i32 %148, i32* %154, align 4
  %155 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %156 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RCV_BUFSIZ_MASK, align 4
  %159 = shl i32 %158, 10
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %147
  %162 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %163 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RCV_BUFSIZ_MASK, align 4
  %166 = shl i32 %165, 10
  %167 = sub nsw i32 %164, %166
  %168 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %169 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %161, %147
  %173 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %174 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i16, i16* %7, align 2
  %177 = call i64 @TCPOPT_MSS_G(i16 zeroext %176)
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 40
  %181 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %182 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load i16, i16* %7, align 2
  %184 = call i64 @TCPOPT_TSTAMP_G(i16 zeroext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %172
  %187 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %188 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 12
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %186, %172
  %192 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %193 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 128
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %198 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %197, i32 0, i32 4
  store i32 128, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %191
  %200 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %201 = shl i32 1, %200
  %202 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %203 = shl i32 1, %202
  %204 = or i32 %201, %203
  %205 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %206 = load i16, i16* %7, align 2
  %207 = call i64 @TCPOPT_MSS_G(i16 zeroext %206)
  %208 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %209 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @log_debug(i32 %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_sock* %205, i64 %207, i32 %210)
  %212 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %213 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %214 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ntohl(i32 %215)
  %217 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %218 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call zeroext i16 @ntohs(i32 %219)
  %221 = call i32 @cxgbi_sock_established(%struct.cxgbi_sock* %212, i32 %216, i16 zeroext %220)
  %222 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %223 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %224 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %222, i32 %223)
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %199
  %228 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %229 = call i32 @send_abort_req(%struct.cxgbi_sock* %228)
  br label %241

230:                                              ; preds = %199
  %231 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %232 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %231, i32 0, i32 6
  %233 = call i64 @skb_queue_len(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %237 = call i32 @push_tx_frames(%struct.cxgbi_sock* %236, i32 0)
  br label %238

238:                                              ; preds = %235, %230
  %239 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %240 = call i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock* %239)
  br label %241

241:                                              ; preds = %238, %227
  %242 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %243 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %242, i32 0, i32 5
  %244 = call i32 @spin_unlock_bh(i32* %243)
  br label %245

245:                                              ; preds = %241, %56, %46
  %246 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %247 = call i32 @__kfree_skb(%struct.sk_buff* %246)
  ret void
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_establish*) #1

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.cxgbi_sock* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pr_info_ipaddr(i8*, i32*, i32*, i32, i32, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgb4_insert_tid(%struct.tid_info*, %struct.cxgbi_sock*, i32, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @free_atid(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_2__*) #1

declare dso_local i64 @TCPOPT_MSS_G(i16 zeroext) #1

declare dso_local i64 @TCPOPT_TSTAMP_G(i16 zeroext) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32) #1

declare dso_local i32 @cxgbi_sock_established(%struct.cxgbi_sock*, i32, i16 zeroext) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_req(%struct.cxgbi_sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @push_tx_frames(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
