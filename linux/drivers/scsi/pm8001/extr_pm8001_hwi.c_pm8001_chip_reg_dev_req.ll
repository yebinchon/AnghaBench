; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_reg_dev_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_reg_dev_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info*, %struct.inbound_queue_table* }
%struct.pm8001_ccb_info = type { i32, %struct.pm8001_device* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_device = type { i64, i32, %struct.domain_device* }
%struct.domain_device = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.domain_device* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.reg_dev_req = type { i32, i8*, i8*, i8*, i8* }

@SAS_SATA_DEV = common dso_local global i64 0, align 8
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@OPC_INB_REG_DEV = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)* @pm8001_chip_reg_dev_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_reg_dev_req(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca %struct.pm8001_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_dev_req, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pm8001_ccb_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.domain_device*, align 8
  %21 = alloca %struct.domain_device*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  store i32 -559038737, i32* %15, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 2000, i32* %19, align 4
  %22 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %23 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %22, i32 0, i32 2
  %24 = load %struct.domain_device*, %struct.domain_device** %23, align 8
  store %struct.domain_device* %24, %struct.domain_device** %20, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  %26 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %25, i32 0, i32 5
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  store %struct.domain_device* %27, %struct.domain_device** %21, align 8
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %29 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %28, i32 0, i32 1
  %30 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %29, align 8
  %31 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %30, i64 0
  store %struct.inbound_queue_table* %31, %struct.inbound_queue_table** %11, align 8
  %32 = call i32 @memset(%struct.reg_dev_req* %8, i32 0, i32 40)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %34 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %33, i32* %15)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %4, align 4
  br label %180

39:                                               ; preds = %3
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %41 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %40, i32 0, i32 0
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i64 %44
  store %struct.pm8001_ccb_info* %45, %struct.pm8001_ccb_info** %16, align 8
  %46 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %47 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %16, align 8
  %48 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %47, i32 0, i32 1
  store %struct.pm8001_device* %46, %struct.pm8001_device** %48, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %16, align 8
  %51 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds %struct.reg_dev_req, %struct.reg_dev_req* %8, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  store i32 2, i32* %10, align 4
  br label %86

58:                                               ; preds = %39
  %59 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %60 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SAS_SATA_DEV, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %67 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SAS_END_DEVICE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %73 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SAS_EDGE_EXPANDER_DEVICE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %79 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SAS_FANOUT_EXPANDER_DEVICE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71, %65
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.domain_device*, %struct.domain_device** %21, align 8
  %88 = icmp ne %struct.domain_device* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.domain_device*, %struct.domain_device** %21, align 8
  %91 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @dev_is_expander(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.domain_device*, %struct.domain_device** %21, align 8
  %97 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  br label %106

102:                                              ; preds = %89, %86
  %103 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %104 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32, i32* @OPC_INB_REG_DEV, align 4
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %109 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %108, i32 0, i32 2
  %110 = load %struct.domain_device*, %struct.domain_device** %109, align 8
  %111 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  %114 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %112, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %106
  %120 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %121 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %120, i32 0, i32 2
  %122 = load %struct.domain_device*, %struct.domain_device** %121, align 8
  %123 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  br label %131

125:                                              ; preds = %106
  %126 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  %127 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  br label %131

131:                                              ; preds = %125, %119
  %132 = phi i64 [ %124, %119 ], [ %130, %125 ]
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %12, align 4
  %134 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %135 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %134, i32 0, i32 2
  %136 = load %struct.domain_device*, %struct.domain_device** %135, align 8
  %137 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 15
  %142 = load i32, i32* %13, align 4
  %143 = and i32 %142, 15
  %144 = shl i32 %143, 4
  %145 = or i32 %141, %144
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = getelementptr inbounds %struct.reg_dev_req, %struct.reg_dev_req* %8, i32 0, i32 3
  store i8* %146, i8** %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = and i32 %148, 1
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 15
  %152 = mul nsw i32 %151, 16777216
  %153 = or i32 %149, %152
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 3
  %156 = mul nsw i32 %155, 268435456
  %157 = or i32 %153, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = getelementptr inbounds %struct.reg_dev_req, %struct.reg_dev_req* %8, i32 0, i32 2
  store i8* %158, i8** %159, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %18, align 4
  %162 = mul nsw i32 %161, 65536
  %163 = or i32 %160, %162
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = getelementptr inbounds %struct.reg_dev_req, %struct.reg_dev_req* %8, i32 0, i32 1
  store i8* %164, i8** %165, align 8
  %166 = getelementptr inbounds %struct.reg_dev_req, %struct.reg_dev_req* %8, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %169 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %168, i32 0, i32 2
  %170 = load %struct.domain_device*, %struct.domain_device** %169, align 8
  %171 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %174 = call i32 @memcpy(i32 %167, i32 %172, i32 %173)
  %175 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %176 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %175, %struct.inbound_queue_table* %176, i32 %177, %struct.reg_dev_req* %8, i32 0)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %131, %37
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @memset(%struct.reg_dev_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.reg_dev_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
