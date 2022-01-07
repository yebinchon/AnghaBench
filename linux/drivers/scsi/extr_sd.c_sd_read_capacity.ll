; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, %struct.scsi_device*, i32 }
%struct.scsi_device = type { i32, i32, i32, i64, i64, i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Adjusting the sector count from its reported value: %llu\0A\00", align 1
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Sector size 0 reported, assuming 512.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported sector size %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_capacity(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %7, i32 0, i32 1
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %6, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %11 = call i64 @sd_try_rc16_first(%struct.scsi_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @read_capacity_16(%struct.scsi_disk* %14, %struct.scsi_device* %15, i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EOVERFLOW, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %86

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %137

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @read_capacity_10(%struct.scsi_disk* %33, %struct.scsi_device* %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %137

41:                                               ; preds = %37
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @read_capacity_10(%struct.scsi_disk* %43, %struct.scsi_device* %44, i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EOVERFLOW, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %86

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %137

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67, %57
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %76 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %74, %struct.scsi_disk* %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %73, %67, %62
  br label %86

86:                                               ; preds = %85, %51, %22
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  store i32 512, i32* %5, align 4
  %90 = load i32, i32* @KERN_NOTICE, align 4
  %91 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %92 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %90, %struct.scsi_disk* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 512
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 1024
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 2048
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 4096
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* @KERN_NOTICE, align 4
  %107 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %106, %struct.scsi_disk* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %111 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  store i32 512, i32* %5, align 4
  br label %112

112:                                              ; preds = %105, %102, %99, %96, %93
  %113 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @blk_queue_logical_block_size(i32 %115, i32 %116)
  %118 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %119 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %122 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @blk_queue_physical_block_size(i32 %120, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %127 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %126, i32 0, i32 1
  %128 = load %struct.scsi_device*, %struct.scsi_device** %127, align 8
  %129 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 8
  %130 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %131 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ugt i32 %132, -1
  br i1 %133, label %134, label %137

134:                                              ; preds = %112
  %135 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %136 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %28, %40, %55, %134, %112
  ret void
}

declare dso_local i64 @sd_try_rc16_first(%struct.scsi_device*) #1

declare dso_local i32 @read_capacity_16(%struct.scsi_disk*, %struct.scsi_device*, i8*) #1

declare dso_local i32 @read_capacity_10(%struct.scsi_disk*, %struct.scsi_device*, i8*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
