; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_vport_libfc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_vport_libfc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i32 }
%struct.fc_lport = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }

@QEDF_FLOGI_RETRY_CNT = common dso_local global i32 0, align 4
@QEDF_RPORT_RETRY_CNT = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FCP_SPPF_RD_XRDY_DIS = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FCP_SPPF_CONF_COMPL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*, %struct.fc_lport*)* @qedf_vport_libfc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_vport_libfc_config(%struct.fc_vport* %0, %struct.fc_lport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_vport*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %4, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %5, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 13
  store i64 0, i64* %7, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 12
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @QEDF_FLOGI_RETRY_CNT, align 4
  %11 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @QEDF_RPORT_RETRY_CNT, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %17 = load i32, i32* @FCP_SPPF_RD_XRDY_DIS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FCP_SPPF_CONF_COMPL, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  store i32 2000, i32* %29, align 4
  %30 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 2
  store i32 10000, i32* %31, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %35 = call i64 @fc_lport_init_stats(%struct.fc_lport* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %42 = call i32 @fc_lport_config(%struct.fc_lport* %41)
  %43 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %48 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @fc_lport_init_stats(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_config(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
