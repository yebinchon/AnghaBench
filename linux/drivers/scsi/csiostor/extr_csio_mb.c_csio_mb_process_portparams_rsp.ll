; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_portparams_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_portparams_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_fcoe_port_cmd_params = type { i32, i32 }
%struct.fw_fcoe_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_fcoe_stats_cmd = type { i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@CSIO_STATS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_process_portparams_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, %struct.fw_fcoe_port_cmd_params* %3, %struct.fw_fcoe_port_stats* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fw_fcoe_port_cmd_params*, align 8
  %10 = alloca %struct.fw_fcoe_port_stats*, align 8
  %11 = alloca %struct.fw_fcoe_stats_cmd*, align 8
  %12 = alloca %struct.fw_fcoe_port_stats, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.fw_fcoe_port_cmd_params* %3, %struct.fw_fcoe_port_cmd_params** %9, align 8
  store %struct.fw_fcoe_port_stats* %4, %struct.fw_fcoe_port_stats** %10, align 8
  %15 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %16 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.fw_fcoe_stats_cmd*
  store %struct.fw_fcoe_stats_cmd* %18, %struct.fw_fcoe_stats_cmd** %11, align 8
  %19 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %20 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, %struct.fw_fcoe_stats_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @FW_CMD_RETVAL_G(i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = call i32 @memset(%struct.fw_fcoe_port_stats* %12, i32 0, i32 72)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FW_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %134

30:                                               ; preds = %5
  %31 = bitcast %struct.fw_fcoe_port_stats* %12 to i32*
  %32 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %33 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = mul nsw i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  store i32* %38, i32** %14, align 8
  %39 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %40 = bitcast %struct.fw_fcoe_stats_cmd* %39 to i32*
  %41 = load i32, i32* @CSIO_STATS_OFFSET, align 4
  %42 = mul nsw i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %48 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 8
  %51 = call i32 @memcpy(i32* %45, i32* %46, i32 %50)
  %52 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %53 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %81

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 17
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %60 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %59, i32 0, i32 17
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 16
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %64 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %63, i32 0, i32 16
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 15
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %68 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 14
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %72 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %76 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %80 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %56, %30
  %82 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %83 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %90 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %94 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %98 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %102 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %106 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %110 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %86, %81
  %112 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %113 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 13
  br i1 %115, label %116, label %133

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %120 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %124 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %128 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %12, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %10, align 8
  %132 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %116, %111
  br label %134

134:                                              ; preds = %133, %5
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memset(%struct.fw_fcoe_port_stats*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
