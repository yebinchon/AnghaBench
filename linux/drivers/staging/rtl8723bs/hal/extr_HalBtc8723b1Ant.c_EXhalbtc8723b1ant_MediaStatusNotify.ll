; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_MediaStatusNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_MediaStatusNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, %struct.TYPE_20__, i64, i64 }
%struct.TYPE_20__ = type { i64 }

@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_19__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_MediaStatusNotify(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast [3 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14, %2
  br label %180

26:                                               ; preds = %19
  %27 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %32 = load i32, i32* @INTF_NOTIFY, align 4
  %33 = call i32 @BTC_PRINT(i32 %31, i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_21__*, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i64*)** %35, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %39 = bitcast i32* %8 to i64*
  %40 = call i32 %36(%struct.TYPE_21__* %37, i32 %38, i64* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = call i32 %46(%struct.TYPE_21__* %47, i32 1741, i32 0)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = call i32 %51(%struct.TYPE_21__* %52, i32 1743, i32 0)
  br label %65

54:                                               ; preds = %30
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = call i32 %57(%struct.TYPE_21__* %58, i32 1741, i32 16)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %61, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = call i32 %62(%struct.TYPE_21__* %63, i32 1743, i32 16)
  br label %65

65:                                               ; preds = %54, %43
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 5
  %68 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = call i32 %68(%struct.TYPE_21__* %69, i32 1072)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 5
  %75 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %74, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = call i32 %75(%struct.TYPE_21__* %76, i32 1076)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 4
  %82 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = call i32 %82(%struct.TYPE_21__* %83, i32 1066)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = call i32 %89(%struct.TYPE_21__* %90, i32 1110)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %110

94:                                               ; preds = %26
  %95 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %96 = load i32, i32* @INTF_NOTIFY, align 4
  %97 = call i32 @BTC_PRINT(i32 %95, i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = call i32 %102(%struct.TYPE_21__* %103, i32 1741, i32 0)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %106, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = call i32 %107(%struct.TYPE_21__* %108, i32 1743, i32 0)
  br label %110

110:                                              ; preds = %94, %65
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_21__*, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i64*)** %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %116 = call i32 %113(%struct.TYPE_21__* %114, i32 %115, i64* %7)
  %117 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %118 = load i64, i64* %4, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %110
  %121 = load i64, i64* %7, align 8
  %122 = icmp sle i64 %121, 14
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 0, i64* %124, align 16
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_21__*, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i64*)** %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %132 = call i32 %129(%struct.TYPE_21__* %130, i32 %131, i64* %6)
  %133 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 48, i64* %137, align 16
  br label %140

138:                                              ; preds = %123
  %139 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 32, i64* %139, align 16
  br label %140

140:                                              ; preds = %138, %136
  br label %141

141:                                              ; preds = %140, %120, %110
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %143 = load i64, i64* %142, align 16
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  store i64 %143, i64* %147, align 8
  %148 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  store i64 %149, i64* %153, align 8
  %154 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %155 = load i64, i64* %154, align 16
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  store i64 %155, i64* %159, align 8
  %160 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %161 = load i32, i32* @ALGO_TRACE_FW_EXEC, align 4
  %162 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %163 = load i64, i64* %162, align 16
  %164 = shl i64 %163, 16
  %165 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = shl i64 %166, 8
  %168 = or i64 %164, %167
  %169 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %170 = load i64, i64* %169, align 16
  %171 = or i64 %168, %170
  %172 = inttoptr i64 %171 to i8*
  %173 = call i32 @BTC_PRINT(i32 %160, i32 %161, i8* %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i32 (%struct.TYPE_21__*, i32, i32, i64*)*, i32 (%struct.TYPE_21__*, i32, i32, i64*)** %175, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %178 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %179 = call i32 %176(%struct.TYPE_21__* %177, i32 102, i32 3, i64* %178)
  br label %180

180:                                              ; preds = %141, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
