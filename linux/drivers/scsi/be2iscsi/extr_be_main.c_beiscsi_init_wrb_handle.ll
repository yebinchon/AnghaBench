; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__, %struct.hwi_controller*, %struct.be_mem_descriptor* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context*, %struct.hwi_context_memory* }
%struct.hwi_wrb_context = type { %struct.wrb_handle**, %struct.wrb_handle**, i32, i64, i64, i64 }
%struct.wrb_handle = type { i32, %struct.wrb_handle* }
%struct.hwi_context_memory = type { i8* }
%struct.be_mem_descriptor = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.wrb_handle* }
%struct.iscsi_wrb = type { i32, %struct.iscsi_wrb* }

@HWI_MEM_WRBH = common dso_local global i32 0, align 4
@HWI_MEM_WRB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BM_%d : WRBQ Mem Alloc Failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"BM_%d : Mem Alloc Failed. Failing to load\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_init_wrb_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_init_wrb_handle(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_mem_descriptor*, align 8
  %5 = alloca %struct.be_mem_descriptor*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca %struct.wrb_handle*, align 8
  %8 = alloca %struct.hwi_controller*, align 8
  %9 = alloca %struct.hwi_wrb_context*, align 8
  %10 = alloca %struct.iscsi_wrb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.wrb_handle* null, %struct.wrb_handle** %7, align 8
  store %struct.iscsi_wrb* null, %struct.iscsi_wrb** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 2
  %18 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  store %struct.be_mem_descriptor* %18, %struct.be_mem_descriptor** %4, align 8
  %19 = load i32, i32* @HWI_MEM_WRBH, align 4
  %20 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %20, i64 %21
  store %struct.be_mem_descriptor* %22, %struct.be_mem_descriptor** %4, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 2
  %25 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %24, align 8
  store %struct.be_mem_descriptor* %25, %struct.be_mem_descriptor** %5, align 8
  %26 = load i32, i32* @HWI_MEM_WRB, align 4
  %27 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %27, i64 %28
  store %struct.be_mem_descriptor* %29, %struct.be_mem_descriptor** %5, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 1
  %32 = load %struct.hwi_controller*, %struct.hwi_controller** %31, align 8
  store %struct.hwi_controller* %32, %struct.hwi_controller** %8, align 8
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 1
  %35 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %34, align 8
  store %struct.hwi_context_memory* %35, %struct.hwi_context_memory** %6, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kcalloc(i32 %39, i32 4, i32 %40)
  %42 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %43 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %45 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %1
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %52 = call i32 @beiscsi_log(%struct.beiscsi_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %300

55:                                               ; preds = %1
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %189, %55
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %57, %61
  br i1 %62, label %63, label %192

63:                                               ; preds = %56
  %64 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %65 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %64, i32 0, i32 0
  %66 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %66, i64 %68
  store %struct.hwi_wrb_context* %69, %struct.hwi_wrb_context** %9, align 8
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kcalloc(i32 %73, i32 8, i32 %74)
  %76 = bitcast i8* %75 to %struct.wrb_handle**
  %77 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %78 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %77, i32 0, i32 1
  store %struct.wrb_handle** %76, %struct.wrb_handle*** %78, align 8
  %79 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %80 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %79, i32 0, i32 1
  %81 = load %struct.wrb_handle**, %struct.wrb_handle*** %80, align 8
  %82 = icmp ne %struct.wrb_handle** %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %63
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %85 = load i32, i32* @KERN_ERR, align 4
  %86 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %87 = call i32 @beiscsi_log(%struct.beiscsi_hba* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %274

88:                                               ; preds = %63
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %90 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kcalloc(i32 %92, i32 8, i32 %93)
  %95 = bitcast i8* %94 to %struct.wrb_handle**
  %96 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %97 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %96, i32 0, i32 0
  store %struct.wrb_handle** %95, %struct.wrb_handle*** %97, align 8
  %98 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %99 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %98, i32 0, i32 0
  %100 = load %struct.wrb_handle**, %struct.wrb_handle*** %99, align 8
  %101 = icmp ne %struct.wrb_handle** %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %88
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %106 = call i32 @beiscsi_log(%struct.beiscsi_hba* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %274

107:                                              ; preds = %88
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %107
  %111 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %112 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load %struct.wrb_handle*, %struct.wrb_handle** %117, align 8
  store %struct.wrb_handle* %118, %struct.wrb_handle** %7, align 8
  %119 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %120 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %129 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = mul i64 16, %132
  %134 = udiv i64 %127, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %110, %107
  %139 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %140 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %142 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %144 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %179, %147
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %151 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %155, label %182

155:                                              ; preds = %148
  %156 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %157 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %158 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %157, i32 0, i32 1
  %159 = load %struct.wrb_handle**, %struct.wrb_handle*** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %159, i64 %161
  store %struct.wrb_handle* %156, %struct.wrb_handle** %162, align 8
  %163 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %164 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %165 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %164, i32 0, i32 0
  %166 = load %struct.wrb_handle**, %struct.wrb_handle*** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %166, i64 %168
  store %struct.wrb_handle* %163, %struct.wrb_handle** %169, align 8
  %170 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %171 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %176 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %178 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %177, i32 1
  store %struct.wrb_handle* %178, %struct.wrb_handle** %7, align 8
  br label %179

179:                                              ; preds = %155
  %180 = load i32, i32* %13, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %148

182:                                              ; preds = %148
  %183 = load i32, i32* %11, align 4
  %184 = add i32 %183, -1
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %182, %138
  %186 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %187 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %186, i32 0, i32 2
  %188 = call i32 @spin_lock_init(i32* %187)
  br label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %15, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %56

192:                                              ; preds = %56
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %270, %192
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %196 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ult i32 %194, %198
  br i1 %199, label %200, label %273

200:                                              ; preds = %193
  %201 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %202 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %201, i32 0, i32 0
  %203 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %203, i64 %205
  store %struct.hwi_wrb_context* %206, %struct.hwi_wrb_context** %9, align 8
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %238, label %209

209:                                              ; preds = %200
  %210 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %211 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %210, i32 0, i32 0
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load %struct.wrb_handle*, %struct.wrb_handle** %216, align 8
  %218 = bitcast %struct.wrb_handle* %217 to %struct.iscsi_wrb*
  store %struct.iscsi_wrb* %218, %struct.iscsi_wrb** %10, align 8
  %219 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %220 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %219, i32 0, i32 0
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %229 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  %233 = mul i64 16, %232
  %234 = udiv i64 %227, %233
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %14, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %209, %200
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %269

241:                                              ; preds = %238
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %263, %241
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %245 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ult i32 %243, %247
  br i1 %248, label %249, label %266

249:                                              ; preds = %242
  %250 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %251 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %250, i32 0, i32 1
  %252 = load %struct.wrb_handle**, %struct.wrb_handle*** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %252, i64 %254
  %256 = load %struct.wrb_handle*, %struct.wrb_handle** %255, align 8
  store %struct.wrb_handle* %256, %struct.wrb_handle** %7, align 8
  %257 = load %struct.iscsi_wrb*, %struct.iscsi_wrb** %10, align 8
  %258 = bitcast %struct.iscsi_wrb* %257 to %struct.wrb_handle*
  %259 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %260 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %259, i32 0, i32 1
  store %struct.wrb_handle* %258, %struct.wrb_handle** %260, align 8
  %261 = load %struct.iscsi_wrb*, %struct.iscsi_wrb** %10, align 8
  %262 = getelementptr inbounds %struct.iscsi_wrb, %struct.iscsi_wrb* %261, i32 1
  store %struct.iscsi_wrb* %262, %struct.iscsi_wrb** %10, align 8
  br label %263

263:                                              ; preds = %249
  %264 = load i32, i32* %13, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %242

266:                                              ; preds = %242
  %267 = load i32, i32* %12, align 4
  %268 = add i32 %267, -1
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %266, %238
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %193

273:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %300

274:                                              ; preds = %102, %83
  %275 = load i32, i32* %15, align 4
  store i32 %275, i32* %13, align 4
  br label %276

276:                                              ; preds = %294, %274
  %277 = load i32, i32* %13, align 4
  %278 = icmp ugt i32 %277, 0
  br i1 %278, label %279, label %297

279:                                              ; preds = %276
  %280 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %281 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %280, i32 0, i32 0
  %282 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %282, i64 %284
  store %struct.hwi_wrb_context* %285, %struct.hwi_wrb_context** %9, align 8
  %286 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %287 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %286, i32 0, i32 1
  %288 = load %struct.wrb_handle**, %struct.wrb_handle*** %287, align 8
  %289 = call i32 @kfree(%struct.wrb_handle** %288)
  %290 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %291 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %290, i32 0, i32 0
  %292 = load %struct.wrb_handle**, %struct.wrb_handle*** %291, align 8
  %293 = call i32 @kfree(%struct.wrb_handle** %292)
  br label %294

294:                                              ; preds = %279
  %295 = load i32, i32* %13, align 4
  %296 = add i32 %295, -1
  store i32 %296, i32* %13, align 4
  br label %276

297:                                              ; preds = %276
  %298 = load i32, i32* @ENOMEM, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %297, %273, %48
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.wrb_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
