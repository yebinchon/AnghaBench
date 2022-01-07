; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32 }
%struct.mmc_command = type { i32, i8**, i32, i32 }
%struct.gb_sdio_command_request = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.gb_sdio_command_response = type { i32* }

@GB_SDIO_RSP_NONE = common dso_local global i32 0, align 4
@GB_SDIO_RSP_R1_R5_R6_R7 = common dso_local global i32 0, align 4
@GB_SDIO_RSP_R1B = common dso_local global i32 0, align 4
@GB_SDIO_RSP_R2 = common dso_local global i32 0, align 4
@GB_SDIO_RSP_R3_R4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cmd flag invalid 0x%04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_SDIO_CMD_BC = common dso_local global i32 0, align 4
@GB_SDIO_CMD_BCR = common dso_local global i32 0, align 4
@GB_SDIO_CMD_AC = common dso_local global i32 0, align 4
@GB_SDIO_CMD_ADTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cmd type invalid 0x%04x\0A\00", align 1
@GB_SDIO_TYPE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_sdio_host*, %struct.mmc_command*)* @gb_sdio_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_sdio_command(%struct.gb_sdio_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.gb_sdio_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.gb_sdio_command_request, align 8
  %6 = alloca %struct.gb_sdio_command_response, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %12 = bitcast %struct.gb_sdio_command_request* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %14 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  store %struct.mmc_data* %17, %struct.mmc_data** %7, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %19 = call i32 @mmc_resp_type(%struct.mmc_command* %18)
  switch i32 %19, label %30 [
    i32 132, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @GB_SDIO_RSP_NONE, align 4
  store i32 %21, i32* %8, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32, i32* @GB_SDIO_RSP_R1_R5_R6_R7, align 4
  store i32 %23, i32* %8, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load i32, i32* @GB_SDIO_RSP_R1B, align 4
  store i32 %25, i32* %8, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load i32, i32* @GB_SDIO_RSP_R2, align 4
  store i32 %27, i32* %8, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @GB_SDIO_RSP_R3_R4, align 4
  store i32 %29, i32* %8, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %32 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = call i32 @mmc_resp_type(%struct.mmc_command* %35)
  %37 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %140

40:                                               ; preds = %28, %26, %24, %22, %20
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = call i32 @mmc_cmd_type(%struct.mmc_command* %41)
  switch i32 %42, label %51 [
    i32 134, label %43
    i32 133, label %45
    i32 136, label %47
    i32 135, label %49
  ]

43:                                               ; preds = %40
  %44 = load i32, i32* @GB_SDIO_CMD_BC, align 4
  store i32 %44, i32* %9, align 4
  br label %61

45:                                               ; preds = %40
  %46 = load i32, i32* @GB_SDIO_CMD_BCR, align 4
  store i32 %46, i32* %9, align 4
  br label %61

47:                                               ; preds = %40
  %48 = load i32, i32* @GB_SDIO_CMD_AC, align 4
  store i32 %48, i32* %9, align 4
  br label %61

49:                                               ; preds = %40
  %50 = load i32, i32* @GB_SDIO_CMD_ADTC, align 4
  store i32 %50, i32* %9, align 4
  br label %61

51:                                               ; preds = %40
  %52 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %53 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mmc_dev(i32 %54)
  %56 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %57 = call i32 @mmc_cmd_type(%struct.mmc_command* %56)
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %140

61:                                               ; preds = %49, %47, %45, %43
  %62 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %76 = icmp ne %struct.mmc_data* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %61
  %78 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  %83 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = getelementptr inbounds %struct.gb_sdio_command_request, %struct.gb_sdio_command_request* %5, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %77, %61
  %89 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %90 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GB_SDIO_TYPE_COMMAND, align 4
  %93 = call i32 @gb_operation_sync(i32 %91, i32 %92, %struct.gb_sdio_command_request* %5, i32 40, %struct.gb_sdio_command_response* %6, i32 8)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %140

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @GB_SDIO_RSP_NONE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %140

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @GB_SDIO_RSP_R2, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %125, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.gb_sdio_command_response, %struct.gb_sdio_command_response* %6, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %108

128:                                              ; preds = %108
  br label %139

129:                                              ; preds = %102
  %130 = getelementptr inbounds %struct.gb_sdio_command_response, %struct.gb_sdio_command_response* %6, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le32_to_cpu(i32 %133)
  %135 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %136 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %135, i32 0, i32 1
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  store i8* %134, i8** %138, align 8
  br label %139

139:                                              ; preds = %129, %128
  br label %140

140:                                              ; preds = %139, %101, %96, %51, %30
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %143 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @mmc_dev(i32) #2

declare dso_local i32 @mmc_cmd_type(%struct.mmc_command*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_sdio_command_request*, i32, %struct.gb_sdio_command_response*, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
