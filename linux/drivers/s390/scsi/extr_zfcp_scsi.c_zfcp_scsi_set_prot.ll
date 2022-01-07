; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_set_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_set_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, %struct.TYPE_2__*, i32, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32 }

@ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@enable_dif = common dso_local global i64 0, align 8
@zfcp_experimental_dix = common dso_local global i64 0, align 8
@FSF_FEATURE_DIF_PROT_TYPE1 = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@FSF_FEATURE_DIX_PROT_TCPIP = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_scsi_set_prot(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %6, i32 0, i32 3
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %5, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 2
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @enable_dif, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @zfcp_experimental_dix, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16, %1
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FSF_FEATURE_DIF_PROT_TYPE1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %19, %16
  %31 = load i64, i64* @zfcp_experimental_dix, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FSF_FEATURE_DIX_PROT_TCPIP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %48 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %49 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %47, i32 %48)
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %43, %36, %33, %30
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %73, i32 %74)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @scsi_host_set_guard(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
