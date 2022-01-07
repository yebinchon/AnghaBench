; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_start_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_start_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.most_channel** }
%struct.most_channel = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_10__, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32, %struct.core_component* }
%struct.TYPE_7__ = type { i64, i32, %struct.core_component* }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)* }
%struct.core_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to acquire HDM lock\0A\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"channel configuration failed. Go check settings...\0A\00", align 1
@MOST_CH_RX = common dso_local global i64 0, align 8
@most_read_completion = common dso_local global i32 0, align 4
@most_write_completion = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_start_channel(%struct.most_interface* %0, i32 %1, %struct.core_component* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.core_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.most_channel*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.core_component* %2, %struct.core_component** %7, align 8
  %11 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %12 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.most_channel**, %struct.most_channel*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %15, i64 %17
  %19 = load %struct.most_channel*, %struct.most_channel** %18, align 8
  store %struct.most_channel* %19, %struct.most_channel** %10, align 8
  %20 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %21 = icmp ne %struct.most_channel* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %189

29:                                               ; preds = %3
  %30 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %31 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %34 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %38 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %150

44:                                               ; preds = %29
  %45 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %46 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @try_module_get(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %53 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @ENOLCK, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %189

57:                                               ; preds = %44
  %58 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %59 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %62 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %61, i32 0, i32 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)*, i64 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)** %64, align 8
  %66 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %67 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %66, i32 0, i32 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %70 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %73 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %72, i32 0, i32 4
  %74 = call i64 %65(%struct.TYPE_9__* %68, i32 %71, %struct.TYPE_10__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %180

80:                                               ; preds = %57
  %81 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %82 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %81, i32 0, i32 6
  %83 = call i32 @init_waitqueue_head(i32* %82)
  %84 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %85 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MOST_CH_RX, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %92 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %93 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @most_read_completion, align 4
  %97 = call i32 @arm_mbo_chain(%struct.most_channel* %91, i64 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %106

98:                                               ; preds = %80
  %99 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %100 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %101 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @most_write_completion, align 4
  %105 = call i32 @arm_mbo_chain(%struct.most_channel* %99, i64 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %98, %90
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %180

116:                                              ; preds = %106
  %117 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @run_enqueue_thread(%struct.most_channel* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %180

123:                                              ; preds = %116
  %124 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %125 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %127 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %129, 2
  %131 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %132 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 8
  %134 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %135 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %139 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %137, %141
  %143 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %144 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %147 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %146, i32 0, i32 3
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @atomic_set(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %123, %43
  %151 = load %struct.core_component*, %struct.core_component** %7, align 8
  %152 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %153 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load %struct.core_component*, %struct.core_component** %154, align 8
  %156 = icmp eq %struct.core_component* %151, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %159 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.core_component*, %struct.core_component** %7, align 8
  %165 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %166 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load %struct.core_component*, %struct.core_component** %167, align 8
  %169 = icmp eq %struct.core_component* %164, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %172 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %170, %163
  %177 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %178 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  store i32 0, i32* %4, align 4
  br label %189

180:                                              ; preds = %122, %113, %76
  %181 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %182 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @module_put(i32 %183)
  %185 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %186 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %180, %176, %50, %26
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @arm_mbo_chain(%struct.most_channel*, i64, i32) #1

declare dso_local i32 @run_enqueue_thread(%struct.most_channel*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
