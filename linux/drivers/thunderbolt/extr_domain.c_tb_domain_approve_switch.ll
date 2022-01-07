; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_approve_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_approve_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.tb_switch = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_domain_approve_switch(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %7 = load %struct.tb*, %struct.tb** %4, align 8
  %8 = getelementptr inbounds %struct.tb, %struct.tb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.tb*, %struct.tb_switch*)**
  %12 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %11, align 8
  %13 = icmp ne i32 (%struct.tb*, %struct.tb_switch*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tb_switch* @tb_to_switch(i32 %21)
  store %struct.tb_switch* %22, %struct.tb_switch** %6, align 8
  %23 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %24 = icmp ne %struct.tb_switch* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %27 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.tb*, %struct.tb** %4, align 8
  %35 = getelementptr inbounds %struct.tb, %struct.tb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.tb*, %struct.tb_switch*)**
  %39 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %38, align 8
  %40 = load %struct.tb*, %struct.tb** %4, align 8
  %41 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %42 = call i32 %39(%struct.tb* %40, %struct.tb_switch* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %30, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
