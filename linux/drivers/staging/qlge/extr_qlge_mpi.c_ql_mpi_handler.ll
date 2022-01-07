; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_mpi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_mpi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.mbox_params = type { i32, i32*, i32* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not read MPI, resetting ASIC!\0A\00", align 1
@MB_CMD_EX_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Firmware initialization failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"System Error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unsupported AE %.08x.\0A\00", align 1
@CSR = common dso_local global i32 0, align 4
@CSR_CMD_CLR_R2PCI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.mbox_params*)* @ql_mpi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_mpi_handler(%struct.ql_adapter* %0, %struct.mbox_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.mbox_params* %1, %struct.mbox_params** %5, align 8
  %8 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %9 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %12 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %14 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %15 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %13, %struct.mbox_params* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %25)
  br label %147

27:                                               ; preds = %2
  %28 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %134 [
    i32 131, label %33
    i32 132, label %33
    i32 130, label %33
    i32 128, label %33
    i32 134, label %33
    i32 133, label %33
    i32 129, label %33
    i32 138, label %41
    i32 140, label %44
    i32 139, label %44
    i32 136, label %47
    i32 137, label %51
    i32 142, label %55
    i32 145, label %79
    i32 144, label %83
    i32 141, label %87
    i32 135, label %118
    i32 146, label %129
    i32 143, label %133
  ]

33:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %36 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %38 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %39 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %37, %struct.mbox_params* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %156

41:                                               ; preds = %27
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %43 = call i32 @ql_idc_req_aen(%struct.ql_adapter* %42)
  store i32 %43, i32* %6, align 4
  br label %146

44:                                               ; preds = %27, %27
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %46 = call i32 @ql_idc_cmplt_aen(%struct.ql_adapter* %45)
  store i32 %46, i32* %6, align 4
  br label %146

47:                                               ; preds = %27
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %49 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %50 = call i32 @ql_link_up(%struct.ql_adapter* %48, %struct.mbox_params* %49)
  br label %146

51:                                               ; preds = %27
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %53 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %54 = call i32 @ql_link_down(%struct.ql_adapter* %52, %struct.mbox_params* %53)
  br label %146

55:                                               ; preds = %27
  %56 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %57 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MB_CMD_EX_FW, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %66 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %68 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %69 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %67, %struct.mbox_params* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %71 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 132, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %156

75:                                               ; preds = %55
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %77 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %78 = call i32 @ql_init_fw_done(%struct.ql_adapter* %76, %struct.mbox_params* %77)
  br label %146

79:                                               ; preds = %27
  %80 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %81 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %82 = call i32 @ql_sfp_in(%struct.ql_adapter* %80, %struct.mbox_params* %81)
  br label %146

83:                                               ; preds = %27
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %85 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %86 = call i32 @ql_sfp_out(%struct.ql_adapter* %84, %struct.mbox_params* %85)
  br label %146

87:                                               ; preds = %27
  %88 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %89 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MB_CMD_EX_FW, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %98 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %100 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %101 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %99, %struct.mbox_params* %100)
  store i32 %101, i32* %6, align 4
  %102 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %103 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 133, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %156

107:                                              ; preds = %87
  %108 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %109 = load i32, i32* @drv, align 4
  %110 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %108, i32 %109, i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %117 = call i32 @ql_queue_fw_error(%struct.ql_adapter* %116)
  br label %146

118:                                              ; preds = %27
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %120 = load i32, i32* @drv, align 4
  %121 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %126 = call i32 @ql_queue_fw_error(%struct.ql_adapter* %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %146

129:                                              ; preds = %27
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %131 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %132 = call i32 @ql_aen_lost(%struct.ql_adapter* %130, %struct.mbox_params* %131)
  br label %146

133:                                              ; preds = %27
  br label %146

134:                                              ; preds = %27
  %135 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %136 = load i32, i32* @drv, align 4
  %137 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %141 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %135, i32 %136, i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %134, %133, %129, %118, %107, %83, %79, %75, %51, %47, %44, %41
  br label %147

147:                                              ; preds = %146, %18
  %148 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %149 = load i32, i32* @CSR, align 4
  %150 = load i32, i32* @CSR_CMD_CLR_R2PCI_INT, align 4
  %151 = call i32 @ql_write32(%struct.ql_adapter* %148, i32 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %154 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %147, %95, %63, %33
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ql_get_mb_sts(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @ql_queue_asic_error(%struct.ql_adapter*) #1

declare dso_local i32 @ql_idc_req_aen(%struct.ql_adapter*) #1

declare dso_local i32 @ql_idc_cmplt_aen(%struct.ql_adapter*) #1

declare dso_local i32 @ql_link_up(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_link_down(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_init_fw_done(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_sfp_in(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_sfp_out(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_queue_fw_error(%struct.ql_adapter*) #1

declare dso_local i32 @ql_aen_lost(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
