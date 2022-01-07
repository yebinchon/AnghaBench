; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_approve_switch_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_approve_switch_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, {}* }
%struct.tb_switch = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_domain_approve_switch_key(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %8 = load %struct.tb*, %struct.tb** %4, align 8
  %9 = getelementptr inbounds %struct.tb, %struct.tb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.tb*, %struct.tb_switch*)**
  %13 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %12, align 8
  %14 = icmp ne i32 (%struct.tb*, %struct.tb_switch*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.tb*, %struct.tb** %4, align 8
  %17 = getelementptr inbounds %struct.tb, %struct.tb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to i32 (%struct.tb*, %struct.tb_switch*)**
  %21 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %20, align 8
  %22 = icmp ne i32 (%struct.tb*, %struct.tb_switch*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %66

26:                                               ; preds = %15
  %27 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %28 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.tb_switch* @tb_to_switch(i32 %30)
  store %struct.tb_switch* %31, %struct.tb_switch** %6, align 8
  %32 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %33 = icmp ne %struct.tb_switch* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %36 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34
  %43 = load %struct.tb*, %struct.tb** %4, align 8
  %44 = getelementptr inbounds %struct.tb, %struct.tb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = bitcast {}** %46 to i32 (%struct.tb*, %struct.tb_switch*)**
  %48 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %47, align 8
  %49 = load %struct.tb*, %struct.tb** %4, align 8
  %50 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %51 = call i32 %48(%struct.tb* %49, %struct.tb_switch* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %42
  %57 = load %struct.tb*, %struct.tb** %4, align 8
  %58 = getelementptr inbounds %struct.tb, %struct.tb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.tb*, %struct.tb_switch*)**
  %62 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %61, align 8
  %63 = load %struct.tb*, %struct.tb** %4, align 8
  %64 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %65 = call i32 %62(%struct.tb* %63, %struct.tb_switch* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %54, %39, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
