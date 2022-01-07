; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_init_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_4__, i32, i8*, %struct.bfa_iocfc_s }
%struct.TYPE_4__ = type { i64 }
%struct.bfa_iocfc_s = type { %struct.TYPE_3__, %struct.bfa_iocfc_cfg_s, %struct.bfa_s* }
%struct.TYPE_3__ = type { i32 (%struct.bfa_s.0*)*, i32, i32*, i64, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.bfa_s.0 = type opaque
%struct.bfa_iocfc_cfg_s = type { i32 }
%struct.bfa_pcidev_s = type { i32 }

@bfa_hwct_reqq_ack = common dso_local global i32* null, align 8
@bfa_hwct_rspq_ack = common dso_local global i32 0, align 4
@bfa_hwct_msix_init = common dso_local global i32 0, align 4
@bfa_hwct_msix_ctrl_install = common dso_local global i32 0, align 4
@bfa_hwct_msix_queue_install = common dso_local global i32 0, align 4
@bfa_hwct_msix_uninstall = common dso_local global i32 0, align 4
@bfa_hwct_isr_mode_set = common dso_local global i32* null, align 8
@bfa_hwct_msix_getvecs = common dso_local global i32 0, align 4
@bfa_hwct_msix_get_rme_range = common dso_local global i32 0, align 4
@BFI_MSIX_RME_QMIN_CT = common dso_local global i64 0, align 8
@BFI_MSIX_CPE_QMIN_CT = common dso_local global i64 0, align 8
@bfa_hwcb_rspq_ack = common dso_local global i32 0, align 4
@bfa_hwcb_msix_init = common dso_local global i32 0, align 4
@bfa_hwcb_msix_ctrl_install = common dso_local global i32 0, align 4
@bfa_hwcb_msix_queue_install = common dso_local global i32 0, align 4
@bfa_hwcb_msix_uninstall = common dso_local global i32 0, align 4
@bfa_hwcb_isr_mode_set = common dso_local global i32* null, align 8
@bfa_hwcb_msix_getvecs = common dso_local global i32 0, align 4
@bfa_hwcb_msix_get_rme_range = common dso_local global i32 0, align 4
@BFI_MSIX_RME_QMIN_CB = common dso_local global i64 0, align 8
@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@BFI_MSIX_CPE_QMIN_CB = common dso_local global i64 0, align 8
@bfa_hwct2_rspq_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, i8*, %struct.bfa_iocfc_cfg_s*, %struct.bfa_pcidev_s*)* @bfa_iocfc_init_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_init_mem(%struct.bfa_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca %struct.bfa_iocfc_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 3
  store %struct.bfa_iocfc_s* %11, %struct.bfa_iocfc_s** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %16, i32 0, i32 2
  store %struct.bfa_s* %15, %struct.bfa_s** %17, align 8
  %18 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %19 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %18, i32 0, i32 1
  %20 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %21 = bitcast %struct.bfa_iocfc_cfg_s* %19 to i8*
  %22 = bitcast %struct.bfa_iocfc_cfg_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %23, i32 0, i32 1
  %25 = call i32 @bfa_ioc_devid(i32* %24)
  %26 = call i64 @bfa_asic_id_ctc(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %4
  %29 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %30 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 (%struct.bfa_s.0*)* bitcast (i32 (%struct.bfa_s*)* @bfa_hwct_reginit to i32 (%struct.bfa_s.0*)*), i32 (%struct.bfa_s.0*)** %31, align 8
  %32 = load i32*, i32** @bfa_hwct_reqq_ack, align 8
  %33 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %34 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 11
  store i32* %32, i32** %35, align 8
  %36 = load i32, i32* @bfa_hwct_rspq_ack, align 4
  %37 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %38 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @bfa_hwct_msix_init, align 4
  %41 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %42 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 10
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @bfa_hwct_msix_ctrl_install, align 4
  %45 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %46 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @bfa_hwct_msix_queue_install, align 4
  %49 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %50 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @bfa_hwct_msix_uninstall, align 4
  %53 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %54 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 8
  %56 = load i32*, i32** @bfa_hwct_isr_mode_set, align 8
  %57 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %58 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32* %56, i32** %59, align 8
  %60 = load i32, i32* @bfa_hwct_msix_getvecs, align 4
  %61 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %62 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @bfa_hwct_msix_get_rme_range, align 4
  %65 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %66 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 8
  %68 = load i64, i64* @BFI_MSIX_RME_QMIN_CT, align 8
  %69 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %70 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* @BFI_MSIX_CPE_QMIN_CT, align 8
  %73 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %74 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  br label %137

76:                                               ; preds = %4
  %77 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %78 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 (%struct.bfa_s.0*)* bitcast (i32 (%struct.bfa_s*)* @bfa_hwcb_reginit to i32 (%struct.bfa_s.0*)*), i32 (%struct.bfa_s.0*)** %79, align 8
  %80 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %81 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 11
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @bfa_hwcb_rspq_ack, align 4
  %84 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %85 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @bfa_hwcb_msix_init, align 4
  %88 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %89 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 10
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @bfa_hwcb_msix_ctrl_install, align 4
  %92 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %93 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 9
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @bfa_hwcb_msix_queue_install, align 4
  %96 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %97 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 8
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @bfa_hwcb_msix_uninstall, align 4
  %100 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %101 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 8
  %103 = load i32*, i32** @bfa_hwcb_isr_mode_set, align 8
  %104 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %105 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32* %103, i32** %106, align 8
  %107 = load i32, i32* @bfa_hwcb_msix_getvecs, align 4
  %108 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %109 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @bfa_hwcb_msix_get_rme_range, align 4
  %112 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %113 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* @BFI_MSIX_RME_QMIN_CB, align 8
  %116 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %117 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %116, i32 0, i32 1
  %118 = call i32 @bfa_ioc_pcifn(i32* %117)
  %119 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %115, %121
  %123 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %124 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* @BFI_MSIX_CPE_QMIN_CB, align 8
  %127 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %128 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %127, i32 0, i32 1
  %129 = call i32 @bfa_ioc_pcifn(i32* %128)
  %130 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %126, %132
  %134 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %135 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %76, %28
  %138 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %139 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %138, i32 0, i32 1
  %140 = call i32 @bfa_ioc_devid(i32* %139)
  %141 = call i64 @bfa_asic_id_ct2(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %145 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i32 (%struct.bfa_s.0*)* bitcast (i32 (%struct.bfa_s*)* @bfa_hwct2_reginit to i32 (%struct.bfa_s.0*)*), i32 (%struct.bfa_s.0*)** %146, align 8
  %147 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %148 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @bfa_hwct2_rspq_ack, align 4
  %151 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %152 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  br label %154

154:                                              ; preds = %143, %137
  %155 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %9, align 8
  %156 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32 (%struct.bfa_s.0*)*, i32 (%struct.bfa_s.0*)** %157, align 8
  %159 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %160 = bitcast %struct.bfa_s* %159 to %struct.bfa_s.0*
  %161 = call i32 %158(%struct.bfa_s.0* %160)
  %162 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %163 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bfa_asic_id_ctc(i32) #2

declare dso_local i32 @bfa_ioc_devid(i32*) #2

declare dso_local i32 @bfa_hwct_reginit(%struct.bfa_s*) #2

declare dso_local i32 @bfa_hwcb_reginit(%struct.bfa_s*) #2

declare dso_local i32 @bfa_ioc_pcifn(i32*) #2

declare dso_local i64 @bfa_asic_id_ct2(i32) #2

declare dso_local i32 @bfa_hwct2_reginit(%struct.bfa_s*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
