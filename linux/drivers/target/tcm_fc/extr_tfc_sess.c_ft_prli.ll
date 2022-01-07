; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_els_spp = type { i32 }

@ft_lport_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"port_id %x flags %x ret %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* @ft_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_prli(%struct.fc_rport_priv* %0, i32 %1, %struct.fc_els_spp* %2, %struct.fc_els_spp* %3) #0 {
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_els_spp*, align 8
  %8 = alloca %struct.fc_els_spp*, align 8
  %9 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fc_els_spp* %2, %struct.fc_els_spp** %7, align 8
  store %struct.fc_els_spp* %3, %struct.fc_els_spp** %8, align 8
  %10 = call i32 @mutex_lock(i32* @ft_lport_lock)
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.fc_els_spp*, %struct.fc_els_spp** %7, align 8
  %14 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %15 = call i32 @ft_prli_locked(%struct.fc_rport_priv* %11, i32 %12, %struct.fc_els_spp* %13, %struct.fc_els_spp* %14)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %18 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %21 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fc_els_spp*, %struct.fc_els_spp** %7, align 8
  %25 = icmp ne %struct.fc_els_spp* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.fc_els_spp*, %struct.fc_els_spp** %7, align 8
  %28 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @TFC_SESS_DBG(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ft_prli_locked(%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @TFC_SESS_DBG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
