; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_get_fc_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_get_fc_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.qla_hw_data*, %struct.fc_host_statistics }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32 }
%struct.qla_hw_data = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_qla_host = type { i32, i32 }
%struct.link_statistics = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNLOADING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for stats.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@LOOP_READY = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @qla2x00_get_fc_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @qla2x00_get_fc_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.link_statistics*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fc_host_statistics*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = call %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %4, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_10__* %17)
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store %struct.fc_host_statistics* %20, %struct.fc_host_statistics** %9, align 8
  %21 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %22 = call i32 @memset(%struct.fc_host_statistics* %21, i32 -1, i32 104)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %26 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %232

29:                                               ; preds = %1
  %30 = load i32, i32* @UNLOADING, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %232

36:                                               ; preds = %29
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32 @pci_channel_offline(%struct.TYPE_10__* %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %232

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i64 @qla2x00_chip_is_down(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %232

49:                                               ; preds = %44
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.link_statistics* @dma_alloc_coherent(i32* %53, i32 56, i32* %8, i32 %54)
  store %struct.link_statistics* %55, %struct.link_statistics** %7, align 8
  %56 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %57 = icmp ne %struct.link_statistics* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @ql_log_warn, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 @ql_log(i32 %59, %struct.TYPE_9__* %60, i32 28797, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %232

62:                                               ; preds = %49
  %63 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %63, i32* %6, align 4
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %65 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %69 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host* %68, %struct.link_statistics* %69, i32 %70, i32 0)
  store i32 %71, i32* %6, align 4
  br label %92

72:                                               ; preds = %62
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %74 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %73, i32 0, i32 1
  %75 = call i64 @atomic_read(i32* %74)
  %76 = load i64, i64* @LOOP_READY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @qla2x00_get_link_status(%struct.scsi_qla_host* %84, i32 %87, %struct.link_statistics* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %83, %78, %72
  br label %92

92:                                               ; preds = %91, %67
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @QLA_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %224

97:                                               ; preds = %92
  %98 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %99 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %102 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %101, i32 0, i32 19
  store i32 %100, i32* %102, align 8
  %103 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %104 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %107 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %106, i32 0, i32 18
  store i32 %105, i32* %107, align 4
  %108 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %109 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %112 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %111, i32 0, i32 17
  store i32 %110, i32* %112, align 8
  %113 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %114 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %117 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %116, i32 0, i32 16
  store i32 %115, i32* %117, align 4
  %118 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %119 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %122 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 8
  %123 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %124 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %127 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %126, i32 0, i32 14
  store i32 %125, i32* %127, align 4
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %129 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %178

131:                                              ; preds = %97
  %132 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %133 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %136 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %135, i32 0, i32 13
  store i32 %134, i32* %136, align 8
  %137 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %138 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %141 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 4
  %142 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %143 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %146 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %145, i32 0, i32 11
  store i32 %144, i32* %146, align 8
  %147 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %148 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %151 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %150, i32 0, i32 10
  store i64 %149, i64* %151, align 8
  %152 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %153 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %156 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 8
  %157 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %158 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %161 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %165 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %164, i32 0, i32 8
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %171 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %177 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %131, %97
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %184 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %190 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %196 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = ashr i32 %200, 20
  %202 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %203 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = ashr i32 %207, 20
  %209 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %210 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = call i64 (...) @get_jiffies_64()
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = sub nsw i64 %211, %215
  %217 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %218 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  %219 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %220 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @HZ, align 4
  %223 = call i32 @do_div(i64 %221, i32 %222)
  br label %224

224:                                              ; preds = %178, %96
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 0
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @dma_free_coherent(i32* %228, i32 56, %struct.link_statistics* %229, i32 %230)
  br label %232

232:                                              ; preds = %224, %58, %48, %43, %35, %28
  %233 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  ret %struct.fc_host_statistics* %233
}

declare dso_local %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.fc_host_statistics*, i32, i32) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(%struct.TYPE_10__*) #1

declare dso_local i64 @qla2x00_chip_is_down(%struct.TYPE_9__*) #1

declare dso_local %struct.link_statistics* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host*, %struct.link_statistics*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_get_link_status(%struct.scsi_qla_host*, i32, %struct.link_statistics*, i32) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.link_statistics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
