; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_setup_data_and_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_setup_data_and_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.sym_ccb = type { i64, i32*, i8*, %struct.TYPE_4__, i8*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@DID_ERROR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"got DMA_BIDIRECTIONAL command\00", align 1
@data_out2 = common dso_local global i32 0, align 4
@HF_DATA_IN = common dso_local global i32 0, align 4
@data_in2 = common dso_local global i32 0, align 4
@no_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_setup_data_and_start(%struct.sym_hcb* %0, %struct.scsi_cmnd* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.sym_ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %7, align 8
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %13 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %14 = call i64 @sym_setup_cdb(%struct.sym_hcb* %11, %struct.scsi_cmnd* %12, %struct.sym_ccb* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %124

17:                                               ; preds = %3
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %25 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %27 = call i64 @sym_scatter(%struct.sym_hcb* %24, %struct.sym_ccb* %25, %struct.scsi_cmnd* %26)
  %28 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %29 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %31 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %36 = load i32, i32* @DID_ERROR, align 4
  %37 = call i32 @sym_set_cam_status(%struct.scsi_cmnd* %35, i32 %36)
  br label %124

38:                                               ; preds = %23
  %39 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %40 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 129, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %38
  br label %50

45:                                               ; preds = %17
  %46 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %47 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %49 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i32, i32* %10, align 4
  switch i32 %51, label %93 [
    i32 131, label %52
    i32 128, label %59
    i32 130, label %73
    i32 129, label %92
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %55 = call i32 @scmd_printk(i32 %53, %struct.scsi_cmnd* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = load i32, i32* @DID_ERROR, align 4
  %58 = call i32 @sym_set_cam_status(%struct.scsi_cmnd* %56, i32 %57)
  br label %124

59:                                               ; preds = %50
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %61 = load i32, i32* @data_out2, align 4
  %62 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %60, i32 %61)
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %68 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul nsw i64 %69, 8
  %71 = sub nsw i64 %66, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  br label %97

73:                                               ; preds = %50
  %74 = load i32, i32* @HF_DATA_IN, align 4
  %75 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %76 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %80 = load i32, i32* @data_in2, align 4
  %81 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %79, i32 %80)
  %82 = add nsw i32 %81, 8
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %87 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = mul nsw i64 %88, 8
  %90 = sub nsw i64 %85, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %97

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %50, %92
  %94 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %95 = load i32, i32* @no_data, align 4
  %96 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %73, %59
  %98 = load i32, i32* %8, align 4
  %99 = call i8* @cpu_to_scr(i32 %98)
  %100 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %101 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @cpu_to_scr(i32 %104)
  %106 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %107 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  %110 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %111 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %116 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i8* @cpu_to_scr(i32 %117)
  %119 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %120 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %122 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %123 = call i32 @sym_put_start_queue(%struct.sym_hcb* %121, %struct.sym_ccb* %122)
  store i32 0, i32* %4, align 4
  br label %131

124:                                              ; preds = %52, %34, %16
  %125 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %126 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %127 = call i32 @sym_free_ccb(%struct.sym_hcb* %125, %struct.sym_ccb* %126)
  %128 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %130 = call i32 @sym_xpt_done(%struct.sym_hcb* %128, %struct.scsi_cmnd* %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %124, %97
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @sym_setup_cdb(%struct.sym_hcb*, %struct.scsi_cmnd*, %struct.sym_ccb*) #1

declare dso_local i64 @sym_scatter(%struct.sym_hcb*, %struct.sym_ccb*, %struct.scsi_cmnd*) #1

declare dso_local i32 @sym_set_cam_status(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @sym_put_start_queue(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_free_ccb(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_xpt_done(%struct.sym_hcb*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
