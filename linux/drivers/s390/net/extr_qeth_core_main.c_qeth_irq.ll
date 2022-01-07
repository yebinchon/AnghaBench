; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_10__, %struct.irb*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.qeth_cmd_buffer = type { i64, i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)* }
%struct.qeth_card = type opaque
%struct.ccwgroup_device = type { i32 }
%struct.qeth_channel = type { %struct.ccw_device*, i32, i32 }
%struct.qeth_card.0 = type { i32, i32, %struct.qeth_channel, %struct.qeth_channel, %struct.qeth_channel }

@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@CH_STATE_STOPPED = common dso_local global i32 0, align 4
@SCSW_FCTL_HALT_FUNC = common dso_local global i32 0, align 4
@CH_STATE_HALTED = common dso_local global i32 0, align 4
@QETH_CLEAR_CHANNEL_PARM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"clrchpar\00", align 1
@QETH_HALT_CHANNEL_PARM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"hltchpar\00", align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"sense data available on channel %x: cstat %#X dstat %#X\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"qeth: irb \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"qeth: sense data \00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @qeth_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_irq(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  %11 = alloca %struct.ccwgroup_device*, align 8
  %12 = alloca %struct.qeth_channel*, align 8
  %13 = alloca %struct.qeth_card.0*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %10, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call i8* @dev_get_drvdata(i32* %15)
  %17 = bitcast i8* %16 to %struct.ccwgroup_device*
  store %struct.ccwgroup_device* %17, %struct.ccwgroup_device** %11, align 8
  %18 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %11, align 8
  %19 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %18, i32 0, i32 0
  %20 = call i8* @dev_get_drvdata(i32* %19)
  %21 = bitcast i8* %20 to %struct.qeth_card.0*
  store %struct.qeth_card.0* %21, %struct.qeth_card.0** %13, align 8
  %22 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %23 = icmp ne %struct.qeth_card.0* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %252

25:                                               ; preds = %3
  %26 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %27 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %26, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %29 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %29, i32 0, i32 0
  %31 = load %struct.ccw_device*, %struct.ccw_device** %30, align 8
  %32 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %33 = icmp eq %struct.ccw_device* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %36 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %35, i32 0, i32 4
  store %struct.qeth_channel* %36, %struct.qeth_channel** %12, align 8
  %37 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %38 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %37, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %57

39:                                               ; preds = %25
  %40 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %41 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %41, i32 0, i32 0
  %43 = load %struct.ccw_device*, %struct.ccw_device** %42, align 8
  %44 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %45 = icmp eq %struct.ccw_device* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %48 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %47, i32 0, i32 3
  store %struct.qeth_channel* %48, %struct.qeth_channel** %12, align 8
  %49 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %50 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %49, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %56

51:                                               ; preds = %39
  %52 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %53 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %52, i32 0, i32 2
  store %struct.qeth_channel* %53, %struct.qeth_channel** %12, align 8
  %54 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %55 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %54, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @qeth_intparm_is_iob(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @__va(i32 %63)
  %65 = inttoptr i64 %64 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %65, %struct.qeth_cmd_buffer** %10, align 8
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %68 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %69 = load %struct.irb*, %struct.irb** %6, align 8
  %70 = call i32 @qeth_check_irb_error(%struct.qeth_card.0* %67, %struct.ccw_device* %68, %struct.irb* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %75 = icmp ne %struct.qeth_cmd_buffer* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @qeth_cancel_cmd(%struct.qeth_cmd_buffer* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %82 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %81, i32 0, i32 2
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %85 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %84, i32 0, i32 1
  %86 = call i32 @wake_up(i32* %85)
  br label %252

87:                                               ; preds = %66
  %88 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %89 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %88, i32 0, i32 2
  %90 = call i32 @atomic_set(i32* %89, i32 0)
  %91 = load %struct.irb*, %struct.irb** %6, align 8
  %92 = getelementptr inbounds %struct.irb, %struct.irb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load i32, i32* @CH_STATE_STOPPED, align 4
  %101 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %102 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %87
  %104 = load %struct.irb*, %struct.irb** %6, align 8
  %105 = getelementptr inbounds %struct.irb, %struct.irb* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SCSW_FCTL_HALT_FUNC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* @CH_STATE_HALTED, align 4
  %114 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %115 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %103
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @QETH_CLEAR_CHANNEL_PARM, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %122 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %121, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @QETH_HALT_CHANNEL_PARM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %129 = call i32 @QETH_CARD_TEXT(%struct.qeth_card.0* %128, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %130

130:                                              ; preds = %127, %123
  %131 = load %struct.irb*, %struct.irb** %6, align 8
  %132 = getelementptr inbounds %struct.irb, %struct.irb* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %8, align 4
  %136 = load %struct.irb*, %struct.irb** %6, align 8
  %137 = getelementptr inbounds %struct.irb, %struct.irb* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %130
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %206

153:                                              ; preds = %150, %145, %130
  %154 = load %struct.irb*, %struct.irb** %6, align 8
  %155 = getelementptr inbounds %struct.irb, %struct.irb* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %153
  %162 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %163 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %162, i32 0, i32 0
  %164 = load %struct.ccw_device*, %struct.ccw_device** %163, align 8
  %165 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %164, i32 0, i32 0
  %166 = call i32 @dev_warn(i32* %165, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %167 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  %168 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %167, i32 0, i32 0
  %169 = load %struct.ccw_device*, %struct.ccw_device** %168, align 8
  %170 = call i32 @CCW_DEVID(%struct.ccw_device* %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* @KERN_WARNING, align 4
  %175 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %176 = load %struct.irb*, %struct.irb** %6, align 8
  %177 = call i32 @print_hex_dump(i32 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %175, i32 16, i32 1, %struct.irb* %176, i32 32, i32 1)
  %178 = load i32, i32* @KERN_WARNING, align 4
  %179 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %180 = load %struct.irb*, %struct.irb** %6, align 8
  %181 = getelementptr inbounds %struct.irb, %struct.irb* %180, i32 0, i32 1
  %182 = load %struct.irb*, %struct.irb** %181, align 8
  %183 = call i32 @print_hex_dump(i32 %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %179, i32 16, i32 1, %struct.irb* %182, i32 32, i32 1)
  br label %184

184:                                              ; preds = %161, %153
  %185 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %186 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %187 = load %struct.irb*, %struct.irb** %6, align 8
  %188 = call i32 @qeth_get_problem(%struct.qeth_card.0* %185, %struct.ccw_device* %186, %struct.irb* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %184
  %192 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %193 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %195 = icmp ne %struct.qeth_cmd_buffer* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @qeth_cancel_cmd(%struct.qeth_cmd_buffer* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %202 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card.0* %201)
  %203 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %204 = call i32 @qeth_schedule_recovery(%struct.qeth_card.0* %203)
  br label %248

205:                                              ; preds = %184
  br label %206

206:                                              ; preds = %205, %150
  %207 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %208 = icmp ne %struct.qeth_cmd_buffer* %207, null
  br i1 %208, label %209, label %247

209:                                              ; preds = %206
  %210 = load %struct.irb*, %struct.irb** %6, align 8
  %211 = getelementptr inbounds %struct.irb, %struct.irb* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %216 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %214, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %209
  %220 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  %223 = call i32 @qeth_cancel_cmd(%struct.qeth_cmd_buffer* %220, i32 %222)
  br label %248

224:                                              ; preds = %209
  %225 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %226 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %225, i32 0, i32 1
  %227 = load i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)** %226, align 8
  %228 = icmp ne i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)* %227, null
  br i1 %228, label %229, label %246

229:                                              ; preds = %224
  %230 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %231 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %230, i32 0, i32 1
  %232 = load i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64)** %231, align 8
  %233 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %234 = bitcast %struct.qeth_card.0* %233 to %struct.qeth_card*
  %235 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %236 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %237 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.irb*, %struct.irb** %6, align 8
  %240 = getelementptr inbounds %struct.irb, %struct.irb* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %238, %243
  %245 = call i32 %232(%struct.qeth_card* %234, %struct.qeth_cmd_buffer* %235, i64 %244)
  br label %246

246:                                              ; preds = %229, %224
  br label %247

247:                                              ; preds = %246, %206
  br label %248

248:                                              ; preds = %247, %219, %200
  %249 = load %struct.qeth_card.0*, %struct.qeth_card.0** %13, align 8
  %250 = getelementptr inbounds %struct.qeth_card.0, %struct.qeth_card.0* %249, i32 0, i32 1
  %251 = call i32 @wake_up(i32* %250)
  br label %252

252:                                              ; preds = %248, %80, %24
  ret void
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card.0*, i32, i8*) #1

declare dso_local i64 @qeth_intparm_is_iob(i64) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @qeth_check_irb_error(%struct.qeth_card.0*, %struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @qeth_cancel_cmd(%struct.qeth_cmd_buffer*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CCW_DEVID(%struct.ccw_device*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.irb*, i32, i32) #1

declare dso_local i32 @qeth_get_problem(%struct.qeth_card.0*, %struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card.0*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
