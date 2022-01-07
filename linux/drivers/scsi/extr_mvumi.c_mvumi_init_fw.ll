; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_init_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MV_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IO memory region busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@mvumi_instance_9143 = common dso_local global i32 0, align 4
@MVUMI_MAX_SG_ENTRY = common dso_local global i8* null, align 8
@mvumi_instance_9580 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"device 0x%x not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"device id : %04X is found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to allocate memory for reg\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HSP_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to allocate memory for handshake\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_init_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_init_fw(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* @MV_DRIVER_NAME, align 4
  %9 = call i64 @pci_request_regions(%struct.TYPE_5__* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %1
  %20 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mvumi_map_pci_addr(%struct.TYPE_5__* %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %158

30:                                               ; preds = %19
  %31 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %54 [
    i32 129, label %36
    i32 128, label %46
  ]

36:                                               ; preds = %30
  %37 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %38 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %37, i32 0, i32 6
  store i32* @mvumi_instance_9143, i32** %38, align 8
  %39 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %39, i32 0, i32 8
  store i32 0, i32* %40, align 8
  %41 = load i8*, i8** @MVUMI_MAX_SG_ENTRY, align 8
  %42 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %69

46:                                               ; preds = %30
  %47 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %47, i32 0, i32 6
  store i32* @mvumi_instance_9580, i32** %48, align 8
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 8
  store i32 0, i32* %50, align 8
  %51 = load i8*, i8** @MVUMI_MAX_SG_ENTRY, align 8
  %52 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %53 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  br label %69

54:                                               ; preds = %30
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %66 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %150

69:                                               ; preds = %46, %36
  %70 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %75 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %81 = call i32 @mvumi_cfg_hw_reg(%struct.mvumi_hba* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %69
  %85 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %86 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %150

92:                                               ; preds = %69
  %93 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %94 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* @HSP_MAX_SIZE, align 4
  %98 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %99 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %98, i32 0, i32 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32 @dma_alloc_coherent(i32* %96, i32 %97, i32* %99, i32 %100)
  %102 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %103 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %105 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %92
  %109 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %110 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %145

116:                                              ; preds = %92
  %117 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %118 = call i64 @mvumi_start(%struct.mvumi_hba* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %130

123:                                              ; preds = %116
  %124 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %125 = call i32 @mvumi_alloc_cmds(%struct.mvumi_hba* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %130

129:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %164

130:                                              ; preds = %128, %120
  %131 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %132 = call i32 @mvumi_release_mem_resource(%struct.mvumi_hba* %131)
  %133 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %134 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* @HSP_MAX_SIZE, align 4
  %138 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %139 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %142 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dma_free_coherent(i32* %136, i32 %137, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %130, %108
  %146 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %147 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @kfree(i32 %148)
  br label %150

150:                                              ; preds = %145, %84, %54
  %151 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %152 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %155 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @mvumi_unmap_pci_addr(%struct.TYPE_5__* %153, i32 %156)
  br label %158

158:                                              ; preds = %150, %29
  %159 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %160 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %159, i32 0, i32 1
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = call i32 @pci_release_regions(%struct.TYPE_5__* %161)
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %158, %129, %11
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @pci_request_regions(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mvumi_map_pci_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mvumi_cfg_hw_reg(%struct.mvumi_hba*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @mvumi_start(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_alloc_cmds(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_release_mem_resource(%struct.mvumi_hba*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mvumi_unmap_pci_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
