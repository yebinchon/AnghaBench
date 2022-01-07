; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_hello.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32 }
%struct.csio_mb = type { i32 }

@FW_CMD_HELLO_RETRIES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@CSIO_MASTER_MAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to issue HELLO cmd. ret:%d.\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"HELLO cmd failed with ret: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSIO_HWF_MASTER = common dso_local global i32 0, align 4
@FW_CMD_HELLO_TIMEOUT = common dso_local global i32 0, align 4
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_ERR_F = common dso_local global i32 0, align 4
@PCIE_FW_INIT_F = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_VLD_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Initializing\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Initialized\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"PF: %d, Coming up as MASTER, HW state: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"PF: %d, Coming up as SLAVE, Master PF: %d, HW state: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32*)* @csio_do_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_do_hello(%struct.csio_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csio_mb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @FW_CMD_HELLO_RETRIES, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 16)
  %16 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.csio_mb* @mempool_alloc(i32 %18, i32 %19)
  store %struct.csio_mb* %20, %struct.csio_mb** %5, align 8
  %21 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %22 = icmp ne %struct.csio_mb* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = load i32, i32* @n_err_nomem, align 4
  %28 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %26, i32 %27)
  br label %201

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %109, %29
  %31 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %32 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %33 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %34 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %35 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIO_MASTER_MAY, align 4
  %41 = call i32 @csio_mb_hello(%struct.csio_hw* %31, %struct.csio_mb* %32, i32 %33, i32 %36, i32 %39, i32 %40, i32* null)
  %42 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %43 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %44 = call i32 @csio_mb_issue(%struct.csio_hw* %42, %struct.csio_mb* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @csio_err(%struct.csio_hw* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %195

51:                                               ; preds = %30
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @csio_mb_process_hello_rsp(%struct.csio_hw* %52, %struct.csio_mb* %53, i32* %7, i32* %54, i32* %8)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FW_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @csio_err(%struct.csio_hw* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %195

65:                                               ; preds = %51
  %66 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %67 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @CSIO_HWF_MASTER, align 4
  %73 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %74 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %156

77:                                               ; preds = %65
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %155

81:                                               ; preds = %77
  %82 = load i32, i32* @FW_CMD_HELLO_TIMEOUT, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %113, %81
  %84 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %85 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = call i32 @msleep(i32 50)
  %88 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %89 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %88, i32 0, i32 3
  %90 = call i32 @spin_lock_irq(i32* %89)
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 50
  store i32 %92, i32* %11, align 4
  %93 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %94 = load i32, i32* @PCIE_FW_A, align 4
  %95 = call i32 @csio_rd_reg32(%struct.csio_hw* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %98 = load i32, i32* @PCIE_FW_INIT_F, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %11, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  %108 = icmp sgt i32 %106, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %30

110:                                              ; preds = %105
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %148

113:                                              ; preds = %102
  br label %83

114:                                              ; preds = %83
  %115 = load i32*, i32** %4, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  store i32 130, i32* %123, align 4
  %124 = load i32, i32* @ETIMEDOUT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %134

126:                                              ; preds = %117
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @PCIE_FW_INIT_F, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32*, i32** %4, align 8
  store i32 129, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %126
  br label %134

134:                                              ; preds = %133, %122
  br label %135

135:                                              ; preds = %134, %114
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @PCIE_FW_MASTER_VLD_F, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @PCIE_FW_MASTER_G(i32 %145)
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %139, %135
  br label %148

148:                                              ; preds = %147, %110
  %149 = load i32, i32* @CSIO_HWF_MASTER, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %152 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %77
  br label %156

156:                                              ; preds = %155, %71
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %168 [
    i32 128, label %159
    i32 129, label %162
    i32 130, label %165
  ]

159:                                              ; preds = %156
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %161 = call i32 @strcpy(i8* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %171

162:                                              ; preds = %156
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %164 = call i32 @strcpy(i8* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %171

165:                                              ; preds = %156
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %167 = call i32 @strcpy(i8* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %171

168:                                              ; preds = %156
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %170 = call i32 @strcpy(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165, %162, %159
  %172 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %173 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %179 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %180 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %183 = call i32 (%struct.csio_hw*, i8*, i32, i8*, ...) @csio_info(%struct.csio_hw* %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %181, i8* %182)
  br label %194

184:                                              ; preds = %171
  %185 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %186 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %187 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %193 = call i32 (%struct.csio_hw*, i8*, i32, i8*, ...) @csio_info(%struct.csio_hw* %185, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %188, i8* %191, i8* %192)
  br label %194

194:                                              ; preds = %184, %177
  br label %195

195:                                              ; preds = %194, %59, %47
  %196 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %197 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %198 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @mempool_free(%struct.csio_mb* %196, i32 %199)
  br label %201

201:                                              ; preds = %195, %23
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_hello(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @csio_mb_process_hello_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @PCIE_FW_MASTER_G(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, i32, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
