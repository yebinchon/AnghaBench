; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.tb_cm = type { i32 }

@tb_scan_finalize_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*)* @tb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_start(%struct.tb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_cm*, align 8
  %5 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  %6 = load %struct.tb*, %struct.tb** %3, align 8
  %7 = call %struct.tb_cm* @tb_priv(%struct.tb* %6)
  store %struct.tb_cm* %7, %struct.tb_cm** %4, align 8
  %8 = load %struct.tb*, %struct.tb** %3, align 8
  %9 = load %struct.tb*, %struct.tb** %3, align 8
  %10 = getelementptr inbounds %struct.tb, %struct.tb* %9, i32 0, i32 1
  %11 = call %struct.TYPE_9__* @tb_switch_alloc(%struct.tb* %8, i32* %10, i32 0)
  %12 = load %struct.tb*, %struct.tb** %3, align 8
  %13 = getelementptr inbounds %struct.tb, %struct.tb* %12, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %13, align 8
  %14 = load %struct.tb*, %struct.tb** %3, align 8
  %15 = getelementptr inbounds %struct.tb, %struct.tb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.tb*, %struct.tb** %3, align 8
  %21 = getelementptr inbounds %struct.tb, %struct.tb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 @PTR_ERR(%struct.TYPE_9__* %22)
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %1
  %25 = load %struct.tb*, %struct.tb** %3, align 8
  %26 = getelementptr inbounds %struct.tb, %struct.tb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.tb*, %struct.tb** %3, align 8
  %30 = getelementptr inbounds %struct.tb, %struct.tb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @tb_switch_configure(%struct.TYPE_9__* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.tb*, %struct.tb** %3, align 8
  %37 = getelementptr inbounds %struct.tb, %struct.tb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call i32 @tb_switch_put(%struct.TYPE_9__* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %71

41:                                               ; preds = %24
  %42 = load %struct.tb*, %struct.tb** %3, align 8
  %43 = getelementptr inbounds %struct.tb, %struct.tb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = call i32 @tb_switch_add(%struct.TYPE_9__* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.tb*, %struct.tb** %3, align 8
  %50 = getelementptr inbounds %struct.tb, %struct.tb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @tb_switch_put(%struct.TYPE_9__* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %71

54:                                               ; preds = %41
  %55 = load %struct.tb*, %struct.tb** %3, align 8
  %56 = getelementptr inbounds %struct.tb, %struct.tb* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @tb_scan_switch(%struct.TYPE_9__* %57)
  %59 = load %struct.tb*, %struct.tb** %3, align 8
  %60 = getelementptr inbounds %struct.tb, %struct.tb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = call i32 @tb_discover_tunnels(%struct.TYPE_9__* %61)
  %63 = load %struct.tb*, %struct.tb** %3, align 8
  %64 = getelementptr inbounds %struct.tb, %struct.tb* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* @tb_scan_finalize_switch, align 4
  %68 = call i32 @device_for_each_child(i32* %66, i32* null, i32 %67)
  %69 = load %struct.tb_cm*, %struct.tb_cm** %4, align 8
  %70 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %54, %48, %35, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.tb_cm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.TYPE_9__* @tb_switch_alloc(%struct.tb*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @tb_switch_configure(%struct.TYPE_9__*) #1

declare dso_local i32 @tb_switch_put(%struct.TYPE_9__*) #1

declare dso_local i32 @tb_switch_add(%struct.TYPE_9__*) #1

declare dso_local i32 @tb_scan_switch(%struct.TYPE_9__*) #1

declare dso_local i32 @tb_discover_tunnels(%struct.TYPE_9__*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
