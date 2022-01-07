; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_internal_cmd_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_internal_cmd_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mvumi_cmd = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mvumi_sgl = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*, i32)* @mvumi_internal_cmd_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_internal_cmd_sgl(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca %struct.mvumi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvumi_sgl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %5, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %16 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32* %18, i32 %19, i32* %10, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %61

25:                                               ; preds = %14
  %26 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = bitcast i32* %31 to %struct.mvumi_sgl*
  store %struct.mvumi_sgl* %32, %struct.mvumi_sgl** %8, align 8
  %33 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %8, align 8
  %44 = getelementptr inbounds %struct.mvumi_sgl, %struct.mvumi_sgl* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %8, align 8
  %49 = getelementptr inbounds %struct.mvumi_sgl, %struct.mvumi_sgl* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %51 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %8, align 8
  %55 = getelementptr inbounds %struct.mvumi_sgl, %struct.mvumi_sgl* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %57 = load %struct.mvumi_sgl*, %struct.mvumi_sgl** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = call i32 @sgd_setsz(%struct.mvumi_hba* %56, %struct.mvumi_sgl* %57, i8* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %25, %24, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @sgd_setsz(%struct.mvumi_hba*, %struct.mvumi_sgl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
