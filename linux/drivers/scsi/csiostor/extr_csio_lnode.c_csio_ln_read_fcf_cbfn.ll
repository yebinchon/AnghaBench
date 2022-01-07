; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_read_fcf_cbfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_read_fcf_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i64, i64 }
%struct.csio_lnode = type { %struct.csio_fcf_info* }
%struct.csio_fcf_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.fw_fcoe_fcf_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"FCOE FCF cmd failed with ret x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_mb*)* @csio_ln_read_fcf_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_read_fcf_cbfn(%struct.csio_hw* %0, %struct.csio_mb* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mb*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_fcf_info*, align 8
  %7 = alloca %struct.fw_fcoe_fcf_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %4, align 8
  %9 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %10 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.csio_lnode*
  store %struct.csio_lnode* %12, %struct.csio_lnode** %5, align 8
  %13 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %14 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fw_fcoe_fcf_cmd*
  store %struct.fw_fcoe_fcf_cmd* %16, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %17 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19)
  %21 = call i32 @FW_CMD_RETVAL_G(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FW_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @csio_ln_err(%struct.csio_lnode* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %30 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %31 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mempool_free(%struct.csio_mb* %29, i32 %32)
  br label %145

34:                                               ; preds = %2
  %35 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %36 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %39 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %38, i32 0, i32 0
  %40 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %39, align 8
  store %struct.csio_fcf_info* %40, %struct.csio_fcf_info** %6, align 8
  %41 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ntohs(i32 %43)
  %45 = call i32 @FW_FCOE_FCF_CMD_PRIORITY_GET(i8* %44)
  %46 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %47 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @ntohs(i32 %50)
  %52 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %53 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %52, i32 0, i32 13
  store i8* %51, i8** %53, align 8
  %54 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %58 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %57, i32 0, i32 12
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ntohs(i32 %61)
  %63 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %64 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %63, i32 0, i32 11
  store i8* %62, i8** %64, align 8
  %65 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %70 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = call i32 @FW_FCOE_FCF_CMD_FCFI_GET(i32 %74)
  %76 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %77 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @FW_FCOE_FCF_CMD_FPMA_GET(i32 %80)
  %82 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %83 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FW_FCOE_FCF_CMD_SPMA_GET(i32 %86)
  %88 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %89 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @FW_FCOE_FCF_CMD_LOGIN_GET(i32 %92)
  %94 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %95 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FW_FCOE_FCF_CMD_PORTID_GET(i32 %98)
  %100 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %101 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %103 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32 %104, i32 %107, i32 4)
  %109 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %110 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i32 %111, i32 %114, i32 4)
  %116 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %117 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %118, i32 %121, i32 4)
  %123 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %124 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %125, i32 %128, i32 4)
  %130 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %6, align 8
  %131 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fw_fcoe_fcf_cmd*, %struct.fw_fcoe_fcf_cmd** %7, align 8
  %134 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, %struct.fw_fcoe_fcf_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @memcpy(i32 %132, i32 %135, i32 4)
  %137 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %138 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %137, i32 0, i32 1
  %139 = call i32 @spin_unlock_irq(i32* %138)
  %140 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %141 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %142 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @mempool_free(%struct.csio_mb* %140, i32 %143)
  br label %145

145:                                              ; preds = %34, %25
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*, i32) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_PRIORITY_GET(i8*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_FCFI_GET(i32) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_FPMA_GET(i32) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_SPMA_GET(i32) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_LOGIN_GET(i32) #1

declare dso_local i32 @FW_FCOE_FCF_CMD_PORTID_GET(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
