; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmp = type { i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"QMP magic doesn't match\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QMP_DESC_VERSION = common dso_local global i64 0, align 8
@QMP_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported QMP version %d\0A\00", align 1
@QMP_DESC_MCORE_MBOX_OFFSET = common dso_local global i64 0, align 8
@QMP_DESC_MCORE_MBOX_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid mailbox size\0A\00", align 1
@QMP_DESC_UCORE_LINK_STATE = common dso_local global i64 0, align 8
@QMP_DESC_UCORE_LINK_STATE_ACK = common dso_local global i64 0, align 8
@QMP_STATE_UP = common dso_local global i64 0, align 8
@QMP_DESC_MCORE_LINK_STATE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ucore didn't ack link\0A\00", align 1
@QMP_DESC_MCORE_CH_STATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"ucore didn't open channel\0A\00", align 1
@QMP_DESC_UCORE_CH_STATE_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"ucore didn't ack channel\0A\00", align 1
@QMP_STATE_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmp*)* @qmp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_open(%struct.qmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qmp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.qmp* %0, %struct.qmp** %3, align 8
  %6 = load %struct.qmp*, %struct.qmp** %3, align 8
  %7 = call i32 @qmp_magic_valid(%struct.qmp* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.qmp*, %struct.qmp** %3, align 8
  %11 = getelementptr inbounds %struct.qmp, %struct.qmp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dev_err(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %168

16:                                               ; preds = %1
  %17 = load %struct.qmp*, %struct.qmp** %3, align 8
  %18 = getelementptr inbounds %struct.qmp, %struct.qmp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QMP_DESC_VERSION, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @QMP_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.qmp*, %struct.qmp** %3, align 8
  %28 = getelementptr inbounds %struct.qmp, %struct.qmp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %168

34:                                               ; preds = %16
  %35 = load %struct.qmp*, %struct.qmp** %3, align 8
  %36 = getelementptr inbounds %struct.qmp, %struct.qmp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @QMP_DESC_MCORE_MBOX_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @readl(i64 %39)
  %41 = load %struct.qmp*, %struct.qmp** %3, align 8
  %42 = getelementptr inbounds %struct.qmp, %struct.qmp* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = load %struct.qmp*, %struct.qmp** %3, align 8
  %44 = getelementptr inbounds %struct.qmp, %struct.qmp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QMP_DESC_MCORE_MBOX_SIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @readl(i64 %47)
  %49 = load %struct.qmp*, %struct.qmp** %3, align 8
  %50 = getelementptr inbounds %struct.qmp, %struct.qmp* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.qmp*, %struct.qmp** %3, align 8
  %52 = getelementptr inbounds %struct.qmp, %struct.qmp* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %34
  %56 = load %struct.qmp*, %struct.qmp** %3, align 8
  %57 = getelementptr inbounds %struct.qmp, %struct.qmp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %168

62:                                               ; preds = %34
  %63 = load %struct.qmp*, %struct.qmp** %3, align 8
  %64 = getelementptr inbounds %struct.qmp, %struct.qmp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @QMP_DESC_UCORE_LINK_STATE, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @readl(i64 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.qmp*, %struct.qmp** %3, align 8
  %71 = getelementptr inbounds %struct.qmp, %struct.qmp* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @QMP_DESC_UCORE_LINK_STATE_ACK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i64 %69, i64 %74)
  %76 = load i64, i64* @QMP_STATE_UP, align 8
  %77 = load %struct.qmp*, %struct.qmp** %3, align 8
  %78 = getelementptr inbounds %struct.qmp, %struct.qmp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @QMP_DESC_MCORE_LINK_STATE, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i64 %76, i64 %81)
  %83 = load %struct.qmp*, %struct.qmp** %3, align 8
  %84 = call i32 @qmp_kick(%struct.qmp* %83)
  %85 = load %struct.qmp*, %struct.qmp** %3, align 8
  %86 = getelementptr inbounds %struct.qmp, %struct.qmp* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qmp*, %struct.qmp** %3, align 8
  %89 = call i32 @qmp_link_acked(%struct.qmp* %88)
  %90 = load i32, i32* @HZ, align 4
  %91 = call i32 @wait_event_timeout(i32 %87, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %62
  %95 = load %struct.qmp*, %struct.qmp** %3, align 8
  %96 = getelementptr inbounds %struct.qmp, %struct.qmp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %156

99:                                               ; preds = %62
  %100 = load i64, i64* @QMP_STATE_UP, align 8
  %101 = load %struct.qmp*, %struct.qmp** %3, align 8
  %102 = getelementptr inbounds %struct.qmp, %struct.qmp* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @QMP_DESC_MCORE_CH_STATE, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i64 %100, i64 %105)
  %107 = load %struct.qmp*, %struct.qmp** %3, align 8
  %108 = call i32 @qmp_kick(%struct.qmp* %107)
  %109 = load %struct.qmp*, %struct.qmp** %3, align 8
  %110 = getelementptr inbounds %struct.qmp, %struct.qmp* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qmp*, %struct.qmp** %3, align 8
  %113 = call i32 @qmp_ucore_channel_up(%struct.qmp* %112)
  %114 = load i32, i32* @HZ, align 4
  %115 = call i32 @wait_event_timeout(i32 %111, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %99
  %119 = load %struct.qmp*, %struct.qmp** %3, align 8
  %120 = getelementptr inbounds %struct.qmp, %struct.qmp* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %148

123:                                              ; preds = %99
  %124 = load i64, i64* @QMP_STATE_UP, align 8
  %125 = load %struct.qmp*, %struct.qmp** %3, align 8
  %126 = getelementptr inbounds %struct.qmp, %struct.qmp* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @QMP_DESC_UCORE_CH_STATE_ACK, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i64 %124, i64 %129)
  %131 = load %struct.qmp*, %struct.qmp** %3, align 8
  %132 = call i32 @qmp_kick(%struct.qmp* %131)
  %133 = load %struct.qmp*, %struct.qmp** %3, align 8
  %134 = getelementptr inbounds %struct.qmp, %struct.qmp* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qmp*, %struct.qmp** %3, align 8
  %137 = call i32 @qmp_mcore_channel_acked(%struct.qmp* %136)
  %138 = load i32, i32* @HZ, align 4
  %139 = call i32 @wait_event_timeout(i32 %135, i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %123
  %143 = load %struct.qmp*, %struct.qmp** %3, align 8
  %144 = getelementptr inbounds %struct.qmp, %struct.qmp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %148

147:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %168

148:                                              ; preds = %142, %118
  %149 = load i64, i64* @QMP_STATE_DOWN, align 8
  %150 = load %struct.qmp*, %struct.qmp** %3, align 8
  %151 = getelementptr inbounds %struct.qmp, %struct.qmp* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @QMP_DESC_MCORE_CH_STATE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i64 %149, i64 %154)
  br label %156

156:                                              ; preds = %148, %94
  %157 = load i64, i64* @QMP_STATE_DOWN, align 8
  %158 = load %struct.qmp*, %struct.qmp** %3, align 8
  %159 = getelementptr inbounds %struct.qmp, %struct.qmp* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @QMP_DESC_MCORE_LINK_STATE, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i64 %157, i64 %162)
  %164 = load %struct.qmp*, %struct.qmp** %3, align 8
  %165 = call i32 @qmp_kick(%struct.qmp* %164)
  %166 = load i32, i32* @ETIMEDOUT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %156, %147, %55, %26, %9
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @qmp_magic_valid(%struct.qmp*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @qmp_kick(%struct.qmp*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @qmp_link_acked(%struct.qmp*) #1

declare dso_local i32 @qmp_ucore_channel_up(%struct.qmp*) #1

declare dso_local i32 @qmp_mcore_channel_acked(%struct.qmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
