; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32, i32*, i64, i64 }

@TB_CTL_RX_PKG_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ctl_free(%struct.tb_ctl* %0) #0 {
  %2 = alloca %struct.tb_ctl*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %2, align 8
  %4 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %5 = icmp ne %struct.tb_ctl* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %9 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %14 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @tb_ring_free(i64 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %19 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %24 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @tb_ring_free(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @TB_CTL_RX_PKG_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %34 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tb_ctl_pkg_free(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %46 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_pool_destroy(i32 %47)
  %49 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %50 = call i32 @kfree(%struct.tb_ctl* %49)
  br label %51

51:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @tb_ring_free(i64) #1

declare dso_local i32 @tb_ctl_pkg_free(i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.tb_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
