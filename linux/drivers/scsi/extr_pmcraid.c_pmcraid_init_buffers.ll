; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_init_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, %struct.pmcraid_cmd**, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.pmcraid_cmd = type { i32, %struct.pmcraid_instance* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"couldn't allocate memory for %d host rrqs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"couldn't allocate memory for config buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"couldn't allocate memory for cmd blocks\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"couldn't allocate memory control blocks\0A\00", align 1
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"couldn't allocate DMA memory for INQUIRY\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"couldn't allocate DMA memory for \09\09\09\09set time_stamp \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_init_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_init_buffers(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmcraid_cmd*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %7 = call i64 @pmcraid_allocate_host_rrqs(%struct.pmcraid_instance* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %18 = call i64 @pmcraid_allocate_config_buffers(%struct.pmcraid_instance* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %23 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %24 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance* %22, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %134

29:                                               ; preds = %16
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %31 = call i64 @pmcraid_allocate_cmd_blocks(%struct.pmcraid_instance* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = call i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance* %35)
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance* %37, i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %29
  %45 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %46 = call i64 @pmcraid_allocate_control_blocks(%struct.pmcraid_instance* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %51 = call i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance* %50)
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %53 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %54 = call i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance* %52, i32 %53)
  %55 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %57 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance* %55, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %134

62:                                               ; preds = %44
  %63 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %64 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %68 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %67, i32 0, i32 6
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @dma_alloc_coherent(i32* %66, i32 4, i32* %68, i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %73 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %75 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %81 = call i32 @pmcraid_release_buffers(%struct.pmcraid_instance* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %134

84:                                               ; preds = %62
  %85 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %86 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %90 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %89, i32 0, i32 3
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @dma_alloc_coherent(i32* %88, i32 4, i32* %90, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %95 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  %96 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %97 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %103 = call i32 @pmcraid_release_buffers(%struct.pmcraid_instance* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %134

106:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %130, %106
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %113 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %112, i32 0, i32 1
  %114 = load %struct.pmcraid_cmd**, %struct.pmcraid_cmd*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %114, i64 %116
  %118 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %117, align 8
  store %struct.pmcraid_cmd* %118, %struct.pmcraid_cmd** %5, align 8
  %119 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @pmcraid_init_cmdblk(%struct.pmcraid_cmd* %119, i32 %120)
  %122 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %123 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %124 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %123, i32 0, i32 1
  store %struct.pmcraid_instance* %122, %struct.pmcraid_instance** %124, align 8
  %125 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %125, i32 0, i32 0
  %127 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %128 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %127, i32 0, i32 0
  %129 = call i32 @list_add_tail(i32* %126, i32* %128)
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %107

133:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %100, %78, %48, %33, %20, %9
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @pmcraid_allocate_host_rrqs(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*, ...) #1

declare dso_local i64 @pmcraid_allocate_config_buffers(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance*, i32) #1

declare dso_local i64 @pmcraid_allocate_cmd_blocks(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_release_config_buffers(%struct.pmcraid_instance*) #1

declare dso_local i64 @pmcraid_allocate_control_blocks(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_release_cmd_blocks(%struct.pmcraid_instance*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pmcraid_release_buffers(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_init_cmdblk(%struct.pmcraid_cmd*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
