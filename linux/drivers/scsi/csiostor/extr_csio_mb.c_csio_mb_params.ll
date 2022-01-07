; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_params_cmd = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FW_PARAMS_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_params(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8, void (%struct.csio_hw*, %struct.csio_mb*)* %9) #0 {
  %11 = alloca %struct.csio_hw*, align 8
  %12 = alloca %struct.csio_mb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.fw_params_cmd*, align 8
  %25 = alloca i8**, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %11, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %9, void (%struct.csio_hw*, %struct.csio_mb*)** %20, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %26 = load %struct.csio_mb*, %struct.csio_mb** %12, align 8
  %27 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.fw_params_cmd*
  store %struct.fw_params_cmd* %29, %struct.fw_params_cmd** %24, align 8
  %30 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %24, align 8
  %31 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8** %34, i8*** %25, align 8
  %35 = load %struct.csio_mb*, %struct.csio_mb** %12, align 8
  %36 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %24, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.csio_hw*, %struct.csio_hw** %11, align 8
  %39 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %20, align 8
  %40 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %35, %struct.fw_params_cmd* %36, i32 %37, %struct.csio_hw* %38, void (%struct.csio_hw*, %struct.csio_mb*)* %39, i32 1)
  %41 = load i32, i32* @FW_PARAMS_CMD, align 4
  %42 = call i32 @FW_CMD_OP_V(i32 %41)
  %43 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %10
  %48 = load i32, i32* @FW_CMD_WRITE_F, align 4
  br label %51

49:                                               ; preds = %10
  %50 = load i32, i32* @FW_CMD_READ_F, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = or i32 %44, %52
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @FW_PARAMS_CMD_PFN_V(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @FW_PARAMS_CMD_VFN_V(i32 %57)
  %59 = or i32 %56, %58
  %60 = call i8* @htonl(i32 %59)
  %61 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %24, align 8
  %62 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = call i32 @FW_CMD_LEN16_V(i32 1)
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %24, align 8
  %66 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i32, i32* %16, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %16, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %17, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %22, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %18, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %23, align 4
  %81 = load i32, i32* %22, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = load i8**, i8*** %25, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %25, align 8
  store i8* %82, i8** %83, align 8
  %85 = load i32, i32* %23, align 4
  %86 = call i8* @htonl(i32 %85)
  %87 = load i8**, i8*** %25, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %25, align 8
  store i8* %86, i8** %87, align 8
  br label %70

89:                                               ; preds = %70
  br label %108

90:                                               ; preds = %51
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32*, i32** %17, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %17, align 8
  %98 = load i32, i32* %96, align 4
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i8* @htonl(i32 %99)
  %101 = load i8**, i8*** %25, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %21, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %21, align 4
  %105 = load i8**, i8*** %25, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  store i8** %106, i8*** %25, align 8
  br label %91

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %89
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_params_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
