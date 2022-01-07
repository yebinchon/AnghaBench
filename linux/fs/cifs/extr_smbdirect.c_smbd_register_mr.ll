; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_register_mr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_register_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_mr = type { i32, i32, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.ib_reg_wr }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_reg_wr = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_6__*, i32 }
%struct.smbd_connection = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.page = type { i32 }

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"num_pages=%d max_frmr_depth=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"get_mr returning NULL\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"num_pages=0x%x offset=0x%x tailsz=0x%x\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ib_dma_map_sg num_pages=%x dir=%x rc=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ib_map_mr_sg failed rc = %d num_pages = %x\0A\00", align 1
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@register_mr_done = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ib_post_send failed rc=%x reg_wr->key=%x\0A\00", align 1
@MR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smbd_mr* @smbd_register_mr(%struct.smbd_connection* %0, %struct.page** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.smbd_mr*, align 8
  %9 = alloca %struct.smbd_connection*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.smbd_mr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_reg_wr*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %9, align 8
  store %struct.page** %1, %struct.page*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %23 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = load i32, i32* @ERR, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %30 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  store %struct.smbd_mr* null, %struct.smbd_mr** %8, align 8
  br label %282

33:                                               ; preds = %7
  %34 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %35 = call %struct.smbd_mr* @get_mr(%struct.smbd_connection* %34)
  store %struct.smbd_mr* %35, %struct.smbd_mr** %16, align 8
  %36 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %37 = icmp ne %struct.smbd_mr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ERR, align 4
  %40 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.smbd_mr* null, %struct.smbd_mr** %8, align 8
  br label %282

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %44 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %47 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %49 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @sg_init_table(i32* %50, i32 %51)
  %53 = load i32, i32* @INFO, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %71

60:                                               ; preds = %41
  %61 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %62 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.page**, %struct.page*** %10, align 8
  %66 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 0
  %67 = load %struct.page*, %struct.page** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @sg_set_page(i32* %64, %struct.page* %67, i32 %68, i32 %69)
  br label %126

71:                                               ; preds = %41
  %72 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %73 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.page**, %struct.page*** %10, align 8
  %77 = getelementptr inbounds %struct.page*, %struct.page** %76, i64 0
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @sg_set_page(i32* %75, %struct.page* %78, i32 %81, i32 %82)
  store i32 1, i32* %18, align 4
  br label %84

84:                                               ; preds = %89, %71
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %91 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.page**, %struct.page*** %10, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.page*, %struct.page** %96, i64 %98
  %100 = load %struct.page*, %struct.page** %99, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = call i32 @sg_set_page(i32* %95, %struct.page* %100, i32 %101, i32 0)
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %107 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load %struct.page**, %struct.page*** %10, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.page*, %struct.page** %112, i64 %114
  %116 = load %struct.page*, %struct.page** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i32, i32* %13, align 4
  br label %123

121:                                              ; preds = %105
  %122 = load i32, i32* @PAGE_SIZE, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 @sg_set_page(i32* %111, %struct.page* %116, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %123, %60
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %137 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %139 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %144 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @ib_dma_map_sg(i32 %142, i32* %145, i32 %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %133
  %152 = load i32, i32* @ERR, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %17, align 4
  %156 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  br label %267

157:                                              ; preds = %133
  %158 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %159 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %158, i32 0, i32 5
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %162 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = call i32 @ib_map_mr_sg(%struct.TYPE_8__* %160, i32* %163, i32 %164, i32* null, i32 %165)
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %157
  %171 = load i32, i32* @ERR, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %173)
  br label %251

175:                                              ; preds = %157
  %176 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %177 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %176, i32 0, i32 5
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %180 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %179, i32 0, i32 5
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ib_inc_rkey(i32 %183)
  %185 = call i32 @ib_update_fast_reg_key(%struct.TYPE_8__* %178, i32 %184)
  %186 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %187 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %186, i32 0, i32 7
  store %struct.ib_reg_wr* %187, %struct.ib_reg_wr** %20, align 8
  %188 = load i32, i32* @IB_WR_REG_MR, align 4
  %189 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %190 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* @register_mr_done, align 4
  %193 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %194 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %197 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %196, i32 0, i32 6
  %198 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %199 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  store %struct.TYPE_6__* %197, %struct.TYPE_6__** %200, align 8
  %201 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %202 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %205 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %206 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %209 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %208, i32 0, i32 5
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %212 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %211, i32 0, i32 3
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** %212, align 8
  %213 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %214 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %213, i32 0, i32 5
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %219 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %175
  %223 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %224 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %225 = or i32 %223, %224
  br label %228

226:                                              ; preds = %175
  %227 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  br label %228

228:                                              ; preds = %226, %222
  %229 = phi i32 [ %225, %222 ], [ %227, %226 ]
  %230 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %231 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %233 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %232, i32 0, i32 3
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %238 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %237, i32 0, i32 2
  %239 = call i32 @ib_post_send(i32 %236, %struct.TYPE_9__* %238, i32* null)
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %17, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %228
  %243 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  store %struct.smbd_mr* %243, %struct.smbd_mr** %8, align 8
  br label %282

244:                                              ; preds = %228
  %245 = load i32, i32* @ERR, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %20, align 8
  %248 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %245, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %244, %170
  %252 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %253 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %252, i32 0, i32 3
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %258 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %261 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %264 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @ib_dma_unmap_sg(i32 %256, i32* %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %251, %151
  %268 = load i32, i32* @MR_ERROR, align 4
  %269 = load %struct.smbd_mr*, %struct.smbd_mr** %16, align 8
  %270 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %272 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %271, i32 0, i32 2
  %273 = call i64 @atomic_dec_and_test(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %277 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %276, i32 0, i32 1
  %278 = call i32 @wake_up(i32* %277)
  br label %279

279:                                              ; preds = %275, %267
  %280 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %281 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %280)
  store %struct.smbd_mr* null, %struct.smbd_mr** %8, align 8
  br label %282

282:                                              ; preds = %279, %242, %38, %26
  %283 = load %struct.smbd_mr*, %struct.smbd_mr** %8, align 8
  ret %struct.smbd_mr* %283
}

declare dso_local i32 @log_rdma_mr(i32, i8*, ...) #1

declare dso_local %struct.smbd_mr* @get_mr(%struct.smbd_connection*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @ib_dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @ib_map_mr_sg(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
