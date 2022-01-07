; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_core = type { i32*, i32, i32, i32 }
%struct.dpsw_vlan_cfg = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"dpsw_vlan_add err %d\0A\00", align 1
@ETHSW_VLAN_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_core*, i64)* @ethsw_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_add_vlan(%struct.ethsw_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpsw_vlan_cfg, align 4
  store %struct.ethsw_core* %0, %struct.ethsw_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast %struct.dpsw_vlan_cfg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %10 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %13 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @dpsw_vlan_add(i32 %11, i32 0, i32 %14, i64 %15, %struct.dpsw_vlan_cfg* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %21 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @ETHSW_VLAN_MEMBER, align 4
  %28 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %29 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpsw_vlan_add(i32, i32, i32, i64, %struct.dpsw_vlan_cfg*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
