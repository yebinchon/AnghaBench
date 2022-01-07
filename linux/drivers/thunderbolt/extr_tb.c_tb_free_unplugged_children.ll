; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_free_unplugged_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_free_unplugged_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i64, %struct.tb_port*, %struct.TYPE_6__ }
%struct.tb_port = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.tb_switch* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @tb_free_unplugged_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_free_unplugged_children(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %58, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %5
  %13 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 1
  %15 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %15, i64 %17
  store %struct.tb_port* %18, %struct.tb_port** %4, align 8
  %19 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %20 = call i32 @tb_port_has_remote(%struct.tb_port* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %58

23:                                               ; preds = %12
  %24 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %25 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.tb_switch*, %struct.tb_switch** %27, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %34 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.tb_switch*, %struct.tb_switch** %36, align 8
  %38 = call i32 @tb_switch_remove(%struct.tb_switch* %37)
  %39 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %40 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %39, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %42 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %47 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %32
  br label %57

51:                                               ; preds = %23
  %52 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %53 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.tb_switch*, %struct.tb_switch** %55, align 8
  call void @tb_free_unplugged_children(%struct.tb_switch* %56)
  br label %57

57:                                               ; preds = %51, %50
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %5

61:                                               ; preds = %5
  ret void
}

declare dso_local i32 @tb_port_has_remote(%struct.tb_port*) #1

declare dso_local i32 @tb_switch_remove(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
