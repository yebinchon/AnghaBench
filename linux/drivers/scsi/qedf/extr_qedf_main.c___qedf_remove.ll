; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c___qedf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c___qedf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 (i32)*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32)* }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.pci_dev = type { i32 }
%struct.qedf_ctx = type { %struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"pdev is NULL.\0A\00", align 1
@QEDF_UNLOADING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Already removing PCI function.\0A\00", align 1
@QEDF_MODE_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not upload all sessions.\0A\00", align 1
@QEDF_LL2_STARTED = common dso_local global i32 0, align 4
@qed_ops = common dso_local global %struct.TYPE_10__* null, align 8
@PCI_D0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to send drv state to MFW.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @__qedf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qedf_remove(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedf_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %239

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call %struct.qedf_ctx* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.qedf_ctx* %13, %struct.qedf_ctx** %5, align 8
  %14 = load i32, i32* @QEDF_UNLOADING, align 4
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 9
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 3
  %22 = call i32 @QEDF_ERR(i32* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %239

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @QEDF_UNLOADING, align 4
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %29, i32 0, i32 9
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %37, i32 0, i32 6
  %39 = call i32 @fcoe_ctlr_link_down(i32* %38)
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = call i32 @fc_fabric_logoff(%struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %47 = call i32 @qedf_wait_for_upload(%struct.qedf_ctx* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 3
  %52 = call i32 @QEDF_ERR(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %54, i32 0, i32 12
  %56 = call i32 @cancel_delayed_work_sync(i32* %55)
  %57 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %57, i32 0, i32 11
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @destroy_workqueue(i32* %59)
  %61 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %61, i32 0, i32 11
  store i32* null, i32** %62, align 8
  %63 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %63, i32 0, i32 10
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %68, i32 0, i32 10
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @destroy_workqueue(i32* %70)
  br label %72

72:                                               ; preds = %67, %53
  %73 = load i32, i32* @QEDF_LL2_STARTED, align 4
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %74, i32 0, i32 9
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %81(i32 %84)
  %86 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @destroy_workqueue(i32* %93)
  br label %95

95:                                               ; preds = %90, %72
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %97 = call i32 @qedf_sync_free_irqs(%struct.qedf_ctx* %96)
  %98 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %99 = call i32 @qedf_destroy_sb(%struct.qedf_ctx* %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %95
  %104 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %104, i32 0, i32 7
  %106 = call i32 @qedf_free_grc_dump_buf(i32* %105)
  %107 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %108 = call i32 @qedf_remove_sysfs_ctx_attr(%struct.qedf_ctx* %107)
  %109 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %109, i32 0, i32 6
  %111 = call i32 @fcoe_ctlr_destroy(i32* %110)
  %112 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call i32 @fc_lport_destroy(%struct.TYPE_11__* %114)
  %116 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @fc_remove_host(i32 %120)
  %122 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @scsi_remove_host(i32 %126)
  br label %128

128:                                              ; preds = %103, %95
  %129 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %130 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @qedf_cmd_mgr_free(i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %128
  %137 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %137, i32 0, i32 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = call i32 @fc_exch_mgr_free(%struct.TYPE_11__* %139)
  %141 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = call i32 @fc_lport_free_stats(%struct.TYPE_11__* %143)
  %145 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %146 = call i32 @qedf_wait_for_vport_destroy(%struct.qedf_ctx* %145)
  br label %147

147:                                              ; preds = %136, %128
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32 (i32)*, i32 (i32)** %149, align 8
  %151 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 %150(i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %147
  %159 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %165 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @destroy_workqueue(i32* %166)
  %168 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %168, i32 0, i32 4
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %163, %158
  br label %171

171:                                              ; preds = %170, %147
  %172 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %173 = call i32 @qedf_free_fcoe_pf_param(%struct.qedf_ctx* %172)
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %184 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PCI_D0, align 4
  %187 = call i32 %182(i32 %185, i32 %186)
  %188 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %189 = call i32 @pci_set_drvdata(%struct.pci_dev* %188, i32* null)
  br label %190

190:                                              ; preds = %177, %171
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %197 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 %195(i32 %198, i32 0)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %204 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %203, i32 0, i32 3
  %205 = call i32 @QEDF_ERR(i32* %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %190
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load i32 (i32)*, i32 (i32)** %210, align 8
  %212 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %213 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 %211(i32 %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @qed_ops, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32 (i32)*, i32 (i32)** %219, align 8
  %221 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %222 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 %220(i32 %223)
  %225 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %226 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @mempool_destroy(i32 %227)
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @QEDF_MODE_RECOVERY, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %206
  %233 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %234 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @scsi_host_put(i32 %237)
  br label %239

239:                                              ; preds = %9, %19, %232, %206
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local %struct.qedf_ctx* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fcoe_ctlr_link_down(i32*) #1

declare dso_local i32 @fc_fabric_logoff(%struct.TYPE_11__*) #1

declare dso_local i32 @qedf_wait_for_upload(%struct.qedf_ctx*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qedf_sync_free_irqs(%struct.qedf_ctx*) #1

declare dso_local i32 @qedf_destroy_sb(%struct.qedf_ctx*) #1

declare dso_local i32 @qedf_free_grc_dump_buf(i32*) #1

declare dso_local i32 @qedf_remove_sysfs_ctx_attr(%struct.qedf_ctx*) #1

declare dso_local i32 @fcoe_ctlr_destroy(i32*) #1

declare dso_local i32 @fc_lport_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @qedf_cmd_mgr_free(i32) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.TYPE_11__*) #1

declare dso_local i32 @fc_lport_free_stats(%struct.TYPE_11__*) #1

declare dso_local i32 @qedf_wait_for_vport_destroy(%struct.qedf_ctx*) #1

declare dso_local i32 @qedf_free_fcoe_pf_param(%struct.qedf_ctx*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
