; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect_24.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }

@SNS0_CMD_REJECT = common dso_local global i8 0, align 1
@SNS0_INTERVENTION_REQ = common dso_local global i8 0, align 1
@SNS0_BUS_OUT_CHECK = common dso_local global i8 0, align 1
@SNS0_EQUIPMENT_CHECK = common dso_local global i8 0, align 1
@SNS0_DATA_CHECK = common dso_local global i8 0, align 1
@SNS0_OVERRUN = common dso_local global i8 0, align 1
@SNS1_INV_TRACK_FORMAT = common dso_local global i8 0, align 1
@SNS1_EOC = common dso_local global i8 0, align 1
@SNS2_ENV_DATA_PRESENT = common dso_local global i8 0, align 1
@SNS1_NO_REC_FOUND = common dso_local global i8 0, align 1
@SNS1_FILE_PROTECTED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_inspect_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_inspect_24(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %5, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %7 = icmp eq %struct.dasd_ccw_req* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @SNS0_CMD_REJECT, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.dasd_ccw_req* @dasd_3990_erp_com_rej(%struct.dasd_ccw_req* %18, i8* %19)
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %5, align 8
  br label %21

21:                                               ; preds = %17, %8, %2
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %23 = icmp eq %struct.dasd_ccw_req* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @SNS0_INTERVENTION_REQ, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %35 = call %struct.dasd_ccw_req* @dasd_3990_erp_int_req(%struct.dasd_ccw_req* %34)
  store %struct.dasd_ccw_req* %35, %struct.dasd_ccw_req** %5, align 8
  br label %36

36:                                               ; preds = %33, %24, %21
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %38 = icmp eq %struct.dasd_ccw_req* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @SNS0_BUS_OUT_CHECK, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %50 = call %struct.dasd_ccw_req* @dasd_3990_erp_bus_out(%struct.dasd_ccw_req* %49)
  store %struct.dasd_ccw_req* %50, %struct.dasd_ccw_req** %5, align 8
  br label %51

51:                                               ; preds = %48, %39, %36
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %53 = icmp eq %struct.dasd_ccw_req* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @SNS0_EQUIPMENT_CHECK, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call %struct.dasd_ccw_req* @dasd_3990_erp_equip_check(%struct.dasd_ccw_req* %64, i8* %65)
  store %struct.dasd_ccw_req* %66, %struct.dasd_ccw_req** %5, align 8
  br label %67

67:                                               ; preds = %63, %54, %51
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %69 = icmp eq %struct.dasd_ccw_req* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @SNS0_DATA_CHECK, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call %struct.dasd_ccw_req* @dasd_3990_erp_data_check(%struct.dasd_ccw_req* %80, i8* %81)
  store %struct.dasd_ccw_req* %82, %struct.dasd_ccw_req** %5, align 8
  br label %83

83:                                               ; preds = %79, %70, %67
  %84 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %85 = icmp eq %struct.dasd_ccw_req* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @SNS0_OVERRUN, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call %struct.dasd_ccw_req* @dasd_3990_erp_overrun(%struct.dasd_ccw_req* %96, i8* %97)
  store %struct.dasd_ccw_req* %98, %struct.dasd_ccw_req** %5, align 8
  br label %99

99:                                               ; preds = %95, %86, %83
  %100 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %101 = icmp eq %struct.dasd_ccw_req* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* @SNS1_INV_TRACK_FORMAT, align 1
  %108 = sext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call %struct.dasd_ccw_req* @dasd_3990_erp_inv_format(%struct.dasd_ccw_req* %112, i8* %113)
  store %struct.dasd_ccw_req* %114, %struct.dasd_ccw_req** %5, align 8
  br label %115

115:                                              ; preds = %111, %102, %99
  %116 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %117 = icmp eq %struct.dasd_ccw_req* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @SNS1_EOC, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call %struct.dasd_ccw_req* @dasd_3990_erp_EOC(%struct.dasd_ccw_req* %128, i8* %129)
  store %struct.dasd_ccw_req* %130, %struct.dasd_ccw_req** %5, align 8
  br label %131

131:                                              ; preds = %127, %118, %115
  %132 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %133 = icmp eq %struct.dasd_ccw_req* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* @SNS2_ENV_DATA_PRESENT, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = call %struct.dasd_ccw_req* @dasd_3990_erp_env_data(%struct.dasd_ccw_req* %144, i8* %145)
  store %struct.dasd_ccw_req* %146, %struct.dasd_ccw_req** %5, align 8
  br label %147

147:                                              ; preds = %143, %134, %131
  %148 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %149 = icmp eq %struct.dasd_ccw_req* %148, null
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* @SNS1_NO_REC_FOUND, align 1
  %156 = sext i8 %155 to i32
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = call %struct.dasd_ccw_req* @dasd_3990_erp_no_rec(%struct.dasd_ccw_req* %160, i8* %161)
  store %struct.dasd_ccw_req* %162, %struct.dasd_ccw_req** %5, align 8
  br label %163

163:                                              ; preds = %159, %150, %147
  %164 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %165 = icmp eq %struct.dasd_ccw_req* %164, null
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8, i8* @SNS1_FILE_PROTECTED, align 1
  %172 = sext i8 %171 to i32
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %177 = call %struct.dasd_ccw_req* @dasd_3990_erp_file_prot(%struct.dasd_ccw_req* %176)
  store %struct.dasd_ccw_req* %177, %struct.dasd_ccw_req** %5, align 8
  br label %178

178:                                              ; preds = %175, %166, %163
  %179 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %180 = icmp eq %struct.dasd_ccw_req* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %182, %struct.dasd_ccw_req** %5, align 8
  br label %183

183:                                              ; preds = %181, %178
  %184 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  ret %struct.dasd_ccw_req* %184
}

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_com_rej(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_int_req(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_bus_out(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_equip_check(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_data_check(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_overrun(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_inv_format(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_EOC(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_env_data(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_no_rec(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_file_prot(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
