; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_delete_internal_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_delete_internal_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mvumi_cmd = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.mvumi_sgl = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_cmd*)* @mvumi_delete_internal_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_delete_internal_cmd(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_cmd*, align 8
  %5 = alloca %struct.mvumi_sgl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %4, align 8
  %8 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %9 = icmp ne %struct.mvumi_cmd* %8, null
  br i1 %9, label %10, label %71

10:                                               ; preds = %2
  %11 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %10
  %16 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = bitcast i32* %28 to %struct.mvumi_sgl*
  store %struct.mvumi_sgl* %29, %struct.mvumi_sgl** %5, align 8
  %30 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %31 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sgd_getsz(%struct.mvumi_hba* %30, %struct.mvumi_sgl* %31, i32 %32)
  %34 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %5, align 8
  %35 = getelementptr inbounds %struct.mvumi_sgl, %struct.mvumi_sgl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %5, align 8
  %39 = getelementptr inbounds %struct.mvumi_sgl, %struct.mvumi_sgl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 16
  %42 = shl i32 %41, 16
  %43 = or i32 %37, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dma_free_coherent(i32* %47, i32 %48, %struct.TYPE_4__* %51, i32 %52)
  br label %54

54:                                               ; preds = %22, %15
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(i32* %58, i32 %61, %struct.TYPE_4__* %64, i32 %67)
  %69 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %4, align 8
  %70 = call i32 @kfree(%struct.mvumi_cmd* %69)
  br label %71

71:                                               ; preds = %54, %10, %2
  ret void
}

declare dso_local i32 @sgd_getsz(%struct.mvumi_hba*, %struct.mvumi_sgl*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(%struct.mvumi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
