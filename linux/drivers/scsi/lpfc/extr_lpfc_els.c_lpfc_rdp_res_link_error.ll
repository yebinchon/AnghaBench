; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_link_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_link_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_link_error_status_desc = type { i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@RDP_LINK_ERROR_STATUS_DESC_TAG = common dso_local global i32 0, align 4
@VN_PT_PHY_PF_PORT = common dso_local global i32 0, align 4
@VN_PT_PHY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_link_error_status_desc*, %struct.TYPE_7__*)* @lpfc_rdp_res_link_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_link_error(%struct.fc_rdp_link_error_status_desc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.fc_rdp_link_error_status_desc*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.fc_rdp_link_error_status_desc* %0, %struct.fc_rdp_link_error_status_desc** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load i32, i32* @RDP_LINK_ERROR_STATUS_DESC_TAG, align 4
  %7 = call i8* @cpu_to_be32(i32 %6)
  %8 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %9 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @VN_PT_PHY_PF_PORT, align 4
  %11 = load i32, i32* @VN_PT_PHY_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %16 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %23 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i8* %21, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %31 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i8* %29, i8** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %39 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %47 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %55 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %63 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = call i8* @cpu_to_be32(i32 56)
  %67 = load %struct.fc_rdp_link_error_status_desc*, %struct.fc_rdp_link_error_status_desc** %3, align 8
  %68 = getelementptr inbounds %struct.fc_rdp_link_error_status_desc, %struct.fc_rdp_link_error_status_desc* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret i32 72
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
