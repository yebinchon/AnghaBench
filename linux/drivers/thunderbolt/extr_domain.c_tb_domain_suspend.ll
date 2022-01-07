; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_domain_suspend(%struct.tb* %0) #0 {
  %2 = alloca %struct.tb*, align 8
  store %struct.tb* %0, %struct.tb** %2, align 8
  %3 = load %struct.tb*, %struct.tb** %2, align 8
  %4 = getelementptr inbounds %struct.tb, %struct.tb* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.tb*)**
  %8 = load i32 (%struct.tb*)*, i32 (%struct.tb*)** %7, align 8
  %9 = icmp ne i32 (%struct.tb*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.tb*, %struct.tb** %2, align 8
  %12 = getelementptr inbounds %struct.tb, %struct.tb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.tb*)**
  %16 = load i32 (%struct.tb*)*, i32 (%struct.tb*)** %15, align 8
  %17 = load %struct.tb*, %struct.tb** %2, align 8
  %18 = call i32 %16(%struct.tb* %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %10
  %21 = phi i32 [ %18, %10 ], [ 0, %19 ]
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
