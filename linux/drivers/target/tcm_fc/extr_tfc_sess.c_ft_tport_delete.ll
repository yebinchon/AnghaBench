; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_tport = type { %struct.ft_tpg*, %struct.fc_lport* }
%struct.ft_tpg = type { i32* }
%struct.fc_lport = type { %struct.ft_tport**, i32 }

@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_tport*)* @ft_tport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_tport_delete(%struct.ft_tport* %0) #0 {
  %2 = alloca %struct.ft_tport*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.ft_tpg*, align 8
  store %struct.ft_tport* %0, %struct.ft_tport** %2, align 8
  %5 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %6 = call i32 @ft_sess_delete_all(%struct.ft_tport* %5)
  %7 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %8 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %7, i32 0, i32 1
  %9 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  store %struct.fc_lport* %9, %struct.fc_lport** %3, align 8
  %10 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 0
  %19 = load %struct.ft_tport**, %struct.ft_tport*** %18, align 8
  %20 = load i64, i64* @FC_TYPE_FCP, align 8
  %21 = getelementptr inbounds %struct.ft_tport*, %struct.ft_tport** %19, i64 %20
  %22 = load %struct.ft_tport*, %struct.ft_tport** %21, align 8
  %23 = icmp ne %struct.ft_tport* %16, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 0
  %28 = load %struct.ft_tport**, %struct.ft_tport*** %27, align 8
  %29 = load i64, i64* @FC_TYPE_FCP, align 8
  %30 = getelementptr inbounds %struct.ft_tport*, %struct.ft_tport** %28, i64 %29
  %31 = load %struct.ft_tport*, %struct.ft_tport** %30, align 8
  %32 = call i32 @RCU_INIT_POINTER(%struct.ft_tport* %31, i32* null)
  %33 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %34 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %33, i32 0, i32 0
  %35 = load %struct.ft_tpg*, %struct.ft_tpg** %34, align 8
  store %struct.ft_tpg* %35, %struct.ft_tpg** %4, align 8
  %36 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %37 = icmp ne %struct.ft_tpg* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %40 = getelementptr inbounds %struct.ft_tpg, %struct.ft_tpg* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %42 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %41, i32 0, i32 0
  store %struct.ft_tpg* null, %struct.ft_tpg** %42, align 8
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  %45 = load i32, i32* @rcu, align 4
  %46 = call i32 @kfree_rcu(%struct.ft_tport* %44, i32 %45)
  ret void
}

declare dso_local i32 @ft_sess_delete_all(%struct.ft_tport*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.ft_tport*, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ft_tport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
