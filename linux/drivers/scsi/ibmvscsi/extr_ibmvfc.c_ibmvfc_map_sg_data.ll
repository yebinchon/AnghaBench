; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_map_sg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_map_sg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.ibmvfc_event = type { i32, %struct.srp_direct_buf* }
%struct.srp_direct_buf = type { i64, i32, i32 }
%struct.ibmvfc_cmd = type { i32, %struct.TYPE_2__, %struct.srp_direct_buf }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.ibmvfc_host = type { i64, i32 }

@cls3_error = common dso_local global i64 0, align 8
@IBMVFC_CLASS_3_ERR = common dso_local global i32 0, align 4
@IBMVFC_NO_MEM_DESC = common dso_local global i32 0, align 4
@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to map DMA buffer for command\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@IBMVFC_WRITE = common dso_local global i32 0, align 4
@IBMVFC_WRDATA = common dso_local global i32 0, align 4
@IBMVFC_READ = common dso_local global i32 0, align 4
@IBMVFC_RDDATA = common dso_local global i32 0, align 4
@IBMVFC_SCATTERLIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate memory for scatterlist\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.ibmvfc_event*, %struct.ibmvfc_cmd*, %struct.device*)* @ibmvfc_map_sg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_map_sg_data(%struct.scsi_cmnd* %0, %struct.ibmvfc_event* %1, %struct.ibmvfc_cmd* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.ibmvfc_event*, align 8
  %8 = alloca %struct.ibmvfc_cmd*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.srp_direct_buf*, align 8
  %12 = alloca %struct.ibmvfc_host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.ibmvfc_event* %1, %struct.ibmvfc_event** %7, align 8
  store %struct.ibmvfc_cmd* %2, %struct.ibmvfc_cmd** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %13 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %13, i32 0, i32 2
  store %struct.srp_direct_buf* %14, %struct.srp_direct_buf** %11, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = call %struct.ibmvfc_host* @dev_get_drvdata(%struct.device* %15)
  store %struct.ibmvfc_host* %16, %struct.ibmvfc_host** %12, align 8
  %17 = load i64, i64* @cls3_error, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @IBMVFC_CLASS_3_ERR, align 4
  %21 = call i32 @cpu_to_be16(i32 %20)
  %22 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @IBMVFC_NO_MEM_DESC, align 4
  %33 = call i32 @cpu_to_be16(i32 %32)
  %34 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %160

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %53 = call i32 @scmd_printk(i32 %51, %struct.scsi_cmnd* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %160

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMA_TO_DEVICE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i32, i32* @IBMVFC_WRITE, align 4
  %65 = call i32 @cpu_to_be16(i32 %64)
  %66 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @IBMVFC_WRDATA, align 4
  %71 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %89

76:                                               ; preds = %57
  %77 = load i32, i32* @IBMVFC_READ, align 4
  %78 = call i32 @cpu_to_be16(i32 %77)
  %79 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %80 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @IBMVFC_RDDATA, align 4
  %84 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %76, %63
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %96 = call i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd* %93, i32 %94, %struct.srp_direct_buf* %95)
  store i32 0, i32* %5, align 4
  br label %160

97:                                               ; preds = %89
  %98 = load i32, i32* @IBMVFC_SCATTERLIST, align 4
  %99 = call i32 @cpu_to_be16(i32 %98)
  %100 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %101 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %105 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %104, i32 0, i32 1
  %106 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %105, align 8
  %107 = icmp ne %struct.srp_direct_buf* %106, null
  br i1 %107, label %138, label %108

108:                                              ; preds = %97
  %109 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %110 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %114 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %113, i32 0, i32 0
  %115 = call %struct.srp_direct_buf* @dma_pool_alloc(i32 %111, i32 %112, i32* %114)
  %116 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %117 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %116, i32 0, i32 1
  store %struct.srp_direct_buf* %115, %struct.srp_direct_buf** %117, align 8
  %118 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %119 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %118, i32 0, i32 1
  %120 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %119, align 8
  %121 = icmp ne %struct.srp_direct_buf* %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %108
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %124 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %123)
  %125 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %126 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* @KERN_ERR, align 4
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %133 = call i32 @scmd_printk(i32 %131, %struct.scsi_cmnd* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %122
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %160

137:                                              ; preds = %108
  br label %138

138:                                              ; preds = %137, %97
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %142 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %141, i32 0, i32 1
  %143 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %142, align 8
  %144 = call i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd* %139, i32 %140, %struct.srp_direct_buf* %143)
  %145 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %146 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @cpu_to_be64(i32 %147)
  %149 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %150 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 16
  %154 = trunc i64 %153 to i32
  %155 = call i32 @cpu_to_be32(i32 %154)
  %156 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %157 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %159 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %138, %134, %92, %54, %31
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.ibmvfc_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd*, i32, %struct.srp_direct_buf*) #1

declare dso_local %struct.srp_direct_buf* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
