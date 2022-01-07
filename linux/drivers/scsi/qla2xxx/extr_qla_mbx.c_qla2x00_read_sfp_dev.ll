; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla2x00_read_sfp_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla2x00_read_sfp_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32* }

@SFP_DEV_SIZE = common dso_local global i32 0, align 4
@SFP_BLOCK_SIZE = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to read SFP data (%x/%x/%x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_read_sfp_dev(%struct.scsi_qla_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %8, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @SFP_DEV_SIZE, align 4
  %24 = call i32 @memset(i32* %22, i32 0, i32 %23)
  store i32 160, i32* %10, align 4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %103, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SFP_DEV_SIZE, align 4
  %34 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %35 = sdiv i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 162, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %48 = load i32, i32* @BIT_1, align 4
  %49 = call i32 @qla2x00_read_sfp(%struct.scsi_qla_host* %42, i32 %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @QLA_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load i32, i32* @ql_log_warn, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ql_log(i32 %54, %struct.scsi_qla_host* %55, i32 28781, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %108

61:                                               ; preds = %41
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  store i32 %75, i32* %16, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = load i8*, i8** %6, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @memcpy(i8* %81, i32* %82, i32 %83)
  %85 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %6, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %80, %64, %61
  %93 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %15, align 8
  %100 = load i32, i32* @SFP_BLOCK_SIZE, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %31

106:                                              ; preds = %31
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %53
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_read_sfp(%struct.scsi_qla_host*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
