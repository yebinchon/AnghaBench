; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, %struct.TYPE_4__, i32, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fcp_cmnd = type { i64, i32, i32, i64, i32, i32, i32 }

@FCP_PTA_SIMPLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_build_fcp_cmnd(%struct.bnx2fc_cmd* %0, %struct.fcp_cmnd* %1) #0 {
  %3 = alloca %struct.bnx2fc_cmd*, align 8
  %4 = alloca %struct.fcp_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %3, align 8
  store %struct.fcp_cmnd* %1, %struct.fcp_cmnd** %4, align 8
  %6 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %6, i32 0, i32 3
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %10 = call i32 @memset(%struct.fcp_cmnd* %9, i32 0, i32 40)
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %16, i32 0, i32 6
  %18 = call i32 @int_to_scsilun(i32 %15, i32* %17)
  %19 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @htonl(i32 %21)
  %23 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* @FCP_PTA_SIMPLE, align 8
  %51 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fcp_cmnd*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
