; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_chx_firstio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_chx_firstio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, %struct.net_device*, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i64 }
%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s(%s) : %02x\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@CTC_STATE_TXIDLE = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s(%s): remote side issued READ?, init.\0A\00", align 1
@CTC_STATE_SETUPWAIT = common dso_local global i32 0, align 4
@CTCM_PROTO_OS390 = common dso_local global i64 0, align 8
@CTCM_READ = common dso_local global i64 0, align 8
@CTCM_INITIAL_BLOCKLEN = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@DEV_EVENT_TXUP = common dso_local global i32 0, align 4
@CTCM_WRITE = common dso_local global i64 0, align 8
@CTCM_PROTO_S390 = common dso_local global i64 0, align 8
@CTC_STATE_RXINIT = common dso_local global i32 0, align 4
@CTC_STATE_TXINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"init IO\00", align 1
@DEV_EVENT_RXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @chx_firstio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chx_firstio(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ctcm_priv*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ctcm_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.channel*
  store %struct.channel* %15, %struct.channel** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fsm_getstate(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @TRACE, align 4
  %19 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %20 = load i32, i32* @CTCM_FUNTAIL, align 4
  %21 = load %struct.channel*, %struct.channel** %8, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %24)
  %26 = load %struct.channel*, %struct.channel** %8, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CTC_STATE_TXIDLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load i32, i32* @TRACE, align 4
  %33 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %34 = load i32, i32* @CTCM_FUNTAIL, align 4
  %35 = load %struct.channel*, %struct.channel** %8, align 8
  %36 = getelementptr inbounds %struct.channel, %struct.channel* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.channel*, %struct.channel** %8, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 3
  %42 = call i32 @fsm_deltimer(i32* %41)
  %43 = load %struct.channel*, %struct.channel** %8, align 8
  %44 = call i64 @ctcm_checkalloc_buffer(%struct.channel* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %192

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CTC_STATE_SETUPWAIT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = load %struct.channel*, %struct.channel** %8, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CTCM_PROTO_OS390, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %99

57:                                               ; preds = %51
  %58 = load %struct.channel*, %struct.channel** %8, align 8
  %59 = getelementptr inbounds %struct.channel, %struct.channel* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @CHANNEL_DIRECTION(i32 %60)
  %62 = load i64, i64* @CTCM_READ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load i32, i32* @CTCM_INITIAL_BLOCKLEN, align 4
  %66 = load %struct.channel*, %struct.channel** %8, align 8
  %67 = getelementptr inbounds %struct.channel, %struct.channel* %66, i32 0, i32 6
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32 %65, i32* %71, align 4
  %72 = load %struct.channel*, %struct.channel** %8, align 8
  %73 = getelementptr inbounds %struct.channel, %struct.channel* %72, i32 0, i32 3
  %74 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %75 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %76 = load %struct.channel*, %struct.channel** %8, align 8
  %77 = call i32 @fsm_addtimer(i32* %73, i32 %74, i32 %75, %struct.channel* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @chx_rxidle(i32* %78, i32 %79, i8* %80)
  br label %98

82:                                               ; preds = %57
  %83 = load %struct.channel*, %struct.channel** %8, align 8
  %84 = getelementptr inbounds %struct.channel, %struct.channel* %83, i32 0, i32 1
  %85 = load %struct.net_device*, %struct.net_device** %84, align 8
  store %struct.net_device* %85, %struct.net_device** %10, align 8
  %86 = load %struct.net_device*, %struct.net_device** %10, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load %struct.ctcm_priv*, %struct.ctcm_priv** %87, align 8
  store %struct.ctcm_priv* %88, %struct.ctcm_priv** %11, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @CTC_STATE_TXIDLE, align 4
  %91 = call i32 @fsm_newstate(i32* %89, i32 %90)
  %92 = load %struct.ctcm_priv*, %struct.ctcm_priv** %11, align 8
  %93 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DEV_EVENT_TXUP, align 4
  %96 = load %struct.net_device*, %struct.net_device** %10, align 8
  %97 = call i32 @fsm_event(i32 %94, i32 %95, %struct.net_device* %96)
  br label %98

98:                                               ; preds = %82, %64
  br label %192

99:                                               ; preds = %51, %47
  %100 = load %struct.channel*, %struct.channel** %8, align 8
  %101 = getelementptr inbounds %struct.channel, %struct.channel* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @CHANNEL_DIRECTION(i32 %102)
  %104 = load i64, i64* @CTCM_WRITE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load %struct.channel*, %struct.channel** %8, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CTCM_PROTO_S390, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106, %99
  %113 = load %struct.channel*, %struct.channel** %8, align 8
  %114 = getelementptr inbounds %struct.channel, %struct.channel* %113, i32 0, i32 3
  %115 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %116 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %117 = load %struct.channel*, %struct.channel** %8, align 8
  %118 = call i32 @fsm_addtimer(i32* %114, i32 %115, i32 %116, %struct.channel* %117)
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32, i32* @CTCM_INITIAL_BLOCKLEN, align 4
  %121 = load %struct.channel*, %struct.channel** %8, align 8
  %122 = getelementptr inbounds %struct.channel, %struct.channel* %121, i32 0, i32 6
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  store i32 %120, i32* %126, align 4
  %127 = load %struct.channel*, %struct.channel** %8, align 8
  %128 = getelementptr inbounds %struct.channel, %struct.channel* %127, i32 0, i32 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 2, i32* %131, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.channel*, %struct.channel** %8, align 8
  %134 = getelementptr inbounds %struct.channel, %struct.channel* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @CHANNEL_DIRECTION(i32 %135)
  %137 = load i64, i64* @CTCM_READ, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %119
  %140 = load i32, i32* @CTC_STATE_RXINIT, align 4
  br label %143

141:                                              ; preds = %119
  %142 = load i32, i32* @CTC_STATE_TXINIT, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = call i32 @fsm_newstate(i32* %132, i32 %144)
  %146 = load %struct.channel*, %struct.channel** %8, align 8
  %147 = getelementptr inbounds %struct.channel, %struct.channel* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.channel*, %struct.channel** %8, align 8
  %150 = getelementptr inbounds %struct.channel, %struct.channel* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 0
  %153 = call i32 @ccw_device_start(i32 %148, %struct.TYPE_4__* %152, i32 0, i32 255, i32 0)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %143
  %157 = load %struct.channel*, %struct.channel** %8, align 8
  %158 = getelementptr inbounds %struct.channel, %struct.channel* %157, i32 0, i32 3
  %159 = call i32 @fsm_deltimer(i32* %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* @CTC_STATE_SETUPWAIT, align 4
  %162 = call i32 @fsm_newstate(i32* %160, i32 %161)
  %163 = load %struct.channel*, %struct.channel** %8, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @ctcm_ccw_check_rc(%struct.channel* %163, i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %156, %143
  %167 = load %struct.channel*, %struct.channel** %8, align 8
  %168 = getelementptr inbounds %struct.channel, %struct.channel* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @CHANNEL_DIRECTION(i32 %169)
  %171 = load i64, i64* @CTCM_READ, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %166
  %174 = load %struct.channel*, %struct.channel** %8, align 8
  %175 = getelementptr inbounds %struct.channel, %struct.channel* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CTCM_PROTO_S390, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %173
  %180 = load %struct.channel*, %struct.channel** %8, align 8
  %181 = getelementptr inbounds %struct.channel, %struct.channel* %180, i32 0, i32 1
  %182 = load %struct.net_device*, %struct.net_device** %181, align 8
  store %struct.net_device* %182, %struct.net_device** %12, align 8
  %183 = load %struct.net_device*, %struct.net_device** %12, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 0
  %185 = load %struct.ctcm_priv*, %struct.ctcm_priv** %184, align 8
  store %struct.ctcm_priv* %185, %struct.ctcm_priv** %13, align 8
  %186 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  %187 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @DEV_EVENT_RXUP, align 4
  %190 = load %struct.net_device*, %struct.net_device** %12, align 8
  %191 = call i32 @fsm_event(i32 %188, i32 %189, %struct.net_device* %190)
  br label %192

192:                                              ; preds = %46, %98, %179, %173, %166
  ret void
}

declare dso_local i32 @fsm_getstate(i32*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i64 @ctcm_checkalloc_buffer(%struct.channel*) #1

declare dso_local i64 @CHANNEL_DIRECTION(i32) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32 @chx_rxidle(i32*, i32, i8*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @ccw_device_start(i32, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
