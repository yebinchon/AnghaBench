; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_tunnel_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_tunnel_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_port = type { %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_cm = type { i32 }
%struct.tb_tunnel = type { i32 }

@TB_TYPE_DP_HDMI_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DP tunnel allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"DP tunnel activation failed, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_port*)* @tb_tunnel_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_tunnel_dp(%struct.tb* %0, %struct.tb_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_cm*, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca %struct.tb_tunnel*, align 8
  %9 = alloca %struct.tb_port*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_port* %1, %struct.tb_port** %5, align 8
  %10 = load %struct.tb*, %struct.tb** %4, align 8
  %11 = call %struct.tb_cm* @tb_priv(%struct.tb* %10)
  store %struct.tb_cm* %11, %struct.tb_cm** %6, align 8
  %12 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %13 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %12, i32 0, i32 0
  %14 = load %struct.tb_switch*, %struct.tb_switch** %13, align 8
  store %struct.tb_switch* %14, %struct.tb_switch** %7, align 8
  %15 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %16 = call i64 @tb_port_is_enabled(%struct.tb_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %33, %19
  %21 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %22 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tb_switch* @tb_to_switch(i32 %24)
  store %struct.tb_switch* %25, %struct.tb_switch** %7, align 8
  %26 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %27 = icmp ne %struct.tb_switch* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %31 = load i32, i32* @TB_TYPE_DP_HDMI_IN, align 4
  %32 = call %struct.tb_port* @tb_find_unused_port(%struct.tb_switch* %30, i32 %31)
  store %struct.tb_port* %32, %struct.tb_port** %9, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.tb_port*, %struct.tb_port** %9, align 8
  %35 = icmp ne %struct.tb_port* %34, null
  %36 = xor i1 %35, true
  br i1 %36, label %20, label %37

37:                                               ; preds = %33
  %38 = load %struct.tb*, %struct.tb** %4, align 8
  %39 = load %struct.tb_port*, %struct.tb_port** %9, align 8
  %40 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %41 = call %struct.tb_tunnel* @tb_tunnel_alloc_dp(%struct.tb* %38, %struct.tb_port* %39, %struct.tb_port* %40)
  store %struct.tb_tunnel* %41, %struct.tb_tunnel** %8, align 8
  %42 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %43 = icmp ne %struct.tb_tunnel* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %46 = call i32 @tb_port_dbg(%struct.tb_port* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %37
  %50 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %51 = call i64 @tb_tunnel_activate(%struct.tb_tunnel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %55 = call i32 @tb_port_info(%struct.tb_port* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %57 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %62 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %61, i32 0, i32 0
  %63 = load %struct.tb_cm*, %struct.tb_cm** %6, align 8
  %64 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %53, %44, %28, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.tb_cm* @tb_priv(%struct.tb*) #1

declare dso_local i64 @tb_port_is_enabled(%struct.tb_port*) #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local %struct.tb_port* @tb_find_unused_port(%struct.tb_switch*, i32) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc_dp(%struct.tb*, %struct.tb_port*, %struct.tb_port*) #1

declare dso_local i32 @tb_port_dbg(%struct.tb_port*, i8*) #1

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
