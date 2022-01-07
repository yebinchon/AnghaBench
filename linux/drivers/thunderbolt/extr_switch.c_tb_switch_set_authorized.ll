; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_set_authorized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_set_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32)* @tb_switch_set_authorized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_switch_set_authorized(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @mutex_trylock(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @restart_syscall()
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %69

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %55 [
    i32 1, label %25
    i32 2, label %43
  ]

25:                                               ; preds = %23
  %26 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %27 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %32 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %35 = call i32 @tb_domain_approve_switch_key(%struct.TYPE_6__* %33, %struct.tb_switch* %34)
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %38 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %41 = call i32 @tb_domain_approve_switch(%struct.TYPE_6__* %39, %struct.tb_switch* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %30
  br label %56

43:                                               ; preds = %23
  %44 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %45 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %50 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %53 = call i32 @tb_domain_challenge_switch_key(%struct.TYPE_6__* %51, %struct.tb_switch* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %43
  br label %56

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %54, %42
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %62 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %64 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* @KOBJ_CHANGE, align 4
  %67 = call i32 @kobject_uevent(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  br label %69

69:                                               ; preds = %68, %22
  %70 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %71 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i32 @tb_domain_approve_switch_key(%struct.TYPE_6__*, %struct.tb_switch*) #1

declare dso_local i32 @tb_domain_approve_switch(%struct.TYPE_6__*, %struct.tb_switch*) #1

declare dso_local i32 @tb_domain_challenge_switch_key(%struct.TYPE_6__*, %struct.tb_switch*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
