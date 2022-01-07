; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i64, %struct.TYPE_27__, %struct.TYPE_26__, i32, i32, %struct.qla_hw_data* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32*, i32, i32 }
%struct.qla_hw_data = type { i32, %struct.TYPE_25__*, i64, i64, %struct.TYPE_24__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Removing driver\0A\00", align 1
@PFLG_DRIVER_REMOVING = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Clearing fcoe driver presence.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Error while clearing DRV-Presence.\0A\00", align 1
@UNLOADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qla2x00_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.TYPE_29__* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.TYPE_29__* %6, %struct.TYPE_29__** %3, align 8
  %7 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 7
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %4, align 8
  %10 = load i32, i32* @ql_log_info, align 4
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %12 = call i32 @ql_log(i32 %10, %struct.TYPE_29__* %11, i32 45177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @PFLG_DRIVER_REMOVING, align 4
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 6
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 5
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %1
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32* %28, i32 %32, i32* %36, i32 %40)
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_host_put(i32 %47)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = call i32 @kfree(%struct.qla_hw_data* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_set_drvdata(%struct.pci_dev* %51, i32* null)
  br label %228

53:                                               ; preds = %1
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %55 = call i32 @qla2x00_wait_for_hba_ready(%struct.TYPE_29__* %54)
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %57 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %61 = call i64 @IS_QLA2031(%struct.qla_hw_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %65 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %69 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67, %63, %59, %53
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %79 = call i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_29__* %78)
  br label %80

80:                                               ; preds = %77, %71
  br label %106

81:                                               ; preds = %67
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %83 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %87 = call i64 @IS_QLA8031(%struct.qla_hw_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* @ql_dbg_p3p, align 4
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %92 = call i32 @ql_dbg(i32 %90, %struct.TYPE_29__* %91, i32 45182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %94 = call i64 @qla83xx_clear_drv_presence(%struct.TYPE_29__* %93)
  %95 = load i64, i64* @QLA_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* @ql_dbg_p3p, align 4
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %100 = call i32 @ql_dbg(i32 %98, %struct.TYPE_29__* %99, i32 45177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %89
  br label %102

102:                                              ; preds = %101, %85
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %104 = call i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_29__* %103)
  br label %105

105:                                              ; preds = %102, %81
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %108 = call i32 @qla2x00_wait_for_sess_deletion(%struct.TYPE_29__* %107)
  %109 = load i32, i32* @UNLOADING, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 5
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %228

115:                                              ; preds = %106
  %116 = load i32, i32* @UNLOADING, align 4
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 5
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %121 = call i32 @qla_nvme_delete(%struct.TYPE_29__* %120)
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dma_free_coherent(i32* %125, i32 %129, i32* %133, i32 %137)
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @vfree(i32 %145)
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %148 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %115
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %152 = call i32 @qlafx00_driver_shutdown(%struct.TYPE_29__* %151, i32 20)
  br label %153

153:                                              ; preds = %150, %115
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %156 = call i32 @qla2x00_delete_all_vps(%struct.qla_hw_data* %154, %struct.TYPE_29__* %155)
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %158 = call i32 @qla2x00_dfs_remove(%struct.TYPE_29__* %157)
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %160 = call i32 @qla84xx_put_chip(%struct.TYPE_29__* %159)
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %167 = call i32 @qla2x00_stop_timer(%struct.TYPE_29__* %166)
  br label %168

168:                                              ; preds = %165, %153
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %173 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %178 = call i32 @qla2x00_free_exlogin_buffer(%struct.qla_hw_data* %177)
  br label %179

179:                                              ; preds = %176, %168
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %186 = call i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data* %185)
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %189 = call i32 @qla2x00_destroy_deferred_work(%struct.qla_hw_data* %188)
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %192 = call i32 @qlt_remove_target(%struct.qla_hw_data* %190, %struct.TYPE_29__* %191)
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %194 = call i32 @qla2x00_free_sysfs_attr(%struct.TYPE_29__* %193, i32 1)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @fc_remove_host(i32 %197)
  %199 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %200 = call i32 @qlt_remove_target_resources(%struct.qla_hw_data* %199)
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @scsi_remove_host(i32 %203)
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %206 = call i32 @qla2x00_free_device(%struct.TYPE_29__* %205)
  %207 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %208 = call i32 @qla2x00_clear_drv_active(%struct.qla_hw_data* %207)
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @scsi_host_put(i32 %211)
  %213 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %214 = call i32 @qla2x00_unmap_iobases(%struct.qla_hw_data* %213)
  %215 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %216 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %215, i32 0, i32 1
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %216, align 8
  %218 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %219 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @pci_release_selected_regions(%struct.TYPE_25__* %217, i32 %220)
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %223 = call i32 @kfree(%struct.qla_hw_data* %222)
  %224 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %225 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %224)
  %226 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %227 = call i32 @pci_disable_device(%struct.pci_dev* %226)
  br label %228

228:                                              ; preds = %187, %114, %24
  ret void
}

declare dso_local %struct.TYPE_29__* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @kfree(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @qla2x00_wait_for_hba_ready(%struct.TYPE_29__*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_29__*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_29__*, i32, i8*) #1

declare dso_local i64 @qla83xx_clear_drv_presence(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_wait_for_sess_deletion(%struct.TYPE_29__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla_nvme_delete(%struct.TYPE_29__*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @qlafx00_driver_shutdown(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @qla2x00_delete_all_vps(%struct.qla_hw_data*, %struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_dfs_remove(%struct.TYPE_29__*) #1

declare dso_local i32 @qla84xx_put_chip(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_stop_timer(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_free_exlogin_buffer(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_destroy_deferred_work(%struct.qla_hw_data*) #1

declare dso_local i32 @qlt_remove_target(%struct.qla_hw_data*, %struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_free_sysfs_attr(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @qlt_remove_target_resources(%struct.qla_hw_data*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @qla2x00_free_device(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_clear_drv_active(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_unmap_iobases(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_release_selected_regions(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
