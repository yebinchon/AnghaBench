; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_add_xdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_add_xdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32 }
%struct.tb_xdomain = type { i8*, i8* }
%struct.TYPE_2__ = type { %struct.tb_xdomain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*, i32, i32*, i32*, i8*, i8*)* @add_xdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_xdomain(%struct.tb_switch* %0, i32 %1, i32* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %15 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_sync(i32* %15)
  %17 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %18 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %21 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call %struct.tb_xdomain* @tb_xdomain_alloc(i32 %19, i32* %21, i32 %22, i32* %23, i32* %24)
  store %struct.tb_xdomain* %25, %struct.tb_xdomain** %13, align 8
  %26 = load %struct.tb_xdomain*, %struct.tb_xdomain** %13, align 8
  %27 = icmp ne %struct.tb_xdomain* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  br label %43

29:                                               ; preds = %6
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.tb_xdomain*, %struct.tb_xdomain** %13, align 8
  %32 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.tb_xdomain*, %struct.tb_xdomain** %13, align 8
  %35 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.tb_xdomain*, %struct.tb_xdomain** %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %39 = call %struct.TYPE_2__* @tb_port_at(i32 %37, %struct.tb_switch* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.tb_xdomain* %36, %struct.tb_xdomain** %40, align 8
  %41 = load %struct.tb_xdomain*, %struct.tb_xdomain** %13, align 8
  %42 = call i32 @tb_xdomain_add(%struct.tb_xdomain* %41)
  br label %43

43:                                               ; preds = %29, %28
  %44 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %45 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %44, i32 0, i32 0
  %46 = call i32 @pm_runtime_mark_last_busy(i32* %45)
  %47 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_put_autosuspend(i32* %48)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_alloc(i32, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_xdomain_add(%struct.tb_xdomain*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
