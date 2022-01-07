; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_enable_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_enable_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i64, i32, i32, i64, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_xdomain_enable_paths(%struct.tb_xdomain* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %13 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %16 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %21 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  store i32 %30, i32* %11, align 4
  br label %49

31:                                               ; preds = %5
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %34 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %37 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %40 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %43 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %45 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %48 = call i32 @tb_domain_approve_xdomain_paths(i32 %46, %struct.tb_xdomain* %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %31, %29
  %50 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %51 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tb_domain_approve_xdomain_paths(i32, %struct.tb_xdomain*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
