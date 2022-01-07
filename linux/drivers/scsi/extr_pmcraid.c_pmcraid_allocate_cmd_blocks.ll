; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_cmd_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_cmd_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"pmcraid_cmd_pool_%d\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_allocate_cmd_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_allocate_cmd_blocks(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %5 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %6 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sprintf(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %15 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %18 = call i32 @kmem_cache_create(i32 %16, i32 4, i32 0, i32 %17, i32* null)
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kmem_cache_alloc(i32 %36, i32 %37)
  %39 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %40 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %46 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %33
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance* %54, i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %29

63:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %53, %25
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
