; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_unconfigure_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_unconfigure_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tb_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_lc_unconfigure_link(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %5 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %6 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %11 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %17 = call i32 @tb_route(%struct.tb_switch* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %9, %1
  br label %35

20:                                               ; preds = %15
  %21 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %22 = call %struct.tb_port* @tb_upstream_port(%struct.tb_switch* %21)
  store %struct.tb_port* %22, %struct.tb_port** %3, align 8
  %23 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %24 = call i32 @tb_route(%struct.tb_switch* %23)
  %25 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %26 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @tb_to_switch(i32 %28)
  %30 = call %struct.tb_port* @tb_port_at(i32 %24, i32 %29)
  store %struct.tb_port* %30, %struct.tb_port** %4, align 8
  %31 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %32 = call i32 @tb_lc_configure_lane(%struct.tb_port* %31, i32 0)
  %33 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %34 = call i32 @tb_lc_configure_lane(%struct.tb_port* %33, i32 0)
  br label %35

35:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local %struct.tb_port* @tb_upstream_port(%struct.tb_switch*) #1

declare dso_local %struct.tb_port* @tb_port_at(i32, i32) #1

declare dso_local i32 @tb_to_switch(i32) #1

declare dso_local i32 @tb_lc_configure_lane(%struct.tb_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
