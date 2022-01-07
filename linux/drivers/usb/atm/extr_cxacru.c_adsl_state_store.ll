; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cxacru_data = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%7s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@CM_REQUEST_CHIP_ADSL_LINE_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"change adsl state: CHIP_ADSL_LINE_STOP returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@CM_REQUEST_CHIP_ADSL_LINE_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"change adsl state: CHIP_ADSL_LINE_START returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adsl_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsl_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cxacru_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @to_usb_interface(%struct.device* %15)
  %17 = call %struct.cxacru_data* @to_usbatm_driver_data(i32 %16)
  store %struct.cxacru_data* %17, %struct.cxacru_data** %10, align 8
  store i32 -1, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %170

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %29 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %170

35:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %36 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %37 = icmp eq %struct.cxacru_data* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %170

41:                                               ; preds = %35
  %42 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %43 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %42, i32 0, i32 2
  %44 = call i64 @mutex_lock_interruptible(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %170

49:                                               ; preds = %41
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %59 = load i32, i32* @CM_REQUEST_CHIP_ADSL_LINE_STOP, align 4
  %60 = call i32 @cxacru_cm(%struct.cxacru_data* %58, i32 %59, i32* null, i32 0, i32* null, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %65 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @atm_err(i32 %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %11, align 4
  store i32 129, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %63
  br label %74

74:                                               ; preds = %73, %53
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 @msleep(i32 1500)
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %90 = load i32, i32* @CM_REQUEST_CHIP_ADSL_LINE_START, align 4
  %91 = call i32 @cxacru_cm(%struct.cxacru_data* %89, i32 %90, i32* null, i32 0, i32* null, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %96 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @atm_err(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %11, align 4
  store i32 131, i32* %12, align 4
  br label %104

104:                                              ; preds = %102, %94
  br label %105

105:                                              ; preds = %104, %84
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %11, align 4
  store i32 131, i32* %12, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %122 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %121, i32 0, i32 3
  %123 = call i32 @mutex_lock(i32* %122)
  %124 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %125 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %134 [
    i32 129, label %127
    i32 128, label %130
    i32 131, label %133
    i32 130, label %133
  ]

127:                                              ; preds = %120
  %128 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %129 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %128, i32 0, i32 0
  store i32 131, i32* %129, align 4
  br label %134

130:                                              ; preds = %120
  %131 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %132 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %131, i32 0, i32 0
  store i32 131, i32* %132, align 4
  br label %133

133:                                              ; preds = %120, %120, %130
  store i32 -1, i32* %12, align 4
  br label %134

134:                                              ; preds = %133, %120, %127
  %135 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %136 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %135, i32 0, i32 3
  %137 = call i32 @mutex_unlock(i32* %136)
  br label %157

138:                                              ; preds = %117
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 129
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %143 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %142, i32 0, i32 3
  %144 = call i32 @mutex_lock(i32* %143)
  %145 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %146 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 131
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %151 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %150, i32 0, i32 0
  store i32 128, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %141
  %153 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %154 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %153, i32 0, i32 3
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %152, %138
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %159 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %158, i32 0, i32 2
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 131
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %165 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = call i32 @cxacru_poll_status(i32* %166)
  br label %168

168:                                              ; preds = %163, %157
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %46, %38, %32, %23
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.cxacru_data* @to_usbatm_driver_data(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @atm_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cxacru_poll_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
