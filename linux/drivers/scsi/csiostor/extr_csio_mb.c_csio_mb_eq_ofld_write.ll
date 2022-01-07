; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_eq_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.fw_eq_ofld_cmd = type { i32, i32, i32, i32, i32, i32 }

@FW_EQ_OFLD_CMD_EQSTART_F = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD_EQSTOP_F = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_mb*, i8*, i32, i32, %struct.csio_eq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_mb_eq_ofld_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_mb_eq_ofld_write(%struct.csio_hw* %0, %struct.csio_mb* %1, i8* %2, i32 %3, i32 %4, %struct.csio_eq_params* %5, void (%struct.csio_hw*, %struct.csio_mb*)* %6) #0 {
  %8 = alloca %struct.csio_hw*, align 8
  %9 = alloca %struct.csio_mb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.csio_eq_params*, align 8
  %14 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %15 = alloca %struct.fw_eq_ofld_cmd*, align 8
  %16 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %8, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.csio_eq_params* %5, %struct.csio_eq_params** %13, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %6, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %17 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %18 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.fw_eq_ofld_cmd*
  store %struct.fw_eq_ofld_cmd* %20, %struct.fw_eq_ofld_cmd** %15, align 8
  %21 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %22 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @FW_EQ_OFLD_CMD_EQSTART_F, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @FW_EQ_OFLD_CMD_EQSTOP_F, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %35 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %39 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %34, %struct.fw_eq_ofld_cmd* %35, i32 %36, i8* %37, void (%struct.csio_hw*, %struct.csio_mb*)* %38, i32 1)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* @FW_EQ_OFLD_CMD, align 4
  %42 = call i32 @FW_CMD_OP_V(i32 %41)
  %43 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %48 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %47, i32 0, i32 14
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @FW_EQ_OFLD_CMD_PFN_V(i32 %49)
  %51 = or i32 %46, %50
  %52 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %53 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FW_EQ_OFLD_CMD_VFN_V(i32 %54)
  %56 = or i32 %51, %55
  %57 = call i32 @htonl(i32 %56)
  %58 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %59 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @FW_CMD_LEN16_V(i32 1)
  %64 = or i32 %62, %63
  %65 = call i32 @htonl(i32 %64)
  %66 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %67 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %71 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @FW_EQ_OFLD_CMD_EQID_V(i32 %72)
  %74 = call i32 @htonl(i32 %73)
  %75 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %76 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %80 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FW_EQ_OFLD_CMD_HOSTFCMODE_V(i32 %81)
  %83 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %84 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @FW_EQ_OFLD_CMD_CPRIO_V(i32 %85)
  %87 = or i32 %82, %86
  %88 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %89 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @FW_EQ_OFLD_CMD_PCIECHN_V(i32 %90)
  %92 = or i32 %87, %91
  %93 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %94 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @FW_EQ_OFLD_CMD_IQID_V(i32 %95)
  %97 = or i32 %92, %96
  %98 = call i32 @htonl(i32 %97)
  %99 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %100 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %104 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FW_EQ_OFLD_CMD_DCAEN_V(i32 %105)
  %107 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %108 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @FW_EQ_OFLD_CMD_DCACPU_V(i32 %109)
  %111 = or i32 %106, %110
  %112 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %113 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FW_EQ_OFLD_CMD_FBMIN_V(i32 %114)
  %116 = or i32 %111, %115
  %117 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %118 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @FW_EQ_OFLD_CMD_FBMAX_V(i32 %119)
  %121 = or i32 %116, %120
  %122 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %123 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @FW_EQ_OFLD_CMD_CIDXFTHRESHO_V(i32 %124)
  %126 = or i32 %121, %125
  %127 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %128 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @FW_EQ_OFLD_CMD_CIDXFTHRESH_V(i32 %129)
  %131 = or i32 %126, %130
  %132 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %133 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @FW_EQ_OFLD_CMD_EQSIZE_V(i32 %134)
  %136 = or i32 %131, %135
  %137 = call i32 @htonl(i32 %136)
  %138 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %139 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.csio_eq_params*, %struct.csio_eq_params** %13, align 8
  %143 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @cpu_to_be64(i32 %144)
  %146 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %15, align 8
  %147 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_eq_ofld_cmd*, i32, i8*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQID_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_HOSTFCMODE_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_CPRIO_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PCIECHN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_IQID_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_DCAEN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_DCACPU_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_FBMIN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_FBMAX_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_CIDXFTHRESHO_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_CIDXFTHRESH_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQSIZE_V(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
