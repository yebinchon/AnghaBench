; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tb_switch = type { %struct.tb_switch*, %struct.tb_switch*, %struct.tb_switch*, %struct.tb_switch*, %struct.tb_switch*, %struct.tb_switch*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tb_switch_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_switch_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.tb_switch* @tb_to_switch(%struct.device* %5)
  store %struct.tb_switch* %6, %struct.tb_switch** %3, align 8
  %7 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dma_port_free(i32 %9)
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %12, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 2
  %21 = load %struct.tb_switch*, %struct.tb_switch** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i64 %23
  %25 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %18
  %29 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %30 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %29, i32 0, i32 2
  %31 = load %struct.tb_switch*, %struct.tb_switch** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %31, i64 %33
  %35 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %34, i32 0, i32 7
  %36 = call i32 @ida_destroy(i32* %35)
  %37 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %38 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %37, i32 0, i32 2
  %39 = load %struct.tb_switch*, %struct.tb_switch** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %39, i64 %41
  %43 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %42, i32 0, i32 6
  %44 = call i32 @ida_destroy(i32* %43)
  br label %45

45:                                               ; preds = %28, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %51 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %50, i32 0, i32 5
  %52 = load %struct.tb_switch*, %struct.tb_switch** %51, align 8
  %53 = call i32 @kfree(%struct.tb_switch* %52)
  %54 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %55 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %54, i32 0, i32 4
  %56 = load %struct.tb_switch*, %struct.tb_switch** %55, align 8
  %57 = call i32 @kfree(%struct.tb_switch* %56)
  %58 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %59 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %58, i32 0, i32 3
  %60 = load %struct.tb_switch*, %struct.tb_switch** %59, align 8
  %61 = call i32 @kfree(%struct.tb_switch* %60)
  %62 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %63 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %62, i32 0, i32 2
  %64 = load %struct.tb_switch*, %struct.tb_switch** %63, align 8
  %65 = call i32 @kfree(%struct.tb_switch* %64)
  %66 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %67 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %66, i32 0, i32 1
  %68 = load %struct.tb_switch*, %struct.tb_switch** %67, align 8
  %69 = call i32 @kfree(%struct.tb_switch* %68)
  %70 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %71 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %70, i32 0, i32 0
  %72 = load %struct.tb_switch*, %struct.tb_switch** %71, align 8
  %73 = call i32 @kfree(%struct.tb_switch* %72)
  %74 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %75 = call i32 @kfree(%struct.tb_switch* %74)
  ret void
}

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

declare dso_local i32 @dma_port_free(i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
