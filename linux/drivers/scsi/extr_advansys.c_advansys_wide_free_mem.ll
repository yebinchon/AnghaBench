; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_board = type { i32*, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.adv_dvc_var }
%struct.adv_dvc_var = type { i32*, i32 }

@ADV_CARRIER_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asc_board*)* @advansys_wide_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advansys_wide_free_mem(%struct.asc_board* %0) #0 {
  %2 = alloca %struct.asc_board*, align 8
  %3 = alloca %struct.adv_dvc_var*, align 8
  store %struct.asc_board* %0, %struct.asc_board** %2, align 8
  %4 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %5 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.adv_dvc_var* %6, %struct.adv_dvc_var** %3, align 8
  %7 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %8 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %13 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ADV_CARRIER_BUFSIZE, align 4
  %16 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %17 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %20 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32 %14, i32 %15, i32* %18, i32 %21)
  %23 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %24 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %27 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %32 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %35 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %38 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %41 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(i32 %33, i32 %36, i32* %39, i32 %42)
  %44 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %45 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %30, %25
  %47 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %48 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %53 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @dma_pool_destroy(i32* %54)
  %56 = load %struct.asc_board*, %struct.asc_board** %2, align 8
  %57 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
