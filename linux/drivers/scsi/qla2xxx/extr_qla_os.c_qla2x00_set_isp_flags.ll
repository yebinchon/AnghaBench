; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_isp_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_isp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, i8*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DT_EXTENDED_IDS = common dso_local global i32 0, align 4
@DT_ISP2100 = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2100 = common dso_local global i8* null, align 8
@DT_ISP2200 = common dso_local global i32 0, align 4
@DT_ISP2300 = common dso_local global i32 0, align 4
@DT_ZIO_SUPPORTED = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2300 = common dso_local global i8* null, align 8
@DT_ISP2312 = common dso_local global i32 0, align 4
@DT_ISP2322 = common dso_local global i32 0, align 4
@DT_OEM_001 = common dso_local global i32 0, align 4
@DT_ISP6312 = common dso_local global i32 0, align 4
@DT_ISP6322 = common dso_local global i32 0, align 4
@DT_ISP2422 = common dso_local global i32 0, align 4
@DT_FWI2 = common dso_local global i32 0, align 4
@DT_IIDMA = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2400 = common dso_local global i8* null, align 8
@DT_ISP2432 = common dso_local global i32 0, align 4
@DT_ISP8432 = common dso_local global i32 0, align 4
@DT_ISP5422 = common dso_local global i32 0, align 4
@DT_ISP5432 = common dso_local global i32 0, align 4
@DT_ISP2532 = common dso_local global i32 0, align 4
@DT_ISP8001 = common dso_local global i32 0, align 4
@DT_ISP8021 = common dso_local global i32 0, align 4
@DT_ISP8044 = common dso_local global i32 0, align 4
@DT_ISP2031 = common dso_local global i32 0, align 4
@DT_T10_PI = common dso_local global i32 0, align 4
@DT_ISP8031 = common dso_local global i32 0, align 4
@DT_ISPFX00 = common dso_local global i32 0, align 4
@DT_ISP2071 = common dso_local global i32 0, align 4
@DT_ISP2271 = common dso_local global i32 0, align 4
@DT_ISP2261 = common dso_local global i32 0, align 4
@DT_ISP2081 = common dso_local global i32 0, align 4
@DT_ISP2281 = common dso_local global i32 0, align 4
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"device_type=0x%x port=%d fw_srisc_address=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_set_isp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_set_isp_flags(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %3 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %4 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %520 [
    i32 149, label %11
    i32 148, label %26
    i32 143, label %41
    i32 142, label %55
    i32 141, label %69
    i32 135, label %103
    i32 134, label %112
    i32 140, label %121
    i32 139, label %145
    i32 129, label %169
    i32 137, label %193
    i32 136, label %207
    i32 138, label %221
    i32 133, label %245
    i32 132, label %269
    i32 130, label %290
    i32 153, label %311
    i32 131, label %340
    i32 128, label %369
    i32 152, label %375
    i32 146, label %404
    i32 147, label %433
    i32 151, label %462
    i32 150, label %462
    i32 145, label %491
    i32 144, label %491
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @DT_ISP2100, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i8*, i8** @RISC_START_ADDRESS_2100, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %520

26:                                               ; preds = %1
  %27 = load i32, i32* @DT_ISP2200, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i8*, i8** @RISC_START_ADDRESS_2100, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %520

41:                                               ; preds = %1
  %42 = load i32, i32* @DT_ISP2300, align 4
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %520

55:                                               ; preds = %1
  %56 = load i32, i32* @DT_ISP2312, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %520

69:                                               ; preds = %1
  %70 = load i32, i32* @DT_ISP2322, align 4
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4136
  br i1 %85, label %86, label %99

86:                                               ; preds = %69
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 368
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @DT_OEM_001, align 4
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86, %69
  %100 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  br label %520

103:                                              ; preds = %1
  %104 = load i32, i32* @DT_ISP6312, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %520

112:                                              ; preds = %1
  %113 = load i32, i32* @DT_ISP6322, align 4
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %520

121:                                              ; preds = %1
  %122 = load i32, i32* @DT_ISP2422, align 4
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @DT_FWI2, align 4
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @DT_IIDMA, align 4
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  br label %520

145:                                              ; preds = %1
  %146 = load i32, i32* @DT_ISP2432, align 4
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @DT_FWI2, align 4
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @DT_IIDMA, align 4
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %167 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %168 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %520

169:                                              ; preds = %1
  %170 = load i32, i32* @DT_ISP8432, align 4
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %172 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %177 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* @DT_FWI2, align 4
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %182 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* @DT_IIDMA, align 4
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %187 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %192 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %520

193:                                              ; preds = %1
  %194 = load i32, i32* @DT_ISP5422, align 4
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* @DT_FWI2, align 4
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %206 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  br label %520

207:                                              ; preds = %1
  %208 = load i32, i32* @DT_ISP5432, align 4
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @DT_FWI2, align 4
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %219 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %220 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %520

221:                                              ; preds = %1
  %222 = load i32, i32* @DT_ISP2532, align 4
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %228 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %229 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* @DT_FWI2, align 4
  %233 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %234 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load i32, i32* @DT_IIDMA, align 4
  %238 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %239 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %243 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %244 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  br label %520

245:                                              ; preds = %1
  %246 = load i32, i32* @DT_ISP8001, align 4
  %247 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %248 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %252 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %253 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load i32, i32* @DT_FWI2, align 4
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* @DT_IIDMA, align 4
  %262 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %263 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %267 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %268 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  br label %520

269:                                              ; preds = %1
  %270 = load i32, i32* @DT_ISP8021, align 4
  %271 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %272 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %277 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load i32, i32* @DT_FWI2, align 4
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %282 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %286 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %287 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  %288 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %289 = call i32 @qla82xx_init_flags(%struct.qla_hw_data* %288)
  br label %520

290:                                              ; preds = %1
  %291 = load i32, i32* @DT_ISP8044, align 4
  %292 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %293 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %298 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  %301 = load i32, i32* @DT_FWI2, align 4
  %302 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %303 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %307 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %308 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %307, i32 0, i32 2
  store i8* %306, i8** %308, align 8
  %309 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %310 = call i32 @qla82xx_init_flags(%struct.qla_hw_data* %309)
  br label %520

311:                                              ; preds = %1
  %312 = load i32, i32* @DT_ISP2031, align 4
  %313 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %314 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %318 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %319 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  %322 = load i32, i32* @DT_FWI2, align 4
  %323 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %324 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  %327 = load i32, i32* @DT_IIDMA, align 4
  %328 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %329 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load i32, i32* @DT_T10_PI, align 4
  %333 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %334 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  %337 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %338 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %339 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %338, i32 0, i32 2
  store i8* %337, i8** %339, align 8
  br label %520

340:                                              ; preds = %1
  %341 = load i32, i32* @DT_ISP8031, align 4
  %342 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %343 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %347 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %348 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  %351 = load i32, i32* @DT_FWI2, align 4
  %352 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %353 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* @DT_IIDMA, align 4
  %357 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %358 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load i32, i32* @DT_T10_PI, align 4
  %362 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %363 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 8
  %366 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %367 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %368 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %367, i32 0, i32 2
  store i8* %366, i8** %368, align 8
  br label %520

369:                                              ; preds = %1
  %370 = load i32, i32* @DT_ISPFX00, align 4
  %371 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %372 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 8
  br label %520

375:                                              ; preds = %1
  %376 = load i32, i32* @DT_ISP2071, align 4
  %377 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %378 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  %381 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %382 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %383 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = or i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load i32, i32* @DT_FWI2, align 4
  %387 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %388 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 8
  %391 = load i32, i32* @DT_IIDMA, align 4
  %392 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %393 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  %396 = load i32, i32* @DT_T10_PI, align 4
  %397 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %398 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 8
  %401 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %402 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %403 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %402, i32 0, i32 2
  store i8* %401, i8** %403, align 8
  br label %520

404:                                              ; preds = %1
  %405 = load i32, i32* @DT_ISP2271, align 4
  %406 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %407 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %411 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %412 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 8
  %415 = load i32, i32* @DT_FWI2, align 4
  %416 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %417 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = or i32 %418, %415
  store i32 %419, i32* %417, align 8
  %420 = load i32, i32* @DT_IIDMA, align 4
  %421 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %422 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %420
  store i32 %424, i32* %422, align 8
  %425 = load i32, i32* @DT_T10_PI, align 4
  %426 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %427 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 8
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 8
  %430 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %431 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %432 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %431, i32 0, i32 2
  store i8* %430, i8** %432, align 8
  br label %520

433:                                              ; preds = %1
  %434 = load i32, i32* @DT_ISP2261, align 4
  %435 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %436 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 8
  %439 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %440 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %441 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 8
  %444 = load i32, i32* @DT_FWI2, align 4
  %445 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %446 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = or i32 %447, %444
  store i32 %448, i32* %446, align 8
  %449 = load i32, i32* @DT_IIDMA, align 4
  %450 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %451 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 8
  %453 = or i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load i32, i32* @DT_T10_PI, align 4
  %455 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %456 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %457, %454
  store i32 %458, i32* %456, align 8
  %459 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %460 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %461 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %460, i32 0, i32 2
  store i8* %459, i8** %461, align 8
  br label %520

462:                                              ; preds = %1, %1
  %463 = load i32, i32* @DT_ISP2081, align 4
  %464 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %465 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  %468 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %469 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %470 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 8
  %473 = load i32, i32* @DT_FWI2, align 4
  %474 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %475 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %473
  store i32 %477, i32* %475, align 8
  %478 = load i32, i32* @DT_IIDMA, align 4
  %479 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %480 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 8
  %482 = or i32 %481, %478
  store i32 %482, i32* %480, align 8
  %483 = load i32, i32* @DT_T10_PI, align 4
  %484 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %485 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = or i32 %486, %483
  store i32 %487, i32* %485, align 8
  %488 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %489 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %490 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %489, i32 0, i32 2
  store i8* %488, i8** %490, align 8
  br label %520

491:                                              ; preds = %1, %1
  %492 = load i32, i32* @DT_ISP2281, align 4
  %493 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %494 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %493, i32 0, i32 5
  %495 = load i32, i32* %494, align 8
  %496 = or i32 %495, %492
  store i32 %496, i32* %494, align 8
  %497 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %498 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %499 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 8
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 8
  %502 = load i32, i32* @DT_FWI2, align 4
  %503 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %504 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = or i32 %505, %502
  store i32 %506, i32* %504, align 8
  %507 = load i32, i32* @DT_IIDMA, align 4
  %508 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %509 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 8
  %511 = or i32 %510, %507
  store i32 %511, i32* %509, align 8
  %512 = load i32, i32* @DT_T10_PI, align 4
  %513 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %514 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 8
  %516 = or i32 %515, %512
  store i32 %516, i32* %514, align 8
  %517 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %518 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %519 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %518, i32 0, i32 2
  store i8* %517, i8** %519, align 8
  br label %520

520:                                              ; preds = %1, %491, %462, %433, %404, %375, %369, %340, %311, %290, %269, %245, %221, %207, %193, %169, %145, %121, %112, %103, %99, %55, %41, %26, %11
  %521 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %522 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %520
  %525 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %526 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = and i32 %527, 1
  %529 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %530 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %529, i32 0, i32 0
  store i32 %528, i32* %530, align 8
  br label %570

531:                                              ; preds = %520
  %532 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %533 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %532, i32 0, i32 4
  %534 = load %struct.TYPE_3__*, %struct.TYPE_3__** %533, align 8
  %535 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %536 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %537 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %536, i32 0, i32 0
  %538 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %534, i32 %535, i32* %537)
  %539 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %540 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %554, label %542

542:                                              ; preds = %531
  %543 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %544 = call i64 @IS_QLA2031(%struct.qla_hw_data* %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %542
  %547 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %548 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %554, label %550

550:                                              ; preds = %546
  %551 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %552 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %559

554:                                              ; preds = %550, %546, %542, %531
  %555 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %556 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = add nsw i32 %557, -1
  store i32 %558, i32* %556, align 8
  br label %569

559:                                              ; preds = %550
  %560 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %561 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  %565 = xor i1 %564, true
  %566 = zext i1 %565 to i32
  %567 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %568 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %567, i32 0, i32 0
  store i32 %566, i32* %568, align 8
  br label %569

569:                                              ; preds = %559, %554
  br label %570

570:                                              ; preds = %569, %524
  %571 = load i32, i32* @ql_dbg_init, align 4
  %572 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %573 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %572, i32 0, i32 4
  %574 = load %struct.TYPE_3__*, %struct.TYPE_3__** %573, align 8
  %575 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %576 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %579 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %582 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %581, i32 0, i32 2
  %583 = load i8*, i8** %582, align 8
  %584 = call i32 @ql_dbg_pci(i32 %571, %struct.TYPE_3__* %574, i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %577, i32 %580, i8* %583)
  ret void
}

declare dso_local i32 @qla82xx_init_flags(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg_pci(i32, %struct.TYPE_3__*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
