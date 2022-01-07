; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_enable_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_enable_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.csio_mb = type { i32 }

@FW_CAPS_UNKNOWN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_PFVF = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_PFVF_PORT_CAPS32 = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to issue FW_PARAMS_CMD(r) port:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i64 0, align 8
@FW_CAPS32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to issue FW_PORT_CMD(r) port:%d\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"FW_PORT_CMD(r) port:%d failed: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to issue FW_PORT_CMD(w) port:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"FW_PORT_CMD(w) port:%d failed :0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_enable_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_enable_ports(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %14 = load i64, i64* @FW_CAPS_UNKNOWN, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.csio_mb* @mempool_alloc(i32 %17, i32 %18)
  store %struct.csio_mb* %19, %struct.csio_mb** %4, align 8
  %20 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %21 = icmp ne %struct.csio_mb* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %24 = load i32, i32* @n_err_nomem, align 4
  %25 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %23, i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %199

28:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %190, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %193

35:                                               ; preds = %29
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @FW_CAPS_UNKNOWN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %35
  %48 = load i32, i32* @FW_PARAMS_MNEM_PFVF, align 4
  %49 = call i32 @FW_PARAMS_MNEM_V(i32 %48)
  %50 = load i32, i32* @FW_PARAMS_PARAM_PFVF_PORT_CAPS32, align 4
  %51 = call i32 @FW_PARAMS_PARAM_X_V(i32 %50)
  %52 = or i32 %49, %51
  store i32 %52, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %53 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %54 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %55 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %56 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %57 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @csio_mb_params(%struct.csio_hw* %53, %struct.csio_mb* %54, i32 %55, i32 %58, i32 0, i32 1, i32* %12, i32* %13, i32 1, i32* null)
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %62 = call i64 @csio_mb_issue(%struct.csio_hw* %60, %struct.csio_mb* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %47
  %65 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %69 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %70 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mempool_free(%struct.csio_mb* %68, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %199

75:                                               ; preds = %47
  %76 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %77 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %78 = call i32 @csio_mb_process_read_params_rsp(%struct.csio_hw* %76, %struct.csio_mb* %77, i32* %6, i32 0, i32* null)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @FW_CAPS16, align 8
  br label %85

83:                                               ; preds = %75
  %84 = load i64, i64* @FW_CAPS32, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %85, %35
  %88 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %89 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %90 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @csio_mb_port(%struct.csio_hw* %88, %struct.csio_mb* %89, i32 %90, i32 %91, i32 0, i32 0, i64 %92, i32* null)
  %94 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %95 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %96 = call i64 @csio_mb_issue(%struct.csio_hw* %94, %struct.csio_mb* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %87
  %99 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %103 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %104 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mempool_free(%struct.csio_mb* %102, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %199

109:                                              ; preds = %87
  %110 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %111 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @csio_mb_process_read_port_rsp(%struct.csio_hw* %110, %struct.csio_mb* %111, i32* %6, i64 %112, i32* %8, i32* %9)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @FW_SUCCESS, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %123 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %124 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mempool_free(%struct.csio_mb* %122, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %199

129:                                              ; preds = %109
  %130 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %131 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @csio_init_link_config(i32* %136, i32 %137, i32 %138)
  %140 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %141 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @csio_link_l1cfg(i32* %146, i64 %147, i32* %10)
  %149 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %150 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %151 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @csio_mb_port(%struct.csio_hw* %149, %struct.csio_mb* %150, i32 %151, i32 %152, i32 1, i32 %153, i64 %154, i32* null)
  %156 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %157 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %158 = call i64 @csio_mb_issue(%struct.csio_hw* %156, %struct.csio_mb* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %129
  %161 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %165 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %166 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @mempool_free(%struct.csio_mb* %164, i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %199

171:                                              ; preds = %129
  %172 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %173 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @FW_SUCCESS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_err(%struct.csio_hw* %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %183 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %184 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @mempool_free(%struct.csio_mb* %182, i32 %185)
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %199

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %29

193:                                              ; preds = %29
  %194 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %195 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %196 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @mempool_free(%struct.csio_mb* %194, i32 %197)
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %177, %160, %117, %98, %64, %22
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @csio_mb_params(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_process_read_params_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, i32, i32*) #1

declare dso_local i32 @csio_mb_port(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @csio_mb_process_read_port_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @csio_init_link_config(i32*, i32, i32) #1

declare dso_local i32 @csio_link_l1cfg(i32*, i64, i32*) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
