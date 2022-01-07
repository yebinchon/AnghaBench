; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_sdebug_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_sdebug_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.device = type { i32 }
%struct.sdebug_host_info = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i64, i64, i64, i64 }

@sdebug_max_queue = common dso_local global i32 0, align 4
@sdebug_driver_template = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@sdebug_clustering = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@submit_queues = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: trim submit_queues (was %d) to nr_cpu_ids=%u\0A\00", align 1
@my_name = common dso_local global i32 0, align 4
@sdebug_num_tgts = common dso_local global i64 0, align 8
@SCSI_W_LUN_REPORT_LUNS = common dso_local global i64 0, align 8
@sdebug_dif = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@sdebug_dix = common dso_local global i64 0, align 8
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE2_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE2_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE3_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE3_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE0_PROTECTION = common dso_local global i32 0, align 4
@have_dif_prot = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"host protection%s%s%s%s%s%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" DIF1\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" DIF2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" DIF3\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" DIX0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" DIX1\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" DIX2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" DIX3\00", align 1
@sdebug_guard = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_CRC = common dso_local global i32 0, align 4
@SDEBUG_OPT_NOISE = common dso_local global i32 0, align 4
@sdebug_opts = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i32 0, align 4
@SDEBUG_OPT_ALL_INJECTING = common dso_local global i32 0, align 4
@sdebug_any_injecting_opt = common dso_local global i32 0, align 4
@sdebug_every_nth = common dso_local global i64 0, align 8
@sdebug_statistics = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"scsi_add_host failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdebug_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdebug_driver_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdebug_host_info*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sdebug_host_info* @to_sdebug_host(%struct.device* %8)
  store %struct.sdebug_host_info* %9, %struct.sdebug_host_info** %5, align 8
  %10 = load i32, i32* @sdebug_max_queue, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sdebug_driver_template, i32 0, i32 1), align 8
  %11 = load i32, i32* @sdebug_clustering, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sdebug_driver_template, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.TYPE_3__* @sdebug_driver_template, i32 8)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = icmp eq %struct.Scsi_Host* null, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %207

25:                                               ; preds = %16
  %26 = load i64, i64* @submit_queues, align 8
  %27 = load i64, i64* @nr_cpu_ids, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @my_name, align 4
  %31 = load i64, i64* @submit_queues, align 8
  %32 = load i64, i64* @nr_cpu_ids, align 8
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %31, i64 %32)
  %34 = load i64, i64* @nr_cpu_ids, align 8
  store i64 %34, i64* @submit_queues, align 8
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i64, i64* @submit_queues, align 8
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %40 = load %struct.sdebug_host_info*, %struct.sdebug_host_info** %5, align 8
  %41 = getelementptr inbounds %struct.sdebug_host_info, %struct.sdebug_host_info* %40, i32 0, i32 1
  store %struct.Scsi_Host* %39, %struct.Scsi_Host** %41, align 8
  %42 = load %struct.sdebug_host_info*, %struct.sdebug_host_info** %5, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sdebug_host_info**
  store %struct.sdebug_host_info* %42, %struct.sdebug_host_info** %46, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %35
  %52 = load i64, i64* @sdebug_num_tgts, align 8
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i64, i64* @sdebug_num_tgts, align 8
  %59 = add nsw i64 %58, 1
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %66

62:                                               ; preds = %51, %35
  %63 = load i64, i64* @sdebug_num_tgts, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i64, i64* @SCSI_W_LUN_REPORT_LUNS, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %7, align 4
  %71 = load i32, i32* @sdebug_dif, align 4
  switch i32 %71, label %99 [
    i32 130, label %72
    i32 129, label %81
    i32 128, label %90
  ]

72:                                               ; preds = %66
  %73 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  store i32 %73, i32* %7, align 4
  %74 = load i64, i64* @sdebug_dix, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %107

81:                                               ; preds = %66
  %82 = load i32, i32* @SHOST_DIF_TYPE2_PROTECTION, align 4
  store i32 %82, i32* %7, align 4
  %83 = load i64, i64* @sdebug_dix, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @SHOST_DIX_TYPE2_PROTECTION, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %107

90:                                               ; preds = %66
  %91 = load i32, i32* @SHOST_DIF_TYPE3_PROTECTION, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i64, i64* @sdebug_dix, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @SHOST_DIX_TYPE3_PROTECTION, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %107

99:                                               ; preds = %66
  %100 = load i64, i64* @sdebug_dix, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @SHOST_DIX_TYPE0_PROTECTION, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %98, %89, %80
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %108, i32 %109)
  %111 = load i64, i64* @have_dif_prot, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i64, i64* @sdebug_dix, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %113, %107
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @SHOST_DIF_TYPE2_PROTECTION, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @SHOST_DIF_TYPE3_PROTECTION, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @SHOST_DIX_TYPE0_PROTECTION, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SHOST_DIX_TYPE2_PROTECTION, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @SHOST_DIX_TYPE3_PROTECTION, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %159 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %122, i8* %128, i8* %134, i8* %140, i8* %146, i8* %152, i8* %158)
  br label %160

160:                                              ; preds = %116, %113
  %161 = load i32, i32* @sdebug_guard, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %165 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %166 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %164, i32 %165)
  br label %171

167:                                              ; preds = %160
  %168 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %169 = load i32, i32* @SHOST_DIX_GUARD_CRC, align 4
  %170 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i32, i32* @SDEBUG_OPT_NOISE, align 4
  %173 = load i32, i32* @sdebug_opts, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  store i32 %178, i32* @sdebug_verbose, align 4
  %179 = load i32, i32* @SDEBUG_OPT_ALL_INJECTING, align 4
  %180 = load i32, i32* @sdebug_opts, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  store i32 %185, i32* @sdebug_any_injecting_opt, align 4
  %186 = load i64, i64* @sdebug_every_nth, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %171
  store i32 1, i32* @sdebug_statistics, align 4
  br label %189

189:                                              ; preds = %188, %171
  %190 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %191 = load %struct.sdebug_host_info*, %struct.sdebug_host_info** %5, align 8
  %192 = getelementptr inbounds %struct.sdebug_host_info, %struct.sdebug_host_info* %191, i32 0, i32 0
  %193 = call i32 @scsi_add_host(%struct.Scsi_Host* %190, i32* %192)
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %198 = load i32, i32* @ENODEV, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  %200 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %201 = call i32 @scsi_host_put(%struct.Scsi_Host* %200)
  br label %205

202:                                              ; preds = %189
  %203 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %204 = call i32 @scsi_scan_host(%struct.Scsi_Host* %203)
  br label %205

205:                                              ; preds = %202, %196
  %206 = load i32, i32* %4, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %20
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.sdebug_host_info* @to_sdebug_host(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i64) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @scsi_host_set_guard(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
