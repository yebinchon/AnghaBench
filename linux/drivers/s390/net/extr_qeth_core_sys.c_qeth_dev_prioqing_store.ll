; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_prioqing_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_prioqing_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@QETH_PRIOQ_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"prio_queueing_prec\00", align 1
@QETH_PRIO_Q_ING_PREC = common dso_local global i8* null, align 8
@QETH_DEFAULT_QUEUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"prio_queueing_skb\00", align 1
@QETH_PRIO_Q_ING_SKB = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"prio_queueing_tos\00", align 1
@QETH_PRIO_Q_ING_TOS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"prio_queueing_vlan\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@QETH_PRIO_Q_ING_VLAN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:0\00", align 1
@QETH_NO_PRIO_QUEUEING = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:1\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:2\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:3\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"no_prio_queueing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_prioqing_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_prioqing_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %12)
  store %struct.qeth_card* %13, %struct.qeth_card** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %15 = icmp ne %struct.qeth_card* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %202

19:                                               ; preds = %4
  %20 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %21 = call i64 @IS_IQD(%struct.qeth_card* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %202

26:                                               ; preds = %19
  %27 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CARD_STATE_DOWN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %188

38:                                               ; preds = %26
  %39 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** @QETH_PRIOQ_DEFAULT, align 8
  %46 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %188

51:                                               ; preds = %38
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @sysfs_streq(i8* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8*, i8** @QETH_PRIO_Q_ING_PREC, align 8
  %57 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @QETH_DEFAULT_QUEUE, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %187

65:                                               ; preds = %51
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @sysfs_streq(i8* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i8*, i8** @QETH_PRIO_Q_ING_SKB, align 8
  %71 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** @QETH_DEFAULT_QUEUE, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  br label %186

79:                                               ; preds = %65
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @sysfs_streq(i8* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i8*, i8** @QETH_PRIO_Q_ING_TOS, align 8
  %85 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @QETH_DEFAULT_QUEUE, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %185

93:                                               ; preds = %79
  %94 = load i8*, i8** %8, align 8
  %95 = call i64 @sysfs_streq(i8* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %99 = call i64 @IS_LAYER3(%struct.qeth_card* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @ENOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %188

104:                                              ; preds = %97
  %105 = load i8*, i8** @QETH_PRIO_Q_ING_VLAN, align 8
  %106 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i8* %105, i8** %108, align 8
  %109 = load i8*, i8** @QETH_DEFAULT_QUEUE, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  br label %184

114:                                              ; preds = %93
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @sysfs_streq(i8* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %120 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %183

126:                                              ; preds = %114
  %127 = load i8*, i8** %8, align 8
  %128 = call i64 @sysfs_streq(i8* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %132 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  %135 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %136 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %182

138:                                              ; preds = %126
  %139 = load i8*, i8** %8, align 8
  %140 = call i64 @sysfs_streq(i8* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %144 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %145 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  %147 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %148 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 2, i32* %149, align 4
  br label %181

150:                                              ; preds = %138
  %151 = load i8*, i8** %8, align 8
  %152 = call i64 @sysfs_streq(i8* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %156 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %157 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %160 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  store i32 3, i32* %161, align 4
  br label %180

162:                                              ; preds = %150
  %163 = load i8*, i8** %8, align 8
  %164 = call i64 @sysfs_streq(i8* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %168 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %169 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  store i8* %167, i8** %170, align 8
  %171 = load i8*, i8** @QETH_DEFAULT_QUEUE, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %174 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  br label %179

176:                                              ; preds = %162
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %176, %166
  br label %180

180:                                              ; preds = %179, %154
  br label %181

181:                                              ; preds = %180, %142
  br label %182

182:                                              ; preds = %181, %130
  br label %183

183:                                              ; preds = %182, %118
  br label %184

184:                                              ; preds = %183, %104
  br label %185

185:                                              ; preds = %184, %83
  br label %186

186:                                              ; preds = %185, %69
  br label %187

187:                                              ; preds = %186, %55
  br label %188

188:                                              ; preds = %187, %101, %44, %35
  %189 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %190 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %189, i32 0, i32 1
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  br label %199

197:                                              ; preds = %188
  %198 = load i64, i64* %9, align 8
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i64 [ %196, %194 ], [ %198, %197 ]
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %199, %23, %16
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i64 @IS_LAYER3(%struct.qeth_card*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
