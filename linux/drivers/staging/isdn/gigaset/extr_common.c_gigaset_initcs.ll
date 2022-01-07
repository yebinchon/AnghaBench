; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i64, i64, %struct.TYPE_4__*, i64, i64, i32, i32*, i32, i64, i64, i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i64, i64, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 (%struct.cardstate*)* }
%struct.gigaset_driver = type { i32 }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"allocating cs\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"maximum number of devices exceeded\0A\00", align 1
@timer_tick = common dso_local global i32 0, align 4
@gigaset_handle_event = common dso_local global i32 0, align 4
@gigaset_tab_nocid = common dso_local global i32 0, align 4
@gigaset_tab_cid = common dso_local global i32 0, align 4
@M_UNKNOWN = common dso_local global i32 0, align 4
@MS_UNINITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"setting up at_state\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"setting up inbuf\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"setting up cmdbuf\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"setting up iif\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"error registering ISDN device\0A\00", align 1
@VALID_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"setting up hw\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"setting up bcs[%d]\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"could not allocate channel %d data\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@GIG_TICK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"cs initialized\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cardstate* @gigaset_initcs(%struct.gigaset_driver* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca %struct.gigaset_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cardstate*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gigaset_driver* %0, %struct.gigaset_driver** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @DEBUG_INIT, align 4
  %18 = call i32 (i32, i8*, ...) @gig_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.gigaset_driver*, %struct.gigaset_driver** %8, align 8
  %20 = call %struct.cardstate* @alloc_cs(%struct.gigaset_driver* %19)
  store %struct.cardstate* %20, %struct.cardstate** %14, align 8
  %21 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %22 = icmp ne %struct.cardstate* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cardstate* null, %struct.cardstate** %7, align 8
  br label %246

25:                                               ; preds = %6
  %26 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %27 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 37
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 6
  %44 = load i32, i32* @timer_tick, align 4
  %45 = call i32 @timer_setup(%struct.TYPE_5__* %43, i32 %44, i32 0)
  %46 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 36
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 35
  store i64 0, i64* %50, align 8
  %51 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 34
  store i64 0, i64* %52, align 8
  %53 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 33
  %55 = load i32, i32* @gigaset_handle_event, align 4
  %56 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %57 = ptrtoint %struct.cardstate* %56 to i64
  %58 = call i32 @tasklet_init(i32* %54, i32 %55, i64 %57)
  %59 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %60 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %59, i32 0, i32 32
  %61 = call i32 @tty_port_init(i32* %60)
  %62 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %63 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %62, i32 0, i32 31
  store i64 0, i64* %63, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 30
  store i64 0, i64* %65, align 8
  %66 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %67 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %66, i32 0, i32 4
  store i32 -1, i32* %67, align 8
  %68 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %69 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %68, i32 0, i32 29
  store i32* null, i32** %69, align 8
  %70 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %71 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %70, i32 0, i32 28
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @gigaset_tab_nocid, align 4
  %78 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 27
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @gigaset_tab_cid, align 4
  %81 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %82 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %81, i32 0, i32 26
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %84 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %83, i32 0, i32 25
  %85 = call i32 @init_waitqueue_head(i32* %84)
  %86 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %87 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %86, i32 0, i32 24
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @M_UNKNOWN, align 4
  %89 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 23
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @MS_UNINITIALIZED, align 4
  %92 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %93 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %92, i32 0, i32 22
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i64 @kmalloc_array(i32 %94, i32 4, i32 %95)
  %97 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %98 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %97, i32 0, i32 8
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @kmalloc(i32 4, i32 %99)
  %101 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %102 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %101, i32 0, i32 18
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %104 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %25
  %108 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %109 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %108, i32 0, i32 18
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107, %25
  %113 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %241

114:                                              ; preds = %107
  %115 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %116 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %115, i32 0, i32 9
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load i32, i32* @DEBUG_INIT, align 4
  %120 = call i32 (i32, i8*, ...) @gig_dbg(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %122 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %121, i32 0, i32 7
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %125 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %124, i32 0, i32 21
  %126 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %127 = call i32 @gigaset_at_init(i32* %125, i32* null, %struct.cardstate* %126, i32 0)
  %128 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %129 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %128, i32 0, i32 20
  store i64 0, i64* %129, align 8
  %130 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %131 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %130, i32 0, i32 19
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @DEBUG_INIT, align 4
  %133 = call i32 (i32, i8*, ...) @gig_dbg(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %135 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %134, i32 0, i32 18
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %138 = call i32 @gigaset_inbuf_init(i32 %136, %struct.cardstate* %137)
  %139 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %140 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %139, i32 0, i32 17
  store i64 0, i64* %140, align 8
  %141 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %142 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %141, i32 0, i32 16
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* @DEBUG_INIT, align 4
  %144 = call i32 (i32, i8*, ...) @gig_dbg(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %146 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %145, i32 0, i32 14
  store i32* null, i32** %146, align 8
  %147 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %148 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %147, i32 0, i32 15
  store i32 0, i32* %148, align 8
  %149 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %150 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %149, i32 0, i32 13
  %151 = call i32 @spin_lock_init(i32* %150)
  %152 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %153 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %152, i32 0, i32 12
  store i64 0, i64* %153, align 8
  %154 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %155 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %154, i32 0, i32 11
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @DEBUG_INIT, align 4
  %157 = call i32 (i32, i8*, ...) @gig_dbg(i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %158 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call i64 @gigaset_isdn_regdev(%struct.cardstate* %158, i8* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %114
  %163 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %241

164:                                              ; preds = %114
  %165 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %166 = load i32, i32* @VALID_ID, align 4
  %167 = call i32 @make_valid(%struct.cardstate* %165, i32 %166)
  %168 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %169 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  %172 = load i32, i32* @DEBUG_INIT, align 4
  %173 = call i32 (i32, i8*, ...) @gig_dbg(i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %174 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %175 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %174, i32 0, i32 10
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64 (%struct.cardstate*)*, i64 (%struct.cardstate*)** %177, align 8
  %179 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %180 = call i64 %178(%struct.cardstate* %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %164
  br label %241

183:                                              ; preds = %164
  %184 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %185 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %184, i32 0, i32 9
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %189 = call i32 @gigaset_if_init(%struct.cardstate* %188)
  %190 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %191 = call i32 @gigaset_init_dev_sysfs(%struct.cardstate* %190)
  store i32 0, i32* %16, align 4
  br label %192

192:                                              ; preds = %214, %183
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %217

196:                                              ; preds = %192
  %197 = load i32, i32* @DEBUG_INIT, align 4
  %198 = load i32, i32* %16, align 4
  %199 = call i32 (i32, i8*, ...) @gig_dbg(i32 %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %198)
  %200 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %201 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  %206 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %207 = load i32, i32* %16, align 4
  %208 = call i64 @gigaset_initbcs(i64 %205, %struct.cardstate* %206, i32 %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %196
  %211 = load i32, i32* %16, align 4
  %212 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  br label %241

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  br label %192

217:                                              ; preds = %192
  %218 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %219 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %218, i32 0, i32 7
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @spin_lock_irqsave(i32* %219, i64 %220)
  %222 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %223 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %222, i32 0, i32 3
  store i32 1, i32* %223, align 4
  %224 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %225 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %224, i32 0, i32 7
  %226 = load i64, i64* %15, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  %228 = load i64, i64* @jiffies, align 8
  %229 = load i32, i32* @GIG_TICK, align 4
  %230 = call i64 @msecs_to_jiffies(i32 %229)
  %231 = add nsw i64 %228, %230
  %232 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %233 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  store i64 %231, i64* %234, align 8
  %235 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %236 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %235, i32 0, i32 6
  %237 = call i32 @add_timer(%struct.TYPE_5__* %236)
  %238 = load i32, i32* @DEBUG_INIT, align 4
  %239 = call i32 (i32, i8*, ...) @gig_dbg(i32 %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %240 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  store %struct.cardstate* %240, %struct.cardstate** %7, align 8
  br label %246

241:                                              ; preds = %210, %182, %162, %112
  %242 = load i32, i32* @DEBUG_INIT, align 4
  %243 = call i32 (i32, i8*, ...) @gig_dbg(i32 %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %244 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %245 = call i32 @gigaset_freecs(%struct.cardstate* %244)
  store %struct.cardstate* null, %struct.cardstate** %7, align 8
  br label %246

246:                                              ; preds = %241, %217, %23
  %247 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  ret %struct.cardstate* %247
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local %struct.cardstate* @alloc_cs(%struct.gigaset_driver*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tty_port_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @gigaset_at_init(i32*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_inbuf_init(i32, %struct.cardstate*) #1

declare dso_local i64 @gigaset_isdn_regdev(%struct.cardstate*, i8*) #1

declare dso_local i32 @make_valid(%struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_if_init(%struct.cardstate*) #1

declare dso_local i32 @gigaset_init_dev_sysfs(%struct.cardstate*) #1

declare dso_local i64 @gigaset_initbcs(i64, %struct.cardstate*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @gigaset_freecs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
