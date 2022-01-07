; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_get_fcoe_resinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_get_fcoe_resinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.csio_fcoe_res_info }
%struct.csio_fcoe_res_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fw_fcoe_res_info_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mb = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to issue FW_FCOE_RES_INFO_CMD\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"FW_FCOE_RES_INFO_CMD failed with ret x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"max ssns:%d max xchgs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_get_fcoe_resinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_get_fcoe_resinfo(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_fcoe_res_info*, align 8
  %5 = alloca %struct.fw_fcoe_res_info_cmd*, align 8
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %8 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 1
  store %struct.csio_fcoe_res_info* %9, %struct.csio_fcoe_res_info** %4, align 8
  %10 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %11 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.csio_mb* @mempool_alloc(i32 %12, i32 %13)
  store %struct.csio_mb* %14, %struct.csio_mb** %6, align 8
  %15 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %16 = icmp ne %struct.csio_mb* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %19 = load i32, i32* @n_err_nomem, align 4
  %20 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %18, i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %152

23:                                               ; preds = %1
  %24 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %25 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %26 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %27 = call i32 @csio_fcoe_read_res_info_init_mb(%struct.csio_hw* %24, %struct.csio_mb* %25, i32 %26, i32* null)
  %28 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %29 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %30 = call i64 @csio_mb_issue(%struct.csio_hw* %28, %struct.csio_mb* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %34 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mempool_free(%struct.csio_mb* %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %152

42:                                               ; preds = %23
  %43 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %44 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.fw_fcoe_res_info_cmd*
  store %struct.fw_fcoe_res_info_cmd* %46, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %47 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ntohl(i32 %49)
  %51 = call i32 @FW_CMD_RETVAL_G(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FW_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mempool_free(%struct.csio_mb* %59, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %152

66:                                               ; preds = %42
  %67 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @ntohs(i32 %69)
  %71 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %72 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %71, i32 0, i32 11
  store i8* %70, i8** %72, align 8
  %73 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohs(i32 %75)
  %77 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %78 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %77, i32 0, i32 10
  store i8* %76, i8** %78, align 8
  %79 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ntohs(i32 %81)
  %83 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %84 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @ntohs(i32 %87)
  %89 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %90 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @ntohl(i32 %93)
  %95 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %96 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ntohl(i32 %99)
  %101 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %102 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %104 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @ntohl(i32 %105)
  %107 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %108 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @ntohl(i32 %111)
  %113 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %114 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @ntohl(i32 %117)
  %119 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %120 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  %121 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %122 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @ntohl(i32 %123)
  %125 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %126 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %128 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @ntohl(i32 %129)
  %131 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %132 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.fw_fcoe_res_info_cmd*, %struct.fw_fcoe_res_info_cmd** %5, align 8
  %134 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, %struct.fw_fcoe_res_info_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ntohl(i32 %135)
  %137 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %138 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %140 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %141 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.csio_fcoe_res_info*, %struct.csio_fcoe_res_info** %4, align 8
  %144 = getelementptr inbounds %struct.csio_fcoe_res_info, %struct.csio_fcoe_res_info* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @csio_dbg(%struct.csio_hw* %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %142, i8* %145)
  %147 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %148 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %149 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mempool_free(%struct.csio_mb* %147, i32 %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %66, %55, %32, %17
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fcoe_read_res_info_init_mb(%struct.csio_hw*, %struct.csio_mb*, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @FW_CMD_RETVAL_G(i8*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
