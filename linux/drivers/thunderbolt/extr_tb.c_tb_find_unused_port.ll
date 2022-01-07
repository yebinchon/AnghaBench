; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_unused_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_unused_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_port* (%struct.tb_switch*, i32)* @tb_find_unused_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_port* @tb_find_unused_port(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %65, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %7
  %15 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %16 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %15, i32 0, i32 0
  %17 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %17, i64 %19
  %21 = call i64 @tb_is_upstream_port(%struct.tb_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %65

24:                                               ; preds = %14
  %25 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %26 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %25, i32 0, i32 0
  %27 = load %struct.tb_port*, %struct.tb_port** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %27, i64 %29
  %31 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %65

37:                                               ; preds = %24
  %38 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 0
  %40 = load %struct.tb_port*, %struct.tb_port** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %40, i64 %42
  %44 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %65

48:                                               ; preds = %37
  %49 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %50 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %49, i32 0, i32 0
  %51 = load %struct.tb_port*, %struct.tb_port** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %51, i64 %53
  %55 = call i64 @tb_port_is_enabled(%struct.tb_port* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %65

58:                                               ; preds = %48
  %59 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %60 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %59, i32 0, i32 0
  %61 = load %struct.tb_port*, %struct.tb_port** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %61, i64 %63
  store %struct.tb_port* %64, %struct.tb_port** %3, align 8
  br label %69

65:                                               ; preds = %57, %47, %36, %23
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %7

68:                                               ; preds = %7
  store %struct.tb_port* null, %struct.tb_port** %3, align 8
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  ret %struct.tb_port* %70
}

declare dso_local i64 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local i64 @tb_port_is_enabled(%struct.tb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
