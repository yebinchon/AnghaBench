; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_bbc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_bbc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_bbc_desc = type { i8*, %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i64, i8*, i8* }
%struct.lpfc_vport = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@RDP_BBC_DESC_TAG = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_bbc_desc*, i32*, %struct.lpfc_vport*)* @lpfc_rdp_res_bbc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_bbc_desc(%struct.fc_rdp_bbc_desc* %0, i32* %1, %struct.lpfc_vport* %2) #0 {
  %4 = alloca %struct.fc_rdp_bbc_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_rdp_bbc_desc* %0, %struct.fc_rdp_bbc_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %6, align 8
  %8 = load i32, i32* @RDP_BBC_DESC_TAG, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %11 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %16, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %27 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %3
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %43, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %56 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  br label %62

58:                                               ; preds = %3
  %59 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %60 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %36
  %63 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %64 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = call i8* @cpu_to_be32(i32 24)
  %67 = load %struct.fc_rdp_bbc_desc*, %struct.fc_rdp_bbc_desc** %4, align 8
  %68 = getelementptr inbounds %struct.fc_rdp_bbc_desc, %struct.fc_rdp_bbc_desc* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret i32 40
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
