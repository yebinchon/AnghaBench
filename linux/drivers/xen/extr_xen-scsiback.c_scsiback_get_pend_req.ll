; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_get_pend_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_get_pend_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vscsiif_back_ring = type { i32 }
%struct.v2p_entry = type { %struct.scsiback_tpg* }
%struct.scsiback_tpg = type { %struct.scsiback_nexus* }
%struct.scsiback_nexus = type { %struct.se_session* }
%struct.se_session = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to obtain tag for vscsiif_request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VSCSI_MAX_GRANTS = common dso_local global i32 0, align 4
@SCSIBACK_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vscsibk_pend* (%struct.vscsiif_back_ring*, %struct.v2p_entry*)* @scsiback_get_pend_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vscsibk_pend* @scsiback_get_pend_req(%struct.vscsiif_back_ring* %0, %struct.v2p_entry* %1) #0 {
  %3 = alloca %struct.vscsibk_pend*, align 8
  %4 = alloca %struct.vscsiif_back_ring*, align 8
  %5 = alloca %struct.v2p_entry*, align 8
  %6 = alloca %struct.scsiback_tpg*, align 8
  %7 = alloca %struct.scsiback_nexus*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.vscsibk_pend*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vscsiif_back_ring* %0, %struct.vscsiif_back_ring** %4, align 8
  store %struct.v2p_entry* %1, %struct.v2p_entry** %5, align 8
  %13 = load %struct.v2p_entry*, %struct.v2p_entry** %5, align 8
  %14 = getelementptr inbounds %struct.v2p_entry, %struct.v2p_entry* %13, i32 0, i32 0
  %15 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %14, align 8
  store %struct.scsiback_tpg* %15, %struct.scsiback_tpg** %6, align 8
  %16 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %6, align 8
  %17 = getelementptr inbounds %struct.scsiback_tpg, %struct.scsiback_tpg* %16, i32 0, i32 0
  %18 = load %struct.scsiback_nexus*, %struct.scsiback_nexus** %17, align 8
  store %struct.scsiback_nexus* %18, %struct.scsiback_nexus** %7, align 8
  %19 = load %struct.scsiback_nexus*, %struct.scsiback_nexus** %7, align 8
  %20 = getelementptr inbounds %struct.scsiback_nexus, %struct.scsiback_nexus* %19, i32 0, i32 0
  %21 = load %struct.se_session*, %struct.se_session** %20, align 8
  store %struct.se_session* %21, %struct.se_session** %8, align 8
  %22 = load %struct.se_session*, %struct.se_session** %8, align 8
  %23 = getelementptr inbounds %struct.se_session, %struct.se_session* %22, i32 0, i32 1
  %24 = call i32 @sbitmap_queue_get(i32* %23, i32* %11)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.vscsibk_pend* @ERR_PTR(i32 %30)
  store %struct.vscsibk_pend* %31, %struct.vscsibk_pend** %3, align 8
  br label %67

32:                                               ; preds = %2
  %33 = load %struct.se_session*, %struct.se_session** %8, align 8
  %34 = getelementptr inbounds %struct.se_session, %struct.se_session* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.vscsibk_pend*
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %36, i64 %38
  store %struct.vscsibk_pend* %39, %struct.vscsibk_pend** %9, align 8
  %40 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %9, align 8
  %41 = call i32 @memset(%struct.vscsibk_pend* %40, i32 0, i32 16)
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %9, align 8
  %44 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %9, align 8
  %48 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %62, %32
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @VSCSI_MAX_GRANTS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* @SCSIBACK_INVALID_HANDLE, align 4
  %56 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %9, align 8
  %57 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %9, align 8
  store %struct.vscsibk_pend* %66, %struct.vscsibk_pend** %3, align 8
  br label %67

67:                                               ; preds = %65, %27
  %68 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %3, align 8
  ret %struct.vscsibk_pend* %68
}

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vscsibk_pend* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.vscsibk_pend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
