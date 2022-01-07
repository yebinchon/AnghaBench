; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_scsi_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_scsi_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.AdapterCtlBlk = type { i32, i32, i32, i32, %struct.NvRamType }
%struct.NvRamType = type { i32, i32 }

@DC395x_MAX_CMD_QUEUE = common dso_local global i32 0, align 4
@DC395x_MAX_CMD_PER_LUN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NAC_SCANLUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @adapter_init_scsi_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_init_scsi_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.NvRamType*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %8, %struct.AdapterCtlBlk** %3, align 8
  %9 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %10 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %9, i32 0, i32 4
  store %struct.NvRamType* %10, %struct.NvRamType** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = load i32, i32* @DC395x_MAX_CMD_QUEUE, align 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @DC395x_MAX_CMD_PER_LUN, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.NvRamType*, %struct.NvRamType** %4, align 8
  %20 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %25 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %30 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 2
  store i32 -1, i32* %35, align 8
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %37 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %42 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %48 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 3
  store i32 16, i32* %50, align 4
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.NvRamType*, %struct.NvRamType** %4, align 8
  %56 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %1
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %1
  %65 = load %struct.NvRamType*, %struct.NvRamType** %4, align 8
  %66 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NAC_SCANLUN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 4
  store i32 8, i32* %73, align 8
  br label %77

74:                                               ; preds = %64
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 4
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
