; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bfa_flash_s = type { i64, i64, i64, i64, i32, i64, i32 }
%union.anon = type { %struct.bfi_flash_query_rsp_s* }
%struct.bfi_flash_query_rsp_s = type { i64 }
%struct.bfa_flash_attr_s = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.bfi_flash_erase_rsp_s = type { i64 }
%struct.bfi_flash_write_rsp_s = type { i64 }
%struct.bfi_flash_read_rsp_s = type { i64, i64 }
%struct.bfi_flash_event_s = type { i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_BAD_FWCFG = common dso_local global i64 0, align 8
@BFA_IOC_AEN_FWCFG_ERROR = common dso_local global i32 0, align 4
@BFA_STATUS_INVALID_VENDOR = common dso_local global i64 0, align 8
@BFA_IOC_AEN_INVALID_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg_s*)* @bfa_flash_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_intr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_flash_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfa_flash_attr_s*, align 8
  %10 = alloca %struct.bfa_flash_attr_s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.bfa_flash_s*
  store %struct.bfa_flash_s* %14, %struct.bfa_flash_s** %5, align 8
  %15 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %16 = bitcast %union.anon* %7 to %struct.bfi_mbmsg_s**
  store %struct.bfi_mbmsg_s* %15, %struct.bfi_mbmsg_s** %16, align 8
  %17 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %18 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bfa_trc(%struct.bfa_flash_s* %17, i64 %21)
  %23 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 131
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %35 = call i32 @bfa_trc(%struct.bfa_flash_s* %34, i64 39321)
  br label %356

36:                                               ; preds = %27, %2
  %37 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %38 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  switch i64 %40, label %354 [
    i64 130, label %41
    i64 132, label %194
    i64 128, label %209
    i64 129, label %242
    i64 133, label %313
    i64 131, label %314
  ]

41:                                               ; preds = %36
  %42 = bitcast %union.anon* %7 to %struct.bfi_flash_query_rsp_s**
  %43 = load %struct.bfi_flash_query_rsp_s*, %struct.bfi_flash_query_rsp_s** %42, align 8
  %44 = getelementptr inbounds %struct.bfi_flash_query_rsp_s, %struct.bfi_flash_query_rsp_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @be32_to_cpu(i64 %45)
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* %6, align 8
  %48 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @bfa_trc(%struct.bfa_flash_s* %48, i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @BFA_STATUS_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %188

54:                                               ; preds = %41
  %55 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.bfa_flash_attr_s*
  store %struct.bfa_flash_attr_s* %58, %struct.bfa_flash_attr_s** %9, align 8
  %59 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.bfa_flash_attr_s*
  store %struct.bfa_flash_attr_s* %62, %struct.bfa_flash_attr_s** %10, align 8
  %63 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %64 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @be32_to_cpu(i64 %65)
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %69 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %71 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @be32_to_cpu(i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %76 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %78 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %79 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @bfa_trc(%struct.bfa_flash_s* %77, i64 %80)
  %82 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %83 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %84 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @bfa_trc(%struct.bfa_flash_s* %82, i64 %85)
  store i64 0, i64* %8, align 8
  br label %87

87:                                               ; preds = %184, %54
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %90 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %187

93:                                               ; preds = %87
  %94 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %95 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @be32_to_cpu(i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %104 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i64 %102, i64* %108, align 8
  %109 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %110 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @be32_to_cpu(i64 %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %119 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i64 %117, i64* %123, align 8
  %124 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %125 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @be32_to_cpu(i64 %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %134 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i64 %132, i64* %138, align 8
  %139 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %140 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @be32_to_cpu(i64 %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %149 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  store i64 %147, i64* %153, align 8
  %154 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %155 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @be32_to_cpu(i64 %160)
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %164 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  store i64 %162, i64* %168, align 8
  %169 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %10, align 8
  %170 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @be32_to_cpu(i64 %175)
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.bfa_flash_attr_s*, %struct.bfa_flash_attr_s** %9, align 8
  %179 = getelementptr inbounds %struct.bfa_flash_attr_s, %struct.bfa_flash_attr_s* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  store i64 %177, i64* %183, align 8
  br label %184

184:                                              ; preds = %93
  %185 = load i64, i64* %8, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %8, align 8
  br label %87

187:                                              ; preds = %87
  br label %188

188:                                              ; preds = %187, %41
  %189 = load i64, i64* %6, align 8
  %190 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %191 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %193 = call i32 @bfa_flash_cb(%struct.bfa_flash_s* %192)
  br label %356

194:                                              ; preds = %36
  %195 = bitcast %union.anon* %7 to %struct.bfi_flash_erase_rsp_s**
  %196 = load %struct.bfi_flash_erase_rsp_s*, %struct.bfi_flash_erase_rsp_s** %195, align 8
  %197 = getelementptr inbounds %struct.bfi_flash_erase_rsp_s, %struct.bfi_flash_erase_rsp_s* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i8* @be32_to_cpu(i64 %198)
  %200 = ptrtoint i8* %199 to i64
  store i64 %200, i64* %6, align 8
  %201 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %202 = load i64, i64* %6, align 8
  %203 = call i32 @bfa_trc(%struct.bfa_flash_s* %201, i64 %202)
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %206 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %208 = call i32 @bfa_flash_cb(%struct.bfa_flash_s* %207)
  br label %356

209:                                              ; preds = %36
  %210 = bitcast %union.anon* %7 to %struct.bfi_flash_write_rsp_s**
  %211 = load %struct.bfi_flash_write_rsp_s*, %struct.bfi_flash_write_rsp_s** %210, align 8
  %212 = getelementptr inbounds %struct.bfi_flash_write_rsp_s, %struct.bfi_flash_write_rsp_s* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i8* @be32_to_cpu(i64 %213)
  %215 = ptrtoint i8* %214 to i64
  store i64 %215, i64* %6, align 8
  %216 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = call i32 @bfa_trc(%struct.bfa_flash_s* %216, i64 %217)
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* @BFA_STATUS_OK, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %209
  %223 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %224 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222, %209
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %230 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %232 = call i32 @bfa_flash_cb(%struct.bfa_flash_s* %231)
  br label %241

233:                                              ; preds = %222
  %234 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %235 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %236 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @bfa_trc(%struct.bfa_flash_s* %234, i64 %237)
  %239 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %240 = call i32 @bfa_flash_write_send(%struct.bfa_flash_s* %239)
  br label %241

241:                                              ; preds = %233, %227
  br label %356

242:                                              ; preds = %36
  %243 = bitcast %union.anon* %7 to %struct.bfi_flash_read_rsp_s**
  %244 = load %struct.bfi_flash_read_rsp_s*, %struct.bfi_flash_read_rsp_s** %243, align 8
  %245 = getelementptr inbounds %struct.bfi_flash_read_rsp_s, %struct.bfi_flash_read_rsp_s* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i8* @be32_to_cpu(i64 %246)
  %248 = ptrtoint i8* %247 to i64
  store i64 %248, i64* %6, align 8
  %249 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %250 = load i64, i64* %6, align 8
  %251 = call i32 @bfa_trc(%struct.bfa_flash_s* %249, i64 %250)
  %252 = load i64, i64* %6, align 8
  %253 = load i64, i64* @BFA_STATUS_OK, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %242
  %256 = load i64, i64* %6, align 8
  %257 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %258 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %257, i32 0, i32 1
  store i64 %256, i64* %258, align 8
  %259 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %260 = call i32 @bfa_flash_cb(%struct.bfa_flash_s* %259)
  br label %312

261:                                              ; preds = %242
  %262 = bitcast %union.anon* %7 to %struct.bfi_flash_read_rsp_s**
  %263 = load %struct.bfi_flash_read_rsp_s*, %struct.bfi_flash_read_rsp_s** %262, align 8
  %264 = getelementptr inbounds %struct.bfi_flash_read_rsp_s, %struct.bfi_flash_read_rsp_s* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = call i8* @be32_to_cpu(i64 %265)
  %267 = ptrtoint i8* %266 to i64
  store i64 %267, i64* %11, align 8
  %268 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %269 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %270 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @bfa_trc(%struct.bfa_flash_s* %268, i64 %271)
  %273 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %274 = load i64, i64* %11, align 8
  %275 = call i32 @bfa_trc(%struct.bfa_flash_s* %273, i64 %274)
  %276 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %277 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %280 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %278, %281
  %283 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %284 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %11, align 8
  %287 = call i32 @memcpy(i64 %282, i64 %285, i64 %286)
  %288 = load i64, i64* %11, align 8
  %289 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %290 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = sub i64 %291, %288
  store i64 %292, i64* %290, align 8
  %293 = load i64, i64* %11, align 8
  %294 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %295 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, %293
  store i64 %297, i64* %295, align 8
  %298 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %299 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %261
  %303 = load i64, i64* %6, align 8
  %304 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %305 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %304, i32 0, i32 1
  store i64 %303, i64* %305, align 8
  %306 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %307 = call i32 @bfa_flash_cb(%struct.bfa_flash_s* %306)
  br label %311

308:                                              ; preds = %261
  %309 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %310 = call i32 @bfa_flash_read_send(%struct.bfa_flash_s* %309)
  br label %311

311:                                              ; preds = %308, %302
  br label %312

312:                                              ; preds = %311, %255
  br label %356

313:                                              ; preds = %36
  br label %356

314:                                              ; preds = %36
  %315 = bitcast %union.anon* %7 to %struct.bfi_flash_event_s**
  %316 = load %struct.bfi_flash_event_s*, %struct.bfi_flash_event_s** %315, align 8
  %317 = getelementptr inbounds %struct.bfi_flash_event_s, %struct.bfi_flash_event_s* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i8* @be32_to_cpu(i64 %318)
  %320 = ptrtoint i8* %319 to i64
  store i64 %320, i64* %6, align 8
  %321 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %322 = load i64, i64* %6, align 8
  %323 = call i32 @bfa_trc(%struct.bfa_flash_s* %321, i64 %322)
  %324 = load i64, i64* %6, align 8
  %325 = load i64, i64* @BFA_STATUS_BAD_FWCFG, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %314
  %328 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %329 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @BFA_IOC_AEN_FWCFG_ERROR, align 4
  %332 = call i32 @bfa_ioc_aen_post(i32 %330, i32 %331)
  br label %353

333:                                              ; preds = %314
  %334 = load i64, i64* %6, align 8
  %335 = load i64, i64* @BFA_STATUS_INVALID_VENDOR, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %352

337:                                              ; preds = %333
  %338 = bitcast %union.anon* %7 to %struct.bfi_flash_event_s**
  %339 = load %struct.bfi_flash_event_s*, %struct.bfi_flash_event_s** %338, align 8
  %340 = getelementptr inbounds %struct.bfi_flash_event_s, %struct.bfi_flash_event_s* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = call i8* @be32_to_cpu(i64 %341)
  %343 = ptrtoint i8* %342 to i64
  store i64 %343, i64* %12, align 8
  %344 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %345 = load i64, i64* %12, align 8
  %346 = call i32 @bfa_trc(%struct.bfa_flash_s* %344, i64 %345)
  %347 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %348 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @BFA_IOC_AEN_INVALID_VENDOR, align 4
  %351 = call i32 @bfa_ioc_aen_post(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %337, %333
  br label %353

353:                                              ; preds = %352, %327
  br label %356

354:                                              ; preds = %36
  %355 = call i32 @WARN_ON(i32 1)
  br label %356

356:                                              ; preds = %33, %354, %353, %313, %312, %241, %194, %188
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_flash_s*, i64) #1

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local i32 @bfa_flash_cb(%struct.bfa_flash_s*) #1

declare dso_local i32 @bfa_flash_write_send(%struct.bfa_flash_s*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @bfa_flash_read_send(%struct.bfa_flash_s*) #1

declare dso_local i32 @bfa_ioc_aen_post(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
