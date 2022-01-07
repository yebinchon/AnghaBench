; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { i32, i32, i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.adv_dvc_var }
%struct.adv_dvc_var = type { i32, i64, i32, i8*, i32 }

@ADV_CARRIER_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"carrier 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unaligned reqp %lu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"reqp 0x%p, req_cnt %d, bytes %lu\0A\00", align 1
@ADV_TOT_SG_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"adv_sgblk\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"sg_cnt %d * %lu = %lu bytes\0A\00", align 1
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"AdvInitAsc3550Driver()\0A\00", align 1
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"AdvInitAsc38C0800Driver()\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"AdvInitAsc38C1600Driver()\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"error: warn 0x%x, error 0x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"error: kmalloc() failed\0A\00", align 1
@ADV_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @advansys_wide_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_wide_init_chip(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.asc_board*, align 8
  %4 = alloca %struct.adv_dvc_var*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.asc_board* %9, %struct.asc_board** %3, align 8
  %10 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %11 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.adv_dvc_var* %12, %struct.adv_dvc_var** %4, align 8
  %13 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %14 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ADV_CARRIER_BUFSIZE, align 4
  %17 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %18 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %17, i32 0, i32 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %22 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %24 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %28 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %142

32:                                               ; preds = %1
  %33 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %34 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %40 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %42 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 31
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 4)
  %48 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %49 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ADV_32BALIGN(i32 %50)
  %52 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %53 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %32
  %55 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %56 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %59 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %62 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %61, i32 0, i32 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @dma_alloc_coherent(i32 %57, i32 %60, i32* %62, i32 %63)
  %65 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %66 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %68 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %54
  br label %142

72:                                               ; preds = %54
  %73 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %74 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %77 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %80 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %78, i32 %81)
  %83 = load i32, i32* @ADV_TOT_SG_BLOCK, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  store i64 %85, i64* %5, align 8
  %86 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %87 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %88, i64 %89, i32 32, i32 0)
  %91 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %92 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ADV_TOT_SG_BLOCK, align 4
  %94 = load i64, i64* %5, align 8
  %95 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %93, i64 4, i64 %94)
  %96 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %97 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %72
  br label %142

101:                                              ; preds = %72
  %102 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %103 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %110 = call i32 @AdvInitAsc3550Driver(%struct.adv_dvc_var* %109)
  store i32 %110, i32* %6, align 4
  br label %126

111:                                              ; preds = %101
  %112 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %113 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %119 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %120 = call i32 @AdvInitAsc38C0800Driver(%struct.adv_dvc_var* %119)
  store i32 %120, i32* %6, align 4
  br label %125

121:                                              ; preds = %111
  %122 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %123 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %124 = call i32 @AdvInitAsc38C1600Driver(%struct.adv_dvc_var* %123)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %107
  %127 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %4, align 8
  %128 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132, %126
  %136 = load i32, i32* @KERN_WARNING, align 4
  %137 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %136, %struct.Scsi_Host* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %132
  br label %147

142:                                              ; preds = %100, %71, %31
  %143 = load i32, i32* @KERN_ERR, align 4
  %144 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %145 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %143, %struct.Scsi_Host* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %146 = load i32, i32* @ADV_ERROR, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %141
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @ADV_32BALIGN(i32) #1

declare dso_local i32 @dma_pool_create(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @AdvInitAsc3550Driver(%struct.adv_dvc_var*) #1

declare dso_local i32 @AdvInitAsc38C0800Driver(%struct.adv_dvc_var*) #1

declare dso_local i32 @AdvInitAsc38C1600Driver(%struct.adv_dvc_var*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
