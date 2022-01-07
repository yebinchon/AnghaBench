; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_extra_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@OverwriteFlag = common dso_local global i32 0, align 4
@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@BLOCK_READ = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@READ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32*, i32)* @ms_read_extra_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_extra_data(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ms_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [10 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  store %struct.ms_info* %18, %struct.ms_info** %12, align 8
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %20 = load i32, i32* @OverwriteFlag, align 4
  %21 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %22 = load i32, i32* @SystemParm, align 4
  %23 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %19, i32 %20, i32 %21, i32 %22, i32 6)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %28, i32* %6, align 4
  br label %184

29:                                               ; preds = %5
  %30 = load %struct.ms_info*, %struct.ms_info** %12, align 8
  %31 = call i64 @CHK_MS4BIT(%struct.ms_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 136, i32* %34, align 16
  br label %37

35:                                               ; preds = %29
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 128, i32* %36, align 16
  br label %37

37:                                               ; preds = %35, %33
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 4
  store i32 64, i32* %44, align 16
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %62, %37
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %53 = load i32, i32* @WRITE_REG, align 4
  %54 = load i32, i32* @NO_WAIT_INT, align 4
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %56 = call i32 @ms_write_bytes(%struct.rtsx_chip* %52, i32 %53, i32 6, i32 %54, i32* %55, i32 6)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %65

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %47

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %70, i32* %6, align 4
  br label %184

71:                                               ; preds = %65
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %73 = load i32, i32* @MS_NO_ERROR, align 4
  %74 = call i32 @ms_set_err_code(%struct.rtsx_chip* %72, i32 %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %89, %71
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %81 = load i32, i32* @BLOCK_READ, align 4
  %82 = load i32, i32* @WAIT_INT, align 4
  %83 = call i32 @ms_send_cmd(%struct.rtsx_chip* %80, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %92

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %75

92:                                               ; preds = %87, %75
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %97, i32* %6, align 4
  br label %184

98:                                               ; preds = %92
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %100 = load i32, i32* @MS_NO_ERROR, align 4
  %101 = call i32 @ms_set_err_code(%struct.rtsx_chip* %99, i32 %100)
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %103 = load i32, i32* @GET_INT, align 4
  %104 = load i32, i32* @NO_WAIT_INT, align 4
  %105 = call i32 @ms_read_bytes(%struct.rtsx_chip* %102, i32 %103, i32 1, i32 %104, i32* %15, i32 1)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @STATUS_SUCCESS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %110, i32* %6, align 4
  br label %184

111:                                              ; preds = %98
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @INT_REG_CMDNK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %118 = load i32, i32* @MS_CMD_NK, align 4
  %119 = call i32 @ms_set_err_code(%struct.rtsx_chip* %117, i32 %118)
  %120 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %120, i32* %6, align 4
  br label %184

121:                                              ; preds = %111
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @INT_REG_CED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @INT_REG_ERR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %133 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @STATUS_SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %138, i32* %6, align 4
  br label %184

139:                                              ; preds = %131
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %141 = load i32, i32* @OverwriteFlag, align 4
  %142 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %143 = load i32, i32* @SystemParm, align 4
  %144 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %140, i32 %141, i32 %142, i32 %143, i32 6)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @STATUS_SUCCESS, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %149, i32* %6, align 4
  br label %184

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %126
  br label %152

152:                                              ; preds = %151, %121
  %153 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %154 = load i32, i32* @READ_REG, align 4
  %155 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %156 = load i32, i32* @NO_WAIT_INT, align 4
  %157 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %158 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %159 = call i32 @ms_read_bytes(%struct.rtsx_chip* %153, i32 %154, i32 %155, i32 %156, i32* %157, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @STATUS_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %164, i32* %6, align 4
  br label %184

165:                                              ; preds = %152
  %166 = load i32*, i32** %10, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @MS_EXTRA_SIZE, align 4
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @memcpy(i32* %178, i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %168, %165
  %183 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %182, %163, %148, %137, %116, %109, %96, %69, %27
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_read_status_reg(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
