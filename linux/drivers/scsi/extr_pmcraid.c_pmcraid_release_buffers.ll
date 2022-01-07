; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i64, i32*, %struct.TYPE_2__*, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_release_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_release_buffers(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %3 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %4 = call i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance* %3)
  %5 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %6 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %7 = call i32 @pmcraid_release_control_blocks(%struct.pmcraid_instance* %5, i32 %6)
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %9 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %10 = call i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance* %8, i32 %9)
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %12 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %13 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance* %11, i32 %14)
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dma_free_coherent(i32* %24, i32 4, i32* %27, i64 %30)
  %32 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %33 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %20, %1
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %43 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %47 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %50 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dma_free_coherent(i32* %45, i32 4, i32* %48, i64 %51)
  %53 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %54 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %56 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_release_control_blocks(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
