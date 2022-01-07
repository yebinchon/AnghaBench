; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, %struct.TYPE_5__* }
%struct.be_mem_descriptor = type { i32, %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SE_MEM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_free_mem(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_mem_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 1
  %8 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %7, align 8
  store %struct.be_mem_descriptor* %8, %struct.be_mem_descriptor** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %66, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SE_MEM_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %56, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %25, i32 0, i32 2
  %27 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %27, i64 %30
  %32 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %35 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %34, i32 0, i32 2
  %36 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %36, i64 %39
  %41 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %43, i32 0, i32 2
  %45 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %45, i64 %48
  %50 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dma_free_coherent(i32* %24, i32 %33, i32 %42, i64 %54)
  br label %56

56:                                               ; preds = %20
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %61 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %60, i32 0, i32 2
  %62 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %61, align 8
  %63 = call i32 @kfree(%struct.be_mem_descriptor* %62)
  %64 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %65 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %64, i32 1
  store %struct.be_mem_descriptor* %65, %struct.be_mem_descriptor** %3, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %9

69:                                               ; preds = %9
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 1
  %72 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %71, align 8
  %73 = call i32 @kfree(%struct.be_mem_descriptor* %72)
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %75 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %74, i32 0, i32 0
  %76 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %75, align 8
  %77 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %76, i32 0, i32 1
  %78 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %77, align 8
  %79 = call i32 @kfree(%struct.be_mem_descriptor* %78)
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %81 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %80, i32 0, i32 0
  %82 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %81, align 8
  %83 = call i32 @kfree(%struct.be_mem_descriptor* %82)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.be_mem_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
