; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_config_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_config_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i64, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PMCRAID_MAX_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_release_config_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_release_config_buffers(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %4 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %5 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %15 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %19 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %17, i32 4, i32* %20, i64 %23)
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %28 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %13, %8, %1
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PMCRAID_MAX_RESOURCES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %41 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %53 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @kfree(%struct.TYPE_4__* %54)
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %57 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %56, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %57, align 8
  br label %58

58:                                               ; preds = %51, %29
  %59 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %60 = call i32 @pmcraid_release_hcams(%struct.pmcraid_instance* %59)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @pmcraid_release_hcams(%struct.pmcraid_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
