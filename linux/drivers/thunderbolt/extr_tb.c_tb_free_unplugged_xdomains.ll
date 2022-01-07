; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_free_unplugged_xdomains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_free_unplugged_xdomains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_5__ }
%struct.tb_port = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.tb_switch* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @tb_free_unplugged_xdomains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_free_unplugged_xdomains(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %6
  %14 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %15 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %14, i32 0, i32 0
  %16 = load %struct.tb_port*, %struct.tb_port** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %16, i64 %18
  store %struct.tb_port* %19, %struct.tb_port** %5, align 8
  %20 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %21 = call i64 @tb_is_upstream_port(%struct.tb_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %61

24:                                               ; preds = %13
  %25 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %26 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %31 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %38 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @tb_xdomain_remove(%struct.TYPE_6__* %39)
  %41 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %42 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %41, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %60

45:                                               ; preds = %29, %24
  %46 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %47 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %52 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.tb_switch*, %struct.tb_switch** %54, align 8
  %56 = call i32 @tb_free_unplugged_xdomains(%struct.tb_switch* %55)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %45
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %6

64:                                               ; preds = %6
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local i32 @tb_xdomain_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
