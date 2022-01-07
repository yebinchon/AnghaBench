; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_config_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_config_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32*, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PMCRAID_MAX_RESOURCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to allocate memory for resource table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"couldn't alloc DMA memory for config table\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"could not alloc DMA memory for HCAMS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_allocate_config_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_allocate_config_buffers(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %5 = load i32, i32* @PMCRAID_MAX_RESOURCES, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_4__* @kcalloc(i32 %5, i32 4, i32 %6)
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 4
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* null, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @pmcraid_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PMCRAID_MAX_RESOURCES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %32 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %31, i32 0, i32 3
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %43 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @dma_alloc_coherent(i32* %41, i32 4, i32* %43, i32 %44)
  %46 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %47 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %49 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* null, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = call i32 @pmcraid_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %55 = call i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %37
  %59 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %60 = call i64 @pmcraid_allocate_hcams(%struct.pmcraid_instance* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = call i32 @pmcraid_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %65 = call i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %52, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance*) #1

declare dso_local i64 @pmcraid_allocate_hcams(%struct.pmcraid_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
