; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_compatible_roles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_compatible_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_rport_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FC_PORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_rport_priv*)* @fc_rport_compatible_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_rport_compatible_roles(%struct.fc_lport* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %7 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FC_PORT_ROLE_UNKNOWN, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %46

29:                                               ; preds = %21, %13
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %31 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %37, %29
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %28, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
