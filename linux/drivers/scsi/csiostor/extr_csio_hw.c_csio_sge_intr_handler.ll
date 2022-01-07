; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_sge_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_sge_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.csio_hw = type { i32 }

@csio_sge_intr_handler.sge_intr_info = internal global [14 x %struct.intr_info] [%struct.intr_info { i32 136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info { i32 141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 0 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [36 x i8] c"SGE received CPL exceeding IQE size\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SGE GTS CIDX increment too large\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SGE received 0-length CPL\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SGE doorbell dropped\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"SGE IQID > 1023 received CPL for FL\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SGE DBP 3 pidx increment too large\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SGE DBP 2 pidx increment too large\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SGE DBP 1 pidx increment too large\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"SGE DBP 0 pidx increment too large\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"SGE too many priority ingress contexts\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"SGE too many priority egress contexts\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"SGE illegal ingress QID\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"SGE illegal egress QID\00", align 1
@SGE_INT_CAUSE1_A = common dso_local global i32 0, align 4
@SGE_INT_CAUSE2_A = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"SGE parity error (%#llx)\0A\00", align 1
@SGE_INT_CAUSE3_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_sge_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_sge_intr_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %4 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %5 = load i32, i32* @SGE_INT_CAUSE1_A, align 4
  %6 = call i64 @csio_rd_reg32(%struct.csio_hw* %4, i32 %5)
  %7 = trunc i64 %6 to i32
  %8 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %9 = load i32, i32* @SGE_INT_CAUSE2_A, align 4
  %10 = call i64 @csio_rd_reg32(%struct.csio_hw* %8, i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 32
  %13 = or i32 %7, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 @csio_fatal(%struct.csio_hw* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 %19)
  %21 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SGE_INT_CAUSE1_A, align 4
  %24 = call i32 @csio_wr_reg32(%struct.csio_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 32
  %28 = load i32, i32* @SGE_INT_CAUSE2_A, align 4
  %29 = call i32 @csio_wr_reg32(%struct.csio_hw* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %32 = load i32, i32* @SGE_INT_CAUSE3_A, align 4
  %33 = call i32 @csio_handle_intr_status(%struct.csio_hw* %31, i32 %32, %struct.intr_info* getelementptr inbounds ([14 x %struct.intr_info], [14 x %struct.intr_info]* @csio_sge_intr_handler.sge_intr_info, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %37 = load i32, i32* @SGE_INT_CAUSE3_A, align 4
  %38 = call i32 @csio_handle_intr_status(%struct.csio_hw* %36, i32 %37, %struct.intr_info* getelementptr inbounds ([14 x %struct.intr_info], [14 x %struct.intr_info]* @csio_sge_intr_handler.sge_intr_info, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %30
  %44 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %45 = call i32 @csio_hw_fatal_err(%struct.csio_hw* %44)
  br label %46

46:                                               ; preds = %43, %40
  ret void
}

declare dso_local i64 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fatal(%struct.csio_hw*, i8*, i64) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_handle_intr_status(%struct.csio_hw*, i32, %struct.intr_info*) #1

declare dso_local i32 @csio_hw_fatal_err(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
