; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_fdb_del_uc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_fdb_del_uc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_port_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dpsw_fdb_unicast_cfg = type { i32, i32, i32, i32 }

@DPSW_FDB_ENTRY_STATIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dpsw_fdb_remove_unicast err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_port_priv*, i8*)* @ethsw_port_fdb_del_uc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_port_fdb_del_uc(%struct.ethsw_port_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.ethsw_port_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpsw_fdb_unicast_cfg, align 4
  %6 = alloca i32, align 4
  store %struct.ethsw_port_priv* %0, %struct.ethsw_port_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.dpsw_fdb_unicast_cfg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, %struct.dpsw_fdb_unicast_cfg* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @DPSW_FDB_ENTRY_STATIC, align 4
  %13 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, %struct.dpsw_fdb_unicast_cfg* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, %struct.dpsw_fdb_unicast_cfg* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @ether_addr_copy(i32 %15, i8* %16)
  %18 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dpsw_fdb_remove_unicast(i32 %22, i32 0, i32 %27, i32 0, %struct.dpsw_fdb_unicast_cfg* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @netdev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %31, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #2

declare dso_local i32 @dpsw_fdb_remove_unicast(i32, i32, i32, i32, %struct.dpsw_fdb_unicast_cfg*) #2

declare dso_local i32 @netdev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
