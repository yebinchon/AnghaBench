; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_fatal_axi_int_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_fatal_axi_int_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_hw_error = type { i32, i32, i32, i64, i32, %struct.hisi_sas_hw_error* }
%struct.hisi_hba = type { %struct.hisi_sas_device*, i32, i32, %struct.device* }
%struct.hisi_sas_device = type { i32 }
%struct.device = type { i32 }

@ENT_INT_SRC_MSK3 = common dso_local global i32 0, align 4
@ENT_INT_SRC3 = common dso_local global i32 0, align 4
@fatal_axi_errors = common dso_local global %struct.hisi_sas_hw_error* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s (0x%x) found!\0A\00", align 1
@ENT_INT_SRC3_ITC_INT_OFF = common dso_local global i32 0, align 4
@ITCT_CLR = common dso_local global i32 0, align 4
@ITCT_DEV_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"clear ITCT ok\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fatal_axi_int_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatal_axi_int_v2_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.hisi_sas_hw_error*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hisi_sas_hw_error*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hisi_sas_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.hisi_hba*
  store %struct.hisi_hba* %17, %struct.hisi_hba** %5, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 3
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %22 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %23 = call i32 @hisi_sas_read32(%struct.hisi_hba* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %25 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, -2
  %28 = call i32 @hisi_sas_write32(%struct.hisi_hba* %24, i32 %25, i32 %27)
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %30 = load i32, i32* @ENT_INT_SRC3, align 4
  %31 = call i32 @hisi_sas_read32(%struct.hisi_hba* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %121, %2
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @fatal_axi_errors, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %124

37:                                               ; preds = %32
  %38 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @fatal_axi_errors, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %38, i64 %40
  store %struct.hisi_sas_hw_error* %41, %struct.hisi_sas_hw_error** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %44 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %121

49:                                               ; preds = %37
  %50 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %51 = load i32, i32* @ENT_INT_SRC3, align 4
  %52 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %53 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = call i32 @hisi_sas_write32(%struct.hisi_hba* %50, i32 %51, i32 %55)
  %57 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %58 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %57, i32 0, i32 5
  %59 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %58, align 8
  %60 = icmp ne %struct.hisi_sas_hw_error* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %49
  %62 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %62, i32 0, i32 5
  %64 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %63, align 8
  store %struct.hisi_sas_hw_error* %64, %struct.hisi_sas_hw_error** %12, align 8
  %65 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %66 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %67 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @hisi_sas_read32(%struct.hisi_hba* %65, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %103, %61
  %71 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %72 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %77 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ true, %70 ], [ %79, %75 ]
  br i1 %81, label %82, label %106

82:                                               ; preds = %80
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %85 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %103

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %93 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %94, i32 %95)
  %97 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %98 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %101 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %100, i32 0, i32 1
  %102 = call i32 @queue_work(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %90, %89
  %104 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %105 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %104, i32 1
  store %struct.hisi_sas_hw_error* %105, %struct.hisi_sas_hw_error** %12, align 8
  br label %70

106:                                              ; preds = %80
  br label %120

107:                                              ; preds = %49
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %10, align 8
  %110 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %111, i32 %112)
  %114 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %115 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %118 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %117, i32 0, i32 1
  %119 = call i32 @queue_work(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %107, %106
  br label %121

121:                                              ; preds = %120, %48
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %32

124:                                              ; preds = %32
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @ENT_INT_SRC3_ITC_INT_OFF, align 4
  %127 = call i32 @BIT(i32 %126)
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %132 = load i32, i32* @ITCT_CLR, align 4
  %133 = call i32 @hisi_sas_read32(%struct.hisi_hba* %131, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ITCT_DEV_MSK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %138 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %137, i32 0, i32 0
  %139 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %139, i64 %141
  store %struct.hisi_sas_device* %142, %struct.hisi_sas_device** %15, align 8
  %143 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %144 = load i32, i32* @ITCT_CLR, align 4
  %145 = call i32 @hisi_sas_write32(%struct.hisi_hba* %143, i32 %144, i32 0)
  %146 = load %struct.device*, %struct.device** %9, align 8
  %147 = call i32 @dev_dbg(%struct.device* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %148 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %15, align 8
  %149 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @complete(i32 %150)
  br label %152

152:                                              ; preds = %130, %124
  %153 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %154 = load i32, i32* @ENT_INT_SRC3, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @hisi_sas_write32(%struct.hisi_hba* %153, i32 %154, i32 %155)
  %157 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %158 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @hisi_sas_write32(%struct.hisi_hba* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %161
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
