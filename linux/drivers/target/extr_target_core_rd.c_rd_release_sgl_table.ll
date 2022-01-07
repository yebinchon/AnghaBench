; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_release_sgl_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_release_sgl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i32 }
%struct.rd_dev_sg_table = type { i64, %struct.rd_dev_sg_table* }
%struct.page = type { i32 }
%struct.scatterlist = type { i64, %struct.scatterlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rd_dev*, %struct.rd_dev_sg_table*, i64)* @rd_release_sgl_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rd_release_sgl_table(%struct.rd_dev* %0, %struct.rd_dev_sg_table* %1, i64 %2) #0 {
  %4 = alloca %struct.rd_dev*, align 8
  %5 = alloca %struct.rd_dev_sg_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rd_dev* %0, %struct.rd_dev** %4, align 8
  store %struct.rd_dev_sg_table* %1, %struct.rd_dev_sg_table** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %18, i64 %19
  %21 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %20, i32 0, i32 1
  %22 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %21, align 8
  %23 = bitcast %struct.rd_dev_sg_table* %22 to %struct.scatterlist*
  store %struct.scatterlist* %23, %struct.scatterlist** %8, align 8
  %24 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %24, i64 %25
  %27 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %46, %17
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i64 %35
  %37 = call %struct.page* @sg_page(%struct.scatterlist* %36)
  store %struct.page* %37, %struct.page** %7, align 8
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = call i32 @__free_page(%struct.page* %41)
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %51 = call i32 @kfree(%struct.scatterlist* %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %13

55:                                               ; preds = %13
  %56 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %5, align 8
  %57 = bitcast %struct.rd_dev_sg_table* %56 to %struct.scatterlist*
  %58 = call i32 @kfree(%struct.scatterlist* %57)
  %59 = load i64, i64* %11, align 8
  ret i64 %59
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
