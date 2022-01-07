; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_doxid7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_doxid7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.channel = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, %struct.xid2* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.xid2 = type { i32 }
%struct.mpc_group = type { i64, i64, i32 }

@CTCM_READ = common dso_local global i32 0, align 4
@CTCM_WRITE = common dso_local global i32 0, align 4
@XID2_7 = common dso_local global i32 0, align 4
@YSIDE = common dso_local global i64 0, align 8
@CH_XID7_PENDING1 = common dso_local global i64 0, align 8
@CH_XID7_PENDING2 = common dso_local global i64 0, align 8
@CCW_CMD_SENSE_CMD = common dso_local global i8* null, align 8
@thdummy = common dso_local global i32 0, align 4
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@CCW_CMD_WRITE_CTL = common dso_local global i8* null, align 8
@thnorm = common dso_local global i32 0, align 4
@CH_XID7_PENDING4 = common dso_local global i64 0, align 8
@CH_XID7_PENDING3 = common dso_local global i64 0, align 8
@MPCG_EVENT_DOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mpc_action_doxid7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_action_doxid7(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca %struct.mpc_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.channel*, align 8
  %13 = alloca %struct.xid2*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %8, align 8
  store %struct.mpc_group* null, %struct.mpc_group** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %20 = icmp ne %struct.ctcm_priv* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %22, i32 0, i32 1
  %24 = load %struct.mpc_group*, %struct.mpc_group** %23, align 8
  store %struct.mpc_group* %24, %struct.mpc_group** %9, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %27 = icmp eq %struct.mpc_group* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %197

29:                                               ; preds = %25
  %30 = load i32, i32* @CTCM_READ, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %193, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @CTCM_WRITE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %196

35:                                               ; preds = %31
  %36 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %36, i32 0, i32 0
  %38 = load %struct.channel**, %struct.channel*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.channel*, %struct.channel** %38, i64 %40
  %42 = load %struct.channel*, %struct.channel** %41, align 8
  store %struct.channel* %42, %struct.channel** %12, align 8
  %43 = load %struct.channel*, %struct.channel** %12, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 4
  %45 = load %struct.xid2*, %struct.xid2** %44, align 8
  store %struct.xid2* %45, %struct.xid2** %13, align 8
  %46 = load %struct.channel*, %struct.channel** %12, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.channel*, %struct.channel** %12, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.channel*, %struct.channel** %12, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @skb_reset_tail_pointer(%struct.TYPE_5__* %55)
  %57 = load %struct.channel*, %struct.channel** %12, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @XID2_7, align 4
  %62 = load %struct.xid2*, %struct.xid2** %13, align 8
  %63 = getelementptr inbounds %struct.xid2, %struct.xid2* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %11, align 4
  %64 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %65 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %125

68:                                               ; preds = %35
  %69 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %70 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @YSIDE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  %75 = load %struct.channel*, %struct.channel** %12, align 8
  %76 = getelementptr inbounds %struct.channel, %struct.channel* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @fsm_getstate(i32 %77)
  %79 = load i64, i64* @CH_XID7_PENDING1, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %74
  %82 = load %struct.channel*, %struct.channel** %12, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* @CH_XID7_PENDING2, align 8
  %86 = call i32 @fsm_newstate(i32 %84, i64 %85)
  %87 = load i8*, i8** @CCW_CMD_SENSE_CMD, align 8
  %88 = load %struct.channel*, %struct.channel** %12, align 8
  %89 = getelementptr inbounds %struct.channel, %struct.channel* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  %93 = load %struct.channel*, %struct.channel** %12, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %97 = call i32 @skb_put_data(%struct.TYPE_5__* %95, i32* @thdummy, i32 %96)
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %81, %74
  br label %124

99:                                               ; preds = %68
  %100 = load %struct.channel*, %struct.channel** %12, align 8
  %101 = getelementptr inbounds %struct.channel, %struct.channel* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @fsm_getstate(i32 %102)
  %104 = load i64, i64* @CH_XID7_PENDING2, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %99
  %107 = load %struct.channel*, %struct.channel** %12, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* @CH_XID7_PENDING2, align 8
  %111 = call i32 @fsm_newstate(i32 %109, i64 %110)
  %112 = load i8*, i8** @CCW_CMD_WRITE_CTL, align 8
  %113 = load %struct.channel*, %struct.channel** %12, align 8
  %114 = getelementptr inbounds %struct.channel, %struct.channel* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i8* %112, i8** %117, align 8
  %118 = load %struct.channel*, %struct.channel** %12, align 8
  %119 = getelementptr inbounds %struct.channel, %struct.channel* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %122 = call i32 @skb_put_data(%struct.TYPE_5__* %120, i32* @thnorm, i32 %121)
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %106, %99
  br label %124

124:                                              ; preds = %123, %98
  br label %182

125:                                              ; preds = %35
  %126 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %127 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @YSIDE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125
  %132 = load %struct.channel*, %struct.channel** %12, align 8
  %133 = getelementptr inbounds %struct.channel, %struct.channel* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @fsm_getstate(i32 %134)
  %136 = load i64, i64* @CH_XID7_PENDING4, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.channel*, %struct.channel** %12, align 8
  %140 = getelementptr inbounds %struct.channel, %struct.channel* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* @CH_XID7_PENDING4, align 8
  %143 = call i32 @fsm_newstate(i32 %141, i64 %142)
  %144 = load %struct.channel*, %struct.channel** %12, align 8
  %145 = getelementptr inbounds %struct.channel, %struct.channel* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %148 = call i32 @skb_put_data(%struct.TYPE_5__* %146, i32* @thnorm, i32 %147)
  %149 = load i8*, i8** @CCW_CMD_WRITE_CTL, align 8
  %150 = load %struct.channel*, %struct.channel** %12, align 8
  %151 = getelementptr inbounds %struct.channel, %struct.channel* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i8* %149, i8** %154, align 8
  store i32 1, i32* %11, align 4
  br label %155

155:                                              ; preds = %138, %131
  br label %181

156:                                              ; preds = %125
  %157 = load %struct.channel*, %struct.channel** %12, align 8
  %158 = getelementptr inbounds %struct.channel, %struct.channel* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @fsm_getstate(i32 %159)
  %161 = load i64, i64* @CH_XID7_PENDING3, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %156
  %164 = load %struct.channel*, %struct.channel** %12, align 8
  %165 = getelementptr inbounds %struct.channel, %struct.channel* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* @CH_XID7_PENDING4, align 8
  %168 = call i32 @fsm_newstate(i32 %166, i64 %167)
  %169 = load i8*, i8** @CCW_CMD_SENSE_CMD, align 8
  %170 = load %struct.channel*, %struct.channel** %12, align 8
  %171 = getelementptr inbounds %struct.channel, %struct.channel* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i8* %169, i8** %174, align 8
  %175 = load %struct.channel*, %struct.channel** %12, align 8
  %176 = getelementptr inbounds %struct.channel, %struct.channel* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %179 = call i32 @skb_put_data(%struct.TYPE_5__* %177, i32* @thdummy, i32 %178)
  store i32 1, i32* %11, align 4
  br label %180

180:                                              ; preds = %163, %156
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %124
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %187 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @MPCG_EVENT_DOIO, align 4
  %190 = load %struct.channel*, %struct.channel** %12, align 8
  %191 = call i32 @fsm_event(i32 %188, i32 %189, %struct.channel* %190)
  br label %192

192:                                              ; preds = %185, %182
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %31

196:                                              ; preds = %31
  br label %197

197:                                              ; preds = %196, %28
  ret void
}

declare dso_local i32 @skb_reset_tail_pointer(%struct.TYPE_5__*) #1

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_newstate(i32, i64) #1

declare dso_local i32 @skb_put_data(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
