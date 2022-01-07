; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_for_device_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_for_device_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i32, %struct.TYPE_2__*, i32, i64, i32, %struct.dasd_eckd_private* }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_eckd_private = type { i8, i64 }
%struct.dasd_ccw_req = type { i32 }
%struct.irb = type { i32 }

@DEV_STAT_ATTENTION = common dso_local global i8 0, align 1
@DEV_STAT_DEV_END = common dso_local global i8 0, align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i8 0, align 1
@DASD_STATE_ONLINE = common dso_local global i64 0, align 8
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@DASD_SENSE_BIT_0 = common dso_local global i8 0, align 1
@DEV_STAT_UNIT_CHECK = common dso_local global i8 0, align 1
@DASD_FLAG_SUC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eckd suc: device already notified\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"eckd suc: no reason code available\00", align 1
@DBF_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %x\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"eckd handle summary unit check: reason\00", align 1
@DASD_SIM_SENSE = common dso_local global i8 0, align 1
@DASD_FLAG_IS_RESERVED = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILONSLCK = common dso_local global i32 0, align 4
@DASD_FLAG_LOCK_STOLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"The device reservation was lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* @dasd_eckd_check_for_device_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_check_for_device_change(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 6
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %9, align 8
  %13 = load i8, i8* @DEV_STAT_ATTENTION, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @DEV_STAT_DEV_END, align 1
  %16 = sext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i8, i8* @DEV_STAT_UNIT_EXCEP, align 1
  %19 = sext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load %struct.irb*, %struct.irb** %6, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 0
  %24 = call signext i8 @scsw_dstat(i32* %23)
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %3
  %33 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %32
  %38 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %39 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DASD_STATE_ONLINE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %50 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %51 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %50, i32 0, i32 3
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @DASD_FLAG_SUSPENDED, align 4
  %56 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 3
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %62 = call i32 @dasd_reload_device(%struct.dasd_device* %61)
  br label %63

63:                                               ; preds = %60, %54, %48, %42, %37, %32
  %64 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %65 = call i32 @dasd_generic_handle_state_change(%struct.dasd_device* %64)
  br label %226

66:                                               ; preds = %3
  %67 = load %struct.irb*, %struct.irb** %6, align 8
  %68 = call i8* @dasd_get_sense(%struct.irb* %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %226

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 27
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %142

81:                                               ; preds = %72
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 7
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %142

87:                                               ; preds = %81
  %88 = load %struct.irb*, %struct.irb** %6, align 8
  %89 = getelementptr inbounds %struct.irb, %struct.irb* %88, i32 0, i32 0
  %90 = call signext i8 @scsw_dstat(i32* %89)
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @DEV_STAT_UNIT_CHECK, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %142

96:                                               ; preds = %87
  %97 = load i32, i32* @DASD_FLAG_SUC, align 4
  %98 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %99 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %98, i32 0, i32 3
  %100 = call i64 @test_and_set_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @DBF_WARNING, align 4
  %104 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %105 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %103, %struct.dasd_device* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %226

106:                                              ; preds = %96
  %107 = load %struct.irb*, %struct.irb** %6, align 8
  %108 = call i8* @dasd_get_sense(%struct.irb* %107)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @DBF_WARNING, align 4
  %113 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %114 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %112, %struct.dasd_device* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @DASD_FLAG_SUC, align 4
  %116 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %117 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %116, i32 0, i32 3
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  br label %226

119:                                              ; preds = %106
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = load i8, i8* %121, align 1
  %123 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %124 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %123, i32 0, i32 0
  store i8 %122, i8* %124, align 8
  %125 = load i32, i32* @DBF_NOTICE, align 4
  %126 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %127 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %128 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %127, i32 0, i32 0
  %129 = load i8, i8* %128, align 8
  %130 = sext i8 %129 to i32
  %131 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %125, %struct.dasd_device* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %133 = call i32 @dasd_get_device(%struct.dasd_device* %132)
  %134 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %135 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %134, i32 0, i32 5
  %136 = call i32 @schedule_work(i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %119
  %139 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %140 = call i32 @dasd_put_device(%struct.dasd_device* %139)
  br label %141

141:                                              ; preds = %138, %119
  br label %226

142:                                              ; preds = %87, %81, %72
  %143 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %144 = icmp ne %struct.dasd_ccw_req* %143, null
  br i1 %144, label %169, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 27
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %151 = sext i8 %150 to i32
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %145
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 6
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8, i8* @DASD_SIM_SENSE, align 1
  %160 = sext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = load i8, i8* @DASD_SIM_SENSE, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %154
  %166 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @dasd_3990_erp_handle_sim(%struct.dasd_device* %166, i8* %167)
  br label %226

169:                                              ; preds = %154, %145, %142
  %170 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %171 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %226

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 27
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %180 = sext i8 %179 to i32
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %226

183:                                              ; preds = %174
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 7
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 63
  br i1 %188, label %189, label %226

189:                                              ; preds = %183
  %190 = load %struct.irb*, %struct.irb** %6, align 8
  %191 = getelementptr inbounds %struct.irb, %struct.irb* %190, i32 0, i32 0
  %192 = call signext i8 @scsw_dstat(i32* %191)
  %193 = sext i8 %192 to i32
  %194 = load i8, i8* @DEV_STAT_UNIT_CHECK, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %193, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %189
  %199 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %200 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %201 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %200, i32 0, i32 3
  %202 = call i64 @test_bit(i32 %199, i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %198
  %205 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %206 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @DASD_FEATURE_FAILONSLCK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %204
  %212 = load i32, i32* @DASD_FLAG_LOCK_STOLEN, align 4
  %213 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %214 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %213, i32 0, i32 3
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  br label %216

216:                                              ; preds = %211, %204
  %217 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %218 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %219 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %218, i32 0, i32 3
  %220 = call i32 @clear_bit(i32 %217, i32* %219)
  %221 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %222 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %226

226:                                              ; preds = %63, %71, %102, %111, %141, %165, %216, %198, %189, %183, %174, %169
  ret void
}

declare dso_local signext i8 @scsw_dstat(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_reload_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_handle_state_change(%struct.dasd_device*) #1

declare dso_local i8* @dasd_get_sense(%struct.irb*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_3990_erp_handle_sim(%struct.dasd_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
