; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_transaction = type { i32 }
%struct.xenbus_device = type { i32, i32 }
%struct.xenbus_device_id = type { i32 }
%struct.backend_info = type { i8*, i32, %struct.xenbus_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"allocating backend structure\00", align 1
@XenbusStateInitialising = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"feature-sg\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"writing feature-sg\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"writing feature-gso-tcpv4\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv6\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"writing feature-gso-tcpv6\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"feature-ipv6-csum-offload\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"writing feature-ipv6-csum-offload\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"feature-rx-copy\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"writing feature-rx-copy\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"feature-rx-flip\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"writing feature-rx-flip\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"feature-multicast-control\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"writing feature-multicast-control\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"feature-dynamic-multicast-control\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"writing feature-dynamic-multicast-control\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XBT_NIL = common dso_local global %struct.xenbus_transaction zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"feature-split-event-channels\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@separate_tx_rx_irq = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [44 x i8] c"Error writing feature-split-event-channels\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"multi-queue-max-queues\00", align 1
@xenvif_max_queues = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"Error writing multi-queue-max-queues\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"feature-ctrl-ring\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Error writing feature-ctrl-ring\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"reading script\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @netback_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netback_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.backend_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.backend_info* @kzalloc(i32 24, i32 %12)
  store %struct.backend_info* %13, %struct.backend_info** %11, align 8
  %14 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %15 = icmp ne %struct.backend_info* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %17, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %218

23:                                               ; preds = %2
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %25 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %26 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %25, i32 0, i32 2
  store %struct.xenbus_device* %24, %struct.xenbus_device** %26, align 8
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %28 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %27, i32 0, i32 1
  %29 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %30 = call i32 @dev_set_drvdata(i32* %28, %struct.backend_info* %29)
  %31 = load i32, i32* @XenbusStateInitialising, align 4
  %32 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %33 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %35 = load i32, i32* @XenbusStateInitialising, align 4
  %36 = call i32 @xenbus_switch_state(%struct.xenbus_device* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %213

40:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %136, %40
  %42 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %213

49:                                               ; preds = %41
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %51 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @xenbus_printf(i32 %55, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %205

60:                                               ; preds = %49
  %61 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %62 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xenbus_printf(i32 %66, i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %205

71:                                               ; preds = %60
  %72 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %73 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xenbus_printf(i32 %77, i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %205

82:                                               ; preds = %71
  %83 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %84 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @xenbus_printf(i32 %87, i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %205

92:                                               ; preds = %82
  %93 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %94 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @xenbus_printf(i32 %97, i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %205

102:                                              ; preds = %92
  %103 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %104 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @xenbus_printf(i32 %107, i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %205

112:                                              ; preds = %102
  %113 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %114 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @xenbus_printf(i32 %117, i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %205

122:                                              ; preds = %112
  %123 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %124 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @xenbus_printf(i32 %127, i32 %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %205

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @xenbus_transaction_end(i32 %134, i32 0)
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @EAGAIN, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %41, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %145, i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %213

148:                                              ; preds = %141
  %149 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %150 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @separate_tx_rx_irq, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.xenbus_transaction, %struct.xenbus_transaction* @XBT_NIL, i32 0, i32 0), align 4
  %154 = call i32 @xenbus_printf(i32 %153, i32 %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %152)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %148
  %160 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %161 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @xenvif_max_queues, align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.xenbus_transaction, %struct.xenbus_transaction* @XBT_NIL, i32 0, i32 0), align 4
  %165 = call i32 @xenbus_printf(i32 %164, i32 %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %163)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %159
  %171 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %172 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.xenbus_transaction, %struct.xenbus_transaction* @XBT_NIL, i32 0, i32 0), align 4
  %175 = call i32 @xenbus_printf(i32 %174, i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 1)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %170
  %181 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %182 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.xenbus_transaction, %struct.xenbus_transaction* @XBT_NIL, i32 0, i32 0), align 4
  %185 = call i8* @xenbus_read(i32 %184, i32 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32* null)
  store i8* %185, i8** %10, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = call i64 @IS_ERR(i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @PTR_ERR(i8* %190)
  store i32 %191, i32* %8, align 4
  %192 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %192, i32 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %213

195:                                              ; preds = %180
  %196 = load i8*, i8** %10, align 8
  %197 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %198 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.backend_info*, %struct.backend_info** %11, align 8
  %200 = call i32 @backend_create_xenvif(%struct.backend_info* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %213

204:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %218

205:                                              ; preds = %131, %121, %111, %101, %91, %81, %70, %59
  %206 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @xenbus_transaction_end(i32 %207, i32 1)
  %209 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %209, i32 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %205, %203, %189, %144, %45, %39
  %214 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %215 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %216 = call i32 @netback_remove(%struct.xenbus_device* %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %213, %204, %16
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.backend_info* @kzalloc(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.backend_info*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @xenbus_read(i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @backend_create_xenvif(%struct.backend_info*) #1

declare dso_local i32 @netback_remove(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
