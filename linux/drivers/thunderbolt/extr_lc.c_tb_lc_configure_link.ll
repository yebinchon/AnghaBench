; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_configure_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_configure_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tb_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_lc_configure_link(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %7 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %14 = call i32 @tb_route(%struct.tb_switch* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %12
  %18 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %19 = call %struct.tb_port* @tb_upstream_port(%struct.tb_switch* %18)
  store %struct.tb_port* %19, %struct.tb_port** %4, align 8
  %20 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %21 = call i32 @tb_route(%struct.tb_switch* %20)
  %22 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %23 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tb_to_switch(i32 %25)
  %27 = call %struct.tb_port* @tb_port_at(i32 %21, i32 %26)
  store %struct.tb_port* %27, %struct.tb_port** %5, align 8
  %28 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %29 = call i32 @tb_lc_configure_lane(%struct.tb_port* %28, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %36 = call i32 @tb_lc_configure_lane(%struct.tb_port* %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %41 = call i32 @tb_lc_configure_lane(%struct.tb_port* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %32, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
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
