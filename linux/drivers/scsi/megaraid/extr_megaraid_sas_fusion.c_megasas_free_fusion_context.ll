; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_fusion_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_fusion_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { i32, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_free_fusion_context(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 0
  %6 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  store %struct.fusion_context* %6, %struct.fusion_context** %3, align 8
  %7 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %8 = icmp ne %struct.fusion_context* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %11 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %16 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @is_vmalloc_addr(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %22 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @vfree(i64 %23)
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %27 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %31 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @free_pages(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %37 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %42 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @is_vmalloc_addr(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %48 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @vfree(i64 %49)
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %53 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %57 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @free_pages(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %63 = call i32 @kfree(%struct.fusion_context* %62)
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i64 @is_vmalloc_addr(i64) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i32 @free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.fusion_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
