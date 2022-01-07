; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_approve_xdomain_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_approve_xdomain_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32, i32 }
%struct.tb_xdomain = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_cm = type { i32 }
%struct.tb_port = type { i32 }
%struct.tb_tunnel = type { i32 }
%struct.tb_switch = type { i32 }

@TB_TYPE_NHI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DMA tunnel activation failed, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_xdomain*)* @tb_approve_xdomain_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_approve_xdomain_paths(%struct.tb* %0, %struct.tb_xdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_xdomain*, align 8
  %6 = alloca %struct.tb_cm*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_port*, align 8
  %9 = alloca %struct.tb_tunnel*, align 8
  %10 = alloca %struct.tb_switch*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_xdomain* %1, %struct.tb_xdomain** %5, align 8
  %11 = load %struct.tb*, %struct.tb** %4, align 8
  %12 = call %struct.tb_cm* @tb_priv(%struct.tb* %11)
  store %struct.tb_cm* %12, %struct.tb_cm** %6, align 8
  %13 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %14 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tb_switch* @tb_to_switch(i32 %16)
  store %struct.tb_switch* %17, %struct.tb_switch** %10, align 8
  %18 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %19 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %22 = call %struct.tb_port* @tb_port_at(i32 %20, %struct.tb_switch* %21)
  store %struct.tb_port* %22, %struct.tb_port** %8, align 8
  %23 = load %struct.tb*, %struct.tb** %4, align 8
  %24 = getelementptr inbounds %struct.tb, %struct.tb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TB_TYPE_NHI, align 4
  %27 = call %struct.tb_port* @tb_find_port(i32 %25, i32 %26)
  store %struct.tb_port* %27, %struct.tb_port** %7, align 8
  %28 = load %struct.tb*, %struct.tb** %4, align 8
  %29 = getelementptr inbounds %struct.tb, %struct.tb* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.tb*, %struct.tb** %4, align 8
  %32 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %33 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %34 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %35 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %38 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %41 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %44 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.tb_tunnel* @tb_tunnel_alloc_dma(%struct.tb* %31, %struct.tb_port* %32, %struct.tb_port* %33, i32 %36, i32 %39, i32 %42, i32 %45)
  store %struct.tb_tunnel* %46, %struct.tb_tunnel** %9, align 8
  %47 = load %struct.tb_tunnel*, %struct.tb_tunnel** %9, align 8
  %48 = icmp ne %struct.tb_tunnel* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.tb*, %struct.tb** %4, align 8
  %51 = getelementptr inbounds %struct.tb, %struct.tb* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %78

55:                                               ; preds = %2
  %56 = load %struct.tb_tunnel*, %struct.tb_tunnel** %9, align 8
  %57 = call i64 @tb_tunnel_activate(%struct.tb_tunnel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %61 = call i32 @tb_port_info(%struct.tb_port* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.tb_tunnel*, %struct.tb_tunnel** %9, align 8
  %63 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %62)
  %64 = load %struct.tb*, %struct.tb** %4, align 8
  %65 = getelementptr inbounds %struct.tb, %struct.tb* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %55
  %70 = load %struct.tb_tunnel*, %struct.tb_tunnel** %9, align 8
  %71 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %70, i32 0, i32 0
  %72 = load %struct.tb_cm*, %struct.tb_cm** %6, align 8
  %73 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.tb*, %struct.tb** %4, align 8
  %76 = getelementptr inbounds %struct.tb, %struct.tb* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %59, %49
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.tb_cm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local %struct.tb_port* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local %struct.tb_port* @tb_find_port(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc_dma(%struct.tb*, %struct.tb_port*, %struct.tb_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tb_tunnel_activate(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_port_info(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
