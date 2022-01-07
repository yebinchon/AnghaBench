; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_valid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_valid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdb_dump_entry = type { i32, i32, i32* }
%struct.ethsw_port_priv = type { i32 }

@DPSW_FDB_ENTRY_TYPE_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdb_dump_entry*, %struct.ethsw_port_priv*)* @port_fdb_valid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fdb_valid_entry(%struct.fdb_dump_entry* %0, %struct.ethsw_port_priv* %1) #0 {
  %3 = alloca %struct.fdb_dump_entry*, align 8
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fdb_dump_entry* %0, %struct.fdb_dump_entry** %3, align 8
  store %struct.ethsw_port_priv* %1, %struct.ethsw_port_priv** %4, align 8
  %7 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %3, align 8
  %11 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DPSW_FDB_ENTRY_TYPE_UNICAST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %3, align 8
  %18 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %3, align 8
  %27 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 8
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %33, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %25, %16
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
