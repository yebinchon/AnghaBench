; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.qeth_set_access_ctrl }
%struct.qeth_set_access_ctrl = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"setaccb\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rc=%d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ERR:SET_ACCESS_CTRL(%#x) on device %x: %#x\0A\00", align 1
@ISOLATION_MODE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"QDIO data connection isolation is deactivated\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"QDIO data connection isolation is activated\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"QDIO data connection isolation on device %x already deactivated\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"QDIO data connection isolation on device %x already activated\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Adapter does not support QDIO data connection isolation\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Adapter is dedicated. QDIO data connection isolation not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"TSO does not permit QDIO data connection isolation\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"The adjacent switch port does not support reflective relay mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"The reflective relay mode cannot be enabled at the adjacent switch port\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"Turning off reflective relay mode at the adjacent switch failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_setadpparms_set_access_ctrl_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_set_access_ctrl_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_set_access_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %8, align 8
  %13 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %14 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %18, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %21 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %225

28:                                               ; preds = %3
  %29 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %30 = call i32 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd* %29)
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store %struct.qeth_set_access_ctrl* %35, %struct.qeth_set_access_ctrl** %9, align 8
  %36 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %37 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %36, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %64

51:                                               ; preds = %28
  %52 = load %struct.qeth_set_access_ctrl*, %struct.qeth_set_access_ctrl** %9, align 8
  %53 = getelementptr inbounds %struct.qeth_set_access_ctrl, %struct.qeth_set_access_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %56 = call i32 @CARD_DEVID(%struct.qeth_card* %55)
  %57 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %58 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %51, %28
  %65 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %66 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %201 [
    i32 128, label %71
    i32 134, label %91
    i32 135, label %106
    i32 132, label %121
    i32 133, label %127
    i32 136, label %144
    i32 129, label %161
    i32 130, label %178
    i32 131, label %195
  ]

71:                                               ; preds = %64
  %72 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ISOLATION_MODE_NONE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %90

84:                                               ; preds = %71
  %85 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = call i32 @dev_info(i32* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %78
  br label %213

91:                                               ; preds = %64
  %92 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %93 = call i32 @CARD_DEVID(%struct.qeth_card* %92)
  %94 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %99 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %97, %91
  br label %213

106:                                              ; preds = %64
  %107 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %108 = call i32 @CARD_DEVID(%struct.qeth_card* %107)
  %109 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %118 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %106
  br label %213

121:                                              ; preds = %64
  %122 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %123 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %213

127:                                              ; preds = %64
  %128 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %141 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %135, %127
  br label %213

144:                                              ; preds = %64
  %145 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %146 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %154 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %158 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %144
  br label %213

161:                                              ; preds = %64
  %162 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %163 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %161
  %170 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %171 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %175 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %169, %161
  br label %213

178:                                              ; preds = %64
  %179 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %180 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %179, i32 0, i32 1
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = call i32 @dev_err(i32* %182, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %178
  %187 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %188 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %192 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  store i32 %190, i32* %193, align 4
  br label %194

194:                                              ; preds = %186, %178
  br label %213

195:                                              ; preds = %64
  %196 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %197 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %196, i32 0, i32 1
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = call i32 @dev_warn(i32* %199, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  br label %213

201:                                              ; preds = %64
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %206 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %210 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  br label %212

212:                                              ; preds = %204, %201
  br label %213

213:                                              ; preds = %212, %195, %194, %177, %160, %143, %121, %120, %105, %90
  %214 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %215 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32, i32* @EIO, align 4
  %221 = sub nsw i32 0, %220
  br label %223

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %219
  %224 = phi i32 [ %221, %219 ], [ 0, %222 ]
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %25
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
