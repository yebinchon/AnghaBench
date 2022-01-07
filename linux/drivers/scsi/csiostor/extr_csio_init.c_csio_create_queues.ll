; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_create_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_create_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i64, i32, %struct.csio_scsi_qset**, %struct.csio_scsi_cpu_info*, %struct.TYPE_2__*, i32, i32 }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_mgmtm = type { i32, i32 }

@CSIO_HWF_Q_FW_ALLOCED = common dso_local global i32 0, align 4
@CSIO_IM_MSIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c" Forward Interrupt IQ failed!: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"FW event IQ config failed!: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Mgmt EQ create failed!: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SCSI module IQ config failed [%d][%d]:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"SCSI module EQ config failed [%d][%d]:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_create_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_create_queues(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_mgmtm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csio_scsi_cpu_info*, align 8
  %9 = alloca %struct.csio_scsi_qset*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %10 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %11 = call %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw* %10)
  store %struct.csio_mgmtm* %11, %struct.csio_mgmtm** %6, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CSIO_HWF_Q_FW_ALLOCED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

19:                                               ; preds = %1
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CSIO_IM_MSIX, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %28 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %31 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @csio_wr_iq_create(%struct.csio_hw* %26, i32* null, i32 %29, i32 0, i32 %35, i32 0, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %172

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %47 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %48 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %51 = call i32 @csio_get_fwevt_intr_idx(%struct.csio_hw* %50)
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @csio_wr_iq_create(%struct.csio_hw* %46, i32* null, i32 %49, i32 %51, i32 %57, i32 1, i32* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %172

66:                                               ; preds = %45
  %67 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %68 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %6, align 8
  %69 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %6, align 8
  %72 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %75 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @csio_wr_eq_create(%struct.csio_hw* %67, i32* null, i32 %70, i32 %73, i32 %79, i32* null)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %167

87:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %158, %87
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %91 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %161

94:                                               ; preds = %88
  %95 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %96 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %95, i32 0, i32 4
  %97 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %97, i64 %99
  store %struct.csio_scsi_cpu_info* %100, %struct.csio_scsi_cpu_info** %8, align 8
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %154, %94
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %8, align 8
  %104 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %101
  %108 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %109 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %108, i32 0, i32 3
  %110 = load %struct.csio_scsi_qset**, %struct.csio_scsi_qset*** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %110, i64 %112
  %114 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %114, i64 %116
  store %struct.csio_scsi_qset* %117, %struct.csio_scsi_qset** %9, align 8
  %118 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %119 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %9, align 8
  %120 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %9, align 8
  %123 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @csio_wr_iq_create(%struct.csio_hw* %118, i32* null, i32 %121, i32 %124, i32 %125, i32 0, i32* null)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %107
  %130 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %132, i32 %133)
  br label %167

135:                                              ; preds = %107
  %136 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %137 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %9, align 8
  %138 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %9, align 8
  %141 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @csio_wr_eq_create(%struct.csio_hw* %136, i32* null, i32 %139, i32 %142, i32 %143, i32* null)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %135
  %148 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150, i32 %151)
  br label %167

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %101

157:                                              ; preds = %101
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %88

161:                                              ; preds = %88
  %162 = load i32, i32* @CSIO_HWF_Q_FW_ALLOCED, align 4
  %163 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %164 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  store i32 0, i32* %2, align 4
  br label %172

167:                                              ; preds = %147, %129, %83
  %168 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %169 = call i32 @csio_wr_destroy_queues(%struct.csio_hw* %168, i32 1)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %167, %161, %61, %39, %18
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_iq_create(%struct.csio_hw*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @csio_get_fwevt_intr_idx(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_eq_create(%struct.csio_hw*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @csio_wr_destroy_queues(%struct.csio_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
