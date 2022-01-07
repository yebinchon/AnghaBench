; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_discover_tunnels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_discover_tunnels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.tb_port*, %struct.TYPE_9__, %struct.tb* }
%struct.tb_port = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.tb_switch* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.tb = type { i32 }
%struct.tb_cm = type { i32 }
%struct.tb_tunnel = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.tb_switch* }
%struct.TYPE_7__ = type { %struct.tb_switch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @tb_discover_tunnels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_discover_tunnels(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_cm*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_tunnel*, align 8
  %8 = alloca %struct.tb_switch*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %9 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 3
  %11 = load %struct.tb*, %struct.tb** %10, align 8
  store %struct.tb* %11, %struct.tb** %3, align 8
  %12 = load %struct.tb*, %struct.tb** %3, align 8
  %13 = call %struct.tb_cm* @tb_priv(%struct.tb* %12)
  store %struct.tb_cm* %13, %struct.tb_cm** %4, align 8
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %75, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %15, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %14
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %7, align 8
  %22 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %23 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %22, i32 0, i32 1
  %24 = load %struct.tb_port*, %struct.tb_port** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %24, i64 %26
  store %struct.tb_port* %27, %struct.tb_port** %5, align 8
  %28 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %29 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 129, label %32
    i32 128, label %36
  ]

32:                                               ; preds = %21
  %33 = load %struct.tb*, %struct.tb** %3, align 8
  %34 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %35 = call %struct.tb_tunnel* @tb_tunnel_discover_dp(%struct.tb* %33, %struct.tb_port* %34)
  store %struct.tb_tunnel* %35, %struct.tb_tunnel** %7, align 8
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.tb*, %struct.tb** %3, align 8
  %38 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %39 = call %struct.tb_tunnel* @tb_tunnel_discover_pci(%struct.tb* %37, %struct.tb_port* %38)
  store %struct.tb_tunnel* %39, %struct.tb_tunnel** %7, align 8
  br label %41

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40, %36, %32
  %42 = load %struct.tb_tunnel*, %struct.tb_tunnel** %7, align 8
  %43 = icmp ne %struct.tb_tunnel* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %75

45:                                               ; preds = %41
  %46 = load %struct.tb_tunnel*, %struct.tb_tunnel** %7, align 8
  %47 = call i64 @tb_tunnel_is_pci(%struct.tb_tunnel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.tb_tunnel*, %struct.tb_tunnel** %7, align 8
  %51 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.tb_switch*, %struct.tb_switch** %53, align 8
  store %struct.tb_switch* %54, %struct.tb_switch** %8, align 8
  br label %55

55:                                               ; preds = %63, %49
  %56 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %57 = load %struct.tb_tunnel*, %struct.tb_tunnel** %7, align 8
  %58 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.tb_switch*, %struct.tb_switch** %60, align 8
  %62 = icmp ne %struct.tb_switch* %56, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %65 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %67 = call %struct.tb_switch* @tb_switch_parent(%struct.tb_switch* %66)
  store %struct.tb_switch* %67, %struct.tb_switch** %8, align 8
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %45
  %70 = load %struct.tb_tunnel*, %struct.tb_tunnel** %7, align 8
  %71 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %70, i32 0, i32 0
  %72 = load %struct.tb_cm*, %struct.tb_cm** %4, align 8
  %73 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %69, %44
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %14

78:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %107, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %82 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %80, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %79
  %87 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %88 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %87, i32 0, i32 1
  %89 = load %struct.tb_port*, %struct.tb_port** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %89, i64 %91
  %93 = call i64 @tb_port_has_remote(%struct.tb_port* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %97 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %96, i32 0, i32 1
  %98 = load %struct.tb_port*, %struct.tb_port** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %98, i64 %100
  %102 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.tb_switch*, %struct.tb_switch** %104, align 8
  call void @tb_discover_tunnels(%struct.tb_switch* %105)
  br label %106

106:                                              ; preds = %95, %86
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %79

110:                                              ; preds = %79
  ret void
}

declare dso_local %struct.tb_cm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_discover_dp(%struct.tb*, %struct.tb_port*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_discover_pci(%struct.tb*, %struct.tb_port*) #1

declare dso_local i64 @tb_tunnel_is_pci(%struct.tb_tunnel*) #1

declare dso_local %struct.tb_switch* @tb_switch_parent(%struct.tb_switch*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @tb_port_has_remote(%struct.tb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
