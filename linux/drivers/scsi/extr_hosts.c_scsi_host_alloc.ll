; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.scsi_host_template*, i32, %struct.TYPE_3__, %struct.TYPE_3__, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32*, %struct.TYPE_3__*, i32*, i32* }
%struct.scsi_host_template = type { i64, i32, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@SHOST_CREATED = common dso_local global i32 0, align 4
@host_index_ida = common dso_local global i32 0, align 4
@blank_transport_template = common dso_local global i32 0, align 4
@shost_eh_deadline = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"eh_deadline %u too large, setting to %u\0A\00", align 1
@MODE_UNKNOWN = common dso_local global i64 0, align 8
@MODE_INITIATOR = common dso_local global i64 0, align 8
@SCSI_DEFAULT_HOST_BLOCKED = common dso_local global i64 0, align 8
@SCSI_DEFAULT_MAX_SECTORS = common dso_local global i64 0, align 8
@BLK_MAX_SEGMENT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@scsi_bus_type = common dso_local global i32 0, align 4
@scsi_host_type = common dso_local global i32 0, align 4
@shost_class = common dso_local global i32 0, align 4
@scsi_sysfs_shost_attr_groups = common dso_local global i32 0, align 4
@scsi_error_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"scsi_eh_%d\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"error handler thread failed to spawn, error = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"scsi_tmf_%d\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to create tmf workq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @__GFP_DMA, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %14, %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 272, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.Scsi_Host* @kzalloc(i32 %25, i32 %26)
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %6, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %29 = icmp ne %struct.Scsi_Host* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %3, align 8
  br label %335

31:                                               ; preds = %21
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 34
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 33
  store i32* %33, i32** %35, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 33
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* @SHOST_CREATED, align 4
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 32
  store i32 %40, i32* %42, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 31
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 30
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 29
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 28
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 27
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 26
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @ida_simple_get(i32* @host_index_ida, i32 0, i32 0, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %31
  br label %332

66:                                               ; preds = %31
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 1
  store i32 255, i32* %71, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 25
  store i64 0, i64* %73, align 8
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 2
  store i32 8, i32* %75, align 8
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 3
  store i32 8, i32* %77, align 4
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 24
  store i32* @blank_transport_template, i32** %79, align 8
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 4
  store i32 12, i32* %81, align 8
  %82 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 9
  store %struct.scsi_host_template* %82, %struct.scsi_host_template** %84, align 8
  %85 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 23
  store i32 %87, i32* %89, align 8
  %90 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 22
  store i32 %92, i32* %94, align 4
  %95 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %96 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %98, i32 0, i32 21
  store i32 %97, i32* %99, align 8
  %100 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 20
  store i32 %102, i32* %104, align 4
  %105 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %106 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %109 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %108, i32 0, i32 19
  store i32 %107, i32* %109, align 8
  %110 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %111 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 18
  store i64 %112, i64* %114, align 8
  %115 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %116 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 17
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @shost_eh_deadline, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %127, label %122

122:                                              ; preds = %66
  %123 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122, %66
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %129 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %128, i32 0, i32 5
  store i32 -1, i32* %129, align 4
  br label %154

130:                                              ; preds = %122
  %131 = load i32, i32* @shost_eh_deadline, align 4
  %132 = load i32, i32* @HZ, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* @INT_MAX, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load i32, i32* @KERN_WARNING, align 4
  %138 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %139 = load i32, i32* @shost_eh_deadline, align 4
  %140 = load i32, i32* @INT_MAX, align 4
  %141 = load i32, i32* @HZ, align 4
  %142 = sdiv i32 %140, %141
  %143 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %137, %struct.Scsi_Host* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* @INT_MAX, align 4
  %145 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %146 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  br label %153

147:                                              ; preds = %130
  %148 = load i32, i32* @shost_eh_deadline, align 4
  %149 = load i32, i32* @HZ, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %152 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %147, %136
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MODE_UNKNOWN, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i64, i64* @MODE_INITIATOR, align 8
  %162 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %163 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %162, i32 0, i32 6
  store i64 %161, i64* %163, align 8
  br label %170

164:                                              ; preds = %154
  %165 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %166 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %169 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %168, i32 0, i32 6
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %164, %160
  %171 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %172 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %177 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %180 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %179, i32 0, i32 16
  store i64 %178, i64* %180, align 8
  br label %185

181:                                              ; preds = %170
  %182 = load i64, i64* @SCSI_DEFAULT_HOST_BLOCKED, align 8
  %183 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %184 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %183, i32 0, i32 16
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %175
  %186 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %187 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %192 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %195 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %194, i32 0, i32 15
  store i64 %193, i64* %195, align 8
  br label %200

196:                                              ; preds = %185
  %197 = load i64, i64* @SCSI_DEFAULT_MAX_SECTORS, align 8
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 15
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %196, %190
  %201 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %202 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %207 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %210 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %209, i32 0, i32 14
  store i64 %208, i64* %210, align 8
  br label %215

211:                                              ; preds = %200
  %212 = load i64, i64* @BLK_MAX_SEGMENT_SIZE, align 8
  %213 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %214 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %213, i32 0, i32 14
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %211, %205
  %216 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %217 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %222 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %225 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 8
  br label %229

226:                                              ; preds = %215
  %227 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %228 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %227, i32 0, i32 7
  store i32 -1, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %220
  %230 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %231 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %239 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %238, i32 0, i32 13
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %234, %229
  %241 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %242 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %241, i32 0, i32 12
  %243 = call i32 @device_initialize(%struct.TYPE_3__* %242)
  %244 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %245 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %244, i32 0, i32 12
  %246 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %247 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @dev_set_name(%struct.TYPE_3__* %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %248)
  %250 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %251 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %250, i32 0, i32 12
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 4
  store i32* @scsi_bus_type, i32** %252, align 8
  %253 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %254 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %253, i32 0, i32 12
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  store i32* @scsi_host_type, i32** %255, align 8
  %256 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %257 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %256, i32 0, i32 11
  %258 = call i32 @device_initialize(%struct.TYPE_3__* %257)
  %259 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %260 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %259, i32 0, i32 12
  %261 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %262 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %261, i32 0, i32 11
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 2
  store %struct.TYPE_3__* %260, %struct.TYPE_3__** %263, align 8
  %264 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %265 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %264, i32 0, i32 11
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 1
  store i32* @shost_class, i32** %266, align 8
  %267 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %268 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %267, i32 0, i32 11
  %269 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %270 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @dev_set_name(%struct.TYPE_3__* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @scsi_sysfs_shost_attr_groups, align 4
  %274 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %275 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %274, i32 0, i32 11
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  store i32 %273, i32* %276, align 8
  %277 = load i32, i32* @scsi_error_handler, align 4
  %278 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %279 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %280 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @kthread_run(i32 %277, %struct.Scsi_Host* %278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %281)
  %283 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %284 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %283, i32 0, i32 8
  store i32 %282, i32* %284, align 4
  %285 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %286 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @IS_ERR(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %240
  %291 = load i32, i32* @KERN_WARNING, align 4
  %292 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %293 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %294 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @PTR_ERR(i32 %295)
  %297 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %291, %struct.Scsi_Host* %292, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %296)
  br label %327

298:                                              ; preds = %240
  %299 = load i32, i32* @WQ_UNBOUND, align 4
  %300 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %301 = or i32 %299, %300
  %302 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %303 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %301, i32 1, i32 %304)
  %306 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %307 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %306, i32 0, i32 10
  store i32 %305, i32* %307, align 8
  %308 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %309 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %298
  %313 = load i32, i32* @KERN_WARNING, align 4
  %314 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %315 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %313, %struct.Scsi_Host* %314, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %322

316:                                              ; preds = %298
  %317 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %318 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %317, i32 0, i32 9
  %319 = load %struct.scsi_host_template*, %struct.scsi_host_template** %318, align 8
  %320 = call i32 @scsi_proc_hostdir_add(%struct.scsi_host_template* %319)
  %321 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %321, %struct.Scsi_Host** %3, align 8
  br label %335

322:                                              ; preds = %312
  %323 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %324 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @kthread_stop(i32 %325)
  br label %327

327:                                              ; preds = %322, %290
  %328 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %329 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @ida_simple_remove(i32* @host_index_ida, i32 %330)
  br label %332

332:                                              ; preds = %327, %65
  %333 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %334 = call i32 @kfree(%struct.Scsi_Host* %333)
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %3, align 8
  br label %335

335:                                              ; preds = %332, %316, %30
  %336 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  ret %struct.Scsi_Host* %336
}

declare dso_local %struct.Scsi_Host* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @kthread_run(i32, %struct.Scsi_Host*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_proc_hostdir_add(%struct.scsi_host_template*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
