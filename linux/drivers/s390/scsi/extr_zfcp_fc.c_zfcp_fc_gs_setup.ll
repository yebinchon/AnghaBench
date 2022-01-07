; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_gs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_gs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_fc_wka_ports* }
%struct.zfcp_fc_wka_ports = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FC_FID_MGMT_SERV = common dso_local global i32 0, align 4
@FC_FID_TIME_SERV = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@FC_FID_ALIASES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fc_gs_setup(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fc_wka_ports*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.zfcp_fc_wka_ports* @kzalloc(i32 16, i32 %5)
  store %struct.zfcp_fc_wka_ports* %6, %struct.zfcp_fc_wka_ports** %4, align 8
  %7 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %8 = icmp ne %struct.zfcp_fc_wka_ports* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %14, i32 0, i32 0
  store %struct.zfcp_fc_wka_ports* %13, %struct.zfcp_fc_wka_ports** %15, align 8
  %16 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %16, i32 0, i32 3
  %18 = load i32, i32* @FC_FID_MGMT_SERV, align 4
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %20 = call i32 @zfcp_fc_wka_port_init(i32* %17, i32 %18, %struct.zfcp_adapter* %19)
  %21 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %21, i32 0, i32 2
  %23 = load i32, i32* @FC_FID_TIME_SERV, align 4
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %25 = call i32 @zfcp_fc_wka_port_init(i32* %22, i32 %23, %struct.zfcp_adapter* %24)
  %26 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %26, i32 0, i32 1
  %28 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %30 = call i32 @zfcp_fc_wka_port_init(i32* %27, i32 %28, %struct.zfcp_adapter* %29)
  %31 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %4, align 8
  %32 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %31, i32 0, i32 0
  %33 = load i32, i32* @FC_FID_ALIASES, align 4
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %35 = call i32 @zfcp_fc_wka_port_init(i32* %32, i32 %33, %struct.zfcp_adapter* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %12, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.zfcp_fc_wka_ports* @kzalloc(i32, i32) #1

declare dso_local i32 @zfcp_fc_wka_port_init(i32*, i32, %struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
