; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_teardown_frame_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_teardown_frame_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32*, i32*, %struct.megasas_cmd** }
%struct.megasas_cmd = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_teardown_frame_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_teardown_frame_pool(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_cmd*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %75

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 3
  %22 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %22, i64 %24
  %26 = load %struct.megasas_cmd*, %struct.megasas_cmd** %25, align 8
  store %struct.megasas_cmd* %26, %struct.megasas_cmd** %5, align 8
  %27 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_pool_free(i32* %34, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %19
  %43 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_pool_free(i32* %50, i64 %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @dma_pool_destroy(i32* %65)
  %67 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %68 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @dma_pool_destroy(i32* %69)
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %74 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %62, %13
  ret void
}

declare dso_local i32 @dma_pool_free(i32*, i64, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
