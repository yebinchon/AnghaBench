; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_sg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_sg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.srp_event_struct = type { %struct.srp_direct_buf*, i32 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_cmd = type { i64 }
%struct.device = type { i32 }
%struct.srp_indirect_buf = type { %struct.srp_direct_buf*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i64, i64 }

@MAX_INDIRECT_BUFS = common dso_local global i32 0, align 4
@SG_ALL = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't allocate memory for indirect table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.srp_event_struct*, %struct.srp_cmd*, %struct.device*)* @map_sg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_sg_data(%struct.scsi_cmnd* %0, %struct.srp_event_struct* %1, %struct.srp_cmd* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.srp_event_struct*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.srp_direct_buf*, align 8
  %13 = alloca %struct.srp_indirect_buf*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %7, align 8
  store %struct.srp_cmd* %2, %struct.srp_cmd** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %17, %struct.srp_direct_buf** %12, align 8
  %18 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %19 = bitcast %struct.srp_direct_buf* %18 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %19, %struct.srp_indirect_buf** %13, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %144

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %144

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @set_srp_direction(%struct.scsi_cmnd* %31, %struct.srp_cmd* %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %41 = call i32 @map_sg_list(%struct.scsi_cmnd* %38, i32 %39, %struct.srp_direct_buf* %40)
  store i32 1, i32* %5, align 4
  br label %144

42:                                               ; preds = %30
  %43 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %44 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %52 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %55 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %42
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %64 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %63, i32 0, i32 0
  %65 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %64, align 8
  %66 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %65, i64 0
  %67 = call i32 @map_sg_list(%struct.scsi_cmnd* %61, i32 %62, %struct.srp_direct_buf* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %71 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  store i32 1, i32* %5, align 4
  br label %144

72:                                               ; preds = %42
  %73 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %74 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %73, i32 0, i32 0
  %75 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %74, align 8
  %76 = icmp ne %struct.srp_direct_buf* %75, null
  br i1 %76, label %107, label %77

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = load i32, i32* @SG_ALL, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %84 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %83, i32 0, i32 1
  %85 = call i64 @dma_alloc_coherent(%struct.device* %78, i32 %82, i32* %84, i32 0)
  %86 = inttoptr i64 %85 to %struct.srp_direct_buf*
  %87 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %88 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %87, i32 0, i32 0
  store %struct.srp_direct_buf* %86, %struct.srp_direct_buf** %88, align 8
  %89 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %90 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %89, i32 0, i32 0
  %91 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %90, align 8
  %92 = icmp ne %struct.srp_direct_buf* %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* @FW_FEATURE_CMO, align 4
  %95 = call i32 @firmware_has_feature(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @KERN_ERR, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sdev_printk(i32 %98, i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %93
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %105 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %104)
  store i32 0, i32* %5, align 4
  br label %144

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %106, %72
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %111 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %110, i32 0, i32 0
  %112 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %111, align 8
  %113 = call i32 @map_sg_list(%struct.scsi_cmnd* %108, i32 %109, %struct.srp_direct_buf* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i8* @cpu_to_be32(i32 %114)
  %116 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %117 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %119 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @cpu_to_be64(i32 %120)
  %122 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %123 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i64 %121, i64* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i8* @cpu_to_be32(i32 %128)
  %130 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %131 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %134 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %133, i32 0, i32 0
  %135 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %134, align 8
  %136 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %137 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %136, i32 0, i32 0
  %138 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %137, align 8
  %139 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memcpy(%struct.srp_direct_buf* %135, %struct.srp_direct_buf* %138, i32 %142)
  store i32 1, i32* %5, align 4
  br label %144

144:                                              ; preds = %107, %103, %60, %37, %28, %24
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_srp_direction(%struct.scsi_cmnd*, %struct.srp_cmd*, i32) #1

declare dso_local i32 @map_sg_list(%struct.scsi_cmnd*, i32, %struct.srp_direct_buf*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(%struct.srp_direct_buf*, %struct.srp_direct_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
