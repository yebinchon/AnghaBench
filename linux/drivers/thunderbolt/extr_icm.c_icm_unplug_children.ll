; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_unplug_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_unplug_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.tb_port*, %struct.TYPE_5__ }
%struct.tb_port = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.tb_switch* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @icm_unplug_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_unplug_children(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %5 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %6 = call i64 @tb_route(%struct.tb_switch* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %15 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %13, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %12
  %20 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %21 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %20, i32 0, i32 1
  %22 = load %struct.tb_port*, %struct.tb_port** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %22, i64 %24
  store %struct.tb_port* %25, %struct.tb_port** %4, align 8
  %26 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %27 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %32 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %46

35:                                               ; preds = %19
  %36 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %37 = call i64 @tb_port_has_remote(%struct.tb_port* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %41 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.tb_switch*, %struct.tb_switch** %43, align 8
  call void @icm_unplug_children(%struct.tb_switch* %44)
  br label %45

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i64 @tb_port_has_remote(%struct.tb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
