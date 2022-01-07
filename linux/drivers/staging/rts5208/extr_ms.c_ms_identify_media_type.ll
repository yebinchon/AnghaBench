; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_identify_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_identify_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, %struct.ms_info }
%struct.ms_info = type { i32, i32 }

@Pro_StatusReg = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@MS_TM_READ_BYTES = common dso_local global i32 0, align 4
@READ_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Type register: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Category register: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Class register: 0x%x\0A\00", align 1
@WRT_PRTCT = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@TYPE_MSPRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"IF Mode register: 0x%x\0A\00", align 1
@MS_HG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @ms_identify_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_identify_media_type(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  store %struct.ms_info* %11, %struct.ms_info** %6, align 8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = load i32, i32* @Pro_StatusReg, align 4
  %14 = load i32, i32* @SystemParm, align 4
  %15 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %12, i32 %13, i32 6, i32 %14, i32 1)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %202

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = load i32, i32* @MS_TM_READ_BYTES, align 4
  %29 = load i32, i32* @READ_REG, align 4
  %30 = load i32, i32* @NO_WAIT_INT, align 4
  %31 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 6, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %202

46:                                               ; preds = %40
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = load i64, i64* @PPBUF_BASE2, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i32 @rtsx_read_register(%struct.rtsx_chip* %47, i64 %49, i32* %9)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %202

55:                                               ; preds = %46
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %57 = call i32 @rtsx_dev(%struct.rtsx_chip* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %67 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %69, i32* %3, align 4
  br label %202

70:                                               ; preds = %55
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %72 = load i64, i64* @PPBUF_BASE2, align 8
  %73 = add nsw i64 %72, 4
  %74 = call i32 @rtsx_read_register(%struct.rtsx_chip* %71, i64 %73, i32* %9)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %202

79:                                               ; preds = %70
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %81 = call i32 @rtsx_dev(%struct.rtsx_chip* %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %88 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %89, i32* %3, align 4
  br label %202

90:                                               ; preds = %79
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %92 = load i64, i64* @PPBUF_BASE2, align 8
  %93 = add nsw i64 %92, 5
  %94 = call i32 @rtsx_read_register(%struct.rtsx_chip* %91, i64 %93, i32* %9)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %202

99:                                               ; preds = %90
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %101 = call i32 @rtsx_dev(%struct.rtsx_chip* %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %99
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %108 = load i64, i64* @PPBUF_BASE2, align 8
  %109 = call i32 @rtsx_read_register(%struct.rtsx_chip* %107, i64 %108, i32* %9)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %202

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @WRT_PRTCT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @MS_CARD, align 4
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %122 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %132

125:                                              ; preds = %114
  %126 = load i32, i32* @MS_CARD, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %129 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %119
  br label %153

133:                                              ; preds = %99
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %148

142:                                              ; preds = %139, %136, %133
  %143 = load i32, i32* @MS_CARD, align 4
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %145 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %152

148:                                              ; preds = %139
  %149 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %150 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %151, i32* %3, align 4
  br label %202

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %132
  %154 = load i32, i32* @TYPE_MSPRO, align 4
  %155 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %156 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %160 = load i64, i64* @PPBUF_BASE2, align 8
  %161 = add nsw i64 %160, 3
  %162 = call i32 @rtsx_read_register(%struct.rtsx_chip* %159, i64 %161, i32* %9)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %202

167:                                              ; preds = %153
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %169 = call i32 @rtsx_dev(%struct.rtsx_chip* %168)
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @dev_dbg(i32 %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %176 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 15
  store i32 %178, i32* %176, align 4
  br label %200

179:                                              ; preds = %167
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 7
  br i1 %181, label %182, label %197

182:                                              ; preds = %179
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* @MS_HG, align 4
  %187 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %188 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %196

191:                                              ; preds = %182
  %192 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %193 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 15
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %191, %185
  br label %199

197:                                              ; preds = %179
  %198 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %198, i32* %3, align 4
  br label %202

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199, %174
  %201 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %200, %197, %165, %148, %112, %97, %86, %77, %68, %53, %44, %19
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i64, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
