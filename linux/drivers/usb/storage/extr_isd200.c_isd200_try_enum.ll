; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_try_enum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_try_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.isd200_info = type { i8*, i8, i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ISD200_ENUM_DETECT_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ISD200_ENUM_BSY_TIMEOUT = common dso_local global i64 0, align 8
@ACTION_ENUM = common dso_local global i32 0, align 4
@ACTION_READ_STATUS = common dso_local global i32 0, align 4
@ATA_REG_STATUS_OFFSET = common dso_local global i64 0, align 8
@ATA_BUSY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [41 x i8] c"   %s status is still BSY, try again...\0A\00", align 1
@ATA_ADDRESS_DEVHEAD_STD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"   %s status !BSY, continue with next operation\0A\00", align 1
@ATA_DF = common dso_local global i8 0, align 1
@ATA_ERR = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"   Status indicates it is not ready, try again...\0A\00", align 1
@ATA_DRDY = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"   Identified ATA device\0A\00", align 1
@DF_ATA_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_HCYL_OFFSET = common dso_local global i64 0, align 8
@ATA_REG_LCYL_OFFSET = common dso_local global i64 0, align 8
@ATA_ADDRESS_DEVHEAD_SLAVE = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"   Identified ATAPI device as slave.  Rechecking again as master\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"   Identified ATAPI device\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"   Not ATA, not ATAPI - Weird\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"   BSY check timeout, just continue with next operation...\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"   Device detect timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8, i32)* @isd200_try_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_try_enum(%struct.us_data* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.isd200_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.us_data*, %struct.us_data** %4, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.isd200_info*
  store %struct.isd200_info* %16, %struct.isd200_info** %9, align 8
  %17 = load %struct.isd200_info*, %struct.isd200_info** %9, align 8
  %18 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @ISD200_ENUM_DETECT_TIMEOUT, align 8
  %25 = load i64, i64* @HZ, align 8
  %26 = mul i64 %24, %25
  %27 = add i64 %23, %26
  store i64 %27, i64* %8, align 8
  br label %34

28:                                               ; preds = %3
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @ISD200_ENUM_BSY_TIMEOUT, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = mul i64 %30, %31
  %33 = add i64 %29, %32
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %28, %22
  br label %35

35:                                               ; preds = %34, %186
  %36 = load %struct.us_data*, %struct.us_data** %4, align 8
  %37 = load i32, i32* @ACTION_ENUM, align 4
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 @isd200_action(%struct.us_data* %36, i32 %37, i8* null, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ISD200_GOOD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %187

45:                                               ; preds = %35
  %46 = load %struct.us_data*, %struct.us_data** %4, align 8
  %47 = load i32, i32* @ACTION_READ_STATUS, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @isd200_action(%struct.us_data* %46, i32 %47, i8* %48, i32 8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ISD200_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %187

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* @ATA_REG_STATUS_OFFSET, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @ATA_BUSY, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.us_data*, %struct.us_data** %4, align 8
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @ATA_ADDRESS_DEVHEAD_STD, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %87

77:                                               ; preds = %57
  %78 = load %struct.us_data*, %struct.us_data** %4, align 8
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @ATA_ADDRESS_DEVHEAD_STD, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %187

87:                                               ; preds = %67
  br label %171

88:                                               ; preds = %54
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* @ATA_REG_STATUS_OFFSET, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @ATA_BUSY, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @ATA_DF, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %95, %97
  %99 = load i8, i8* @ATA_ERR, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = and i32 %93, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load %struct.us_data*, %struct.us_data** %4, align 8
  %106 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %170

107:                                              ; preds = %88
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* @ATA_REG_STATUS_OFFSET, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @ATA_DRDY, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %107
  %118 = load %struct.us_data*, %struct.us_data** %4, align 8
  %119 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @DF_ATA_DEVICE, align 4
  %121 = load %struct.isd200_info*, %struct.isd200_info** %9, align 8
  %122 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i8, i8* %5, align 1
  %126 = load %struct.isd200_info*, %struct.isd200_info** %9, align 8
  %127 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %126, i32 0, i32 1
  store i8 %125, i8* %127, align 8
  br label %187

128:                                              ; preds = %107
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* @ATA_REG_HCYL_OFFSET, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 235
  br i1 %134, label %135, label %165

135:                                              ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = load i64, i64* @ATA_REG_LCYL_OFFSET, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 20
  br i1 %141, label %142, label %165

142:                                              ; preds = %135
  %143 = load i8, i8* %5, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* @ATA_ADDRESS_DEVHEAD_SLAVE, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load %struct.us_data*, %struct.us_data** %4, align 8
  %154 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %153, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  %155 = load i8, i8* @ATA_ADDRESS_DEVHEAD_STD, align 1
  store i8 %155, i8* %5, align 1
  br label %164

156:                                              ; preds = %149, %142
  %157 = load %struct.us_data*, %struct.us_data** %4, align 8
  %158 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %159 = load i8, i8* %5, align 1
  %160 = load %struct.isd200_info*, %struct.isd200_info** %9, align 8
  %161 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %160, i32 0, i32 1
  store i8 %159, i8* %161, align 8
  %162 = load %struct.us_data*, %struct.us_data** %4, align 8
  %163 = call i32 @isd200_atapi_soft_reset(%struct.us_data* %162)
  store i32 %163, i32* %7, align 4
  br label %187

164:                                              ; preds = %152
  br label %168

165:                                              ; preds = %135, %128
  %166 = load %struct.us_data*, %struct.us_data** %4, align 8
  %167 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %187

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169, %104
  br label %171

171:                                              ; preds = %170, %87
  %172 = load i64, i64* @jiffies, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @time_after_eq(i64 %172, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load %struct.us_data*, %struct.us_data** %4, align 8
  %181 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %180, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  br label %185

182:                                              ; preds = %176
  %183 = load %struct.us_data*, %struct.us_data** %4, align 8
  %184 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %179
  br label %187

186:                                              ; preds = %171
  br label %35

187:                                              ; preds = %185, %165, %156, %117, %77, %53, %44
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @isd200_action(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @isd200_atapi_soft_reset(%struct.us_data*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
