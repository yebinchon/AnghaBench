; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_register_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_register_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i32, i32* }
%struct.most_interface = type { i32, %struct.TYPE_9__, %struct.most_channel*, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.most_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.most_channel**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.most_interface*, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i8* }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Bad interface or channel overflow\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mdev_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to alloc mdev ID\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@interface_attr_groups = common dso_local global i32 0, align 4
@release_interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"registering iface->dev failed\0A\00", align 1
@STRING_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@channel_attr_groups = common dso_local global i32 0, align 4
@release_channel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"registering c->dev failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"registered new device mdev%d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_register_interface(%struct.most_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.most_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.most_channel*, align 8
  %7 = alloca i8*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %3, align 8
  %8 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %9 = icmp ne %struct.most_interface* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %12 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %17 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %22 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %27 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAX_CHANNELS, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %20, %15, %10, %1
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %300

35:                                               ; preds = %25
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @ida_simple_get(i32* @mdev_id, i32 0, i32 0, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %300

43:                                               ; preds = %35
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 176, i32 %44)
  %46 = bitcast i8* %45 to %struct.most_channel*
  %47 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %48 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %47, i32 0, i32 2
  store %struct.most_channel* %46, %struct.most_channel** %48, align 8
  %49 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %50 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %49, i32 0, i32 2
  %51 = load %struct.most_channel*, %struct.most_channel** %50, align 8
  %52 = icmp ne %struct.most_channel* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ida_simple_remove(i32* @mdev_id, i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %300

58:                                               ; preds = %43
  %59 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %60 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %59, i32 0, i32 2
  %61 = load %struct.most_channel*, %struct.most_channel** %60, align 8
  %62 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %61, i32 0, i32 7
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %66 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %65, i32 0, i32 2
  %67 = load %struct.most_channel*, %struct.most_channel** %66, align 8
  %68 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %70 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %69, i32 0, i32 2
  %71 = load %struct.most_channel*, %struct.most_channel** %70, align 8
  %72 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %71, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %75 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strscpy(i32 %73, i32 %76, i32 4)
  %78 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %79 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %78, i32 0, i32 2
  %80 = load %struct.most_channel*, %struct.most_channel** %79, align 8
  %81 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %80, i32 0, i32 20
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %84 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %87 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mc, i32 0, i32 1), i32** %88, align 8
  %89 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %90 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mc, i32 0, i32 0), %struct.TYPE_9__** %91, align 8
  %92 = load i32, i32* @interface_attr_groups, align 4
  %93 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %94 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @release_interface, align 4
  %97 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %98 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %101 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %100, i32 0, i32 1
  %102 = call i64 @device_register(%struct.TYPE_9__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %58
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %107 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %106, i32 0, i32 2
  %108 = load %struct.most_channel*, %struct.most_channel** %107, align 8
  %109 = call i32 @kfree(%struct.most_channel* %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @ida_simple_remove(i32* @mdev_id, i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %300

114:                                              ; preds = %58
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %252, %114
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %118 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %255

121:                                              ; preds = %115
  %122 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %123 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %122, i32 0, i32 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %7, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kzalloc(i32 176, i32 %130)
  %132 = bitcast i8* %131 to %struct.most_channel*
  store %struct.most_channel* %132, %struct.most_channel** %6, align 8
  %133 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %134 = icmp ne %struct.most_channel* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %121
  br label %268

136:                                              ; preds = %121
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %141 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %140, i32 0, i32 20
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @STRING_SIZE, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %153

146:                                              ; preds = %136
  %147 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %148 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %147, i32 0, i32 20
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @STRING_SIZE, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %149, i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %155 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %154, i32 0, i32 20
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %158 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 8
  %160 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %161 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %160, i32 0, i32 1
  %162 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %163 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %164, align 8
  %165 = load i32, i32* @channel_attr_groups, align 4
  %166 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %167 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @release_channel, align 4
  %170 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %171 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %174 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %175 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %174, i32 0, i32 2
  %176 = load %struct.most_channel*, %struct.most_channel** %175, align 8
  %177 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %176, i32 0, i32 6
  %178 = load %struct.most_channel**, %struct.most_channel*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %178, i64 %180
  store %struct.most_channel* %173, %struct.most_channel** %181, align 8
  %182 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %183 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %182, i32 0, i32 19
  store i64 0, i64* %183, align 8
  %184 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %185 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %186 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %185, i32 0, i32 18
  store %struct.most_interface* %184, %struct.most_interface** %186, align 8
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %189 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %191 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %190, i32 0, i32 2
  store i32 0, i32* %191, align 8
  %192 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %193 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %192, i32 0, i32 3
  store i32 0, i32* %193, align 4
  %194 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %195 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %194, i32 0, i32 4
  store i32 0, i32* %195, align 8
  %196 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %197 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %196, i32 0, i32 17
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  store i64 0, i64* %198, align 8
  %199 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %200 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %199, i32 0, i32 17
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %203 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %202, i32 0, i32 17
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  store i64 0, i64* %204, align 8
  %205 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %206 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %205, i32 0, i32 17
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  %208 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %209 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %208, i32 0, i32 17
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %212 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %211, i32 0, i32 17
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %215 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %214, i32 0, i32 16
  %216 = call i32 @spin_lock_init(i32* %215)
  %217 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %218 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %217, i32 0, i32 15
  %219 = call i32 @INIT_LIST_HEAD(i32* %218)
  %220 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %221 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %220, i32 0, i32 14
  %222 = call i32 @INIT_LIST_HEAD(i32* %221)
  %223 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %224 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %223, i32 0, i32 13
  %225 = call i32 @INIT_LIST_HEAD(i32* %224)
  %226 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %227 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %226, i32 0, i32 12
  %228 = call i32 @init_completion(i32* %227)
  %229 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %230 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %229, i32 0, i32 11
  %231 = call i32 @atomic_set(i32* %230, i32 0)
  %232 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %233 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %232, i32 0, i32 10
  %234 = call i32 @mutex_init(i32* %233)
  %235 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %236 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %235, i32 0, i32 9
  %237 = call i32 @mutex_init(i32* %236)
  %238 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %239 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %238, i32 0, i32 8
  %240 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %241 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %240, i32 0, i32 2
  %242 = load %struct.most_channel*, %struct.most_channel** %241, align 8
  %243 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %242, i32 0, i32 7
  %244 = call i32 @list_add_tail(i32* %239, i32* %243)
  %245 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %246 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %245, i32 0, i32 5
  %247 = call i64 @device_register(%struct.TYPE_9__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %153
  %250 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %265

251:                                              ; preds = %153
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %4, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %115

255:                                              ; preds = %115
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %258 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %256, i32 %259)
  %261 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %262 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @most_interface_register_notify(i32 %263)
  store i32 0, i32* %2, align 4
  br label %300

265:                                              ; preds = %249
  %266 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %267 = call i32 @kfree(%struct.most_channel* %266)
  br label %268

268:                                              ; preds = %265, %135
  br label %269

269:                                              ; preds = %272, %268
  %270 = load i32, i32* %4, align 4
  %271 = icmp ugt i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %269
  %273 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %274 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %273, i32 0, i32 2
  %275 = load %struct.most_channel*, %struct.most_channel** %274, align 8
  %276 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %275, i32 0, i32 6
  %277 = load %struct.most_channel**, %struct.most_channel*** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = add i32 %278, -1
  store i32 %279, i32* %4, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %277, i64 %280
  %282 = load %struct.most_channel*, %struct.most_channel** %281, align 8
  store %struct.most_channel* %282, %struct.most_channel** %6, align 8
  %283 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %284 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %283, i32 0, i32 5
  %285 = call i32 @device_unregister(%struct.TYPE_9__* %284)
  %286 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %287 = call i32 @kfree(%struct.most_channel* %286)
  br label %269

288:                                              ; preds = %269
  %289 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %290 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %289, i32 0, i32 2
  %291 = load %struct.most_channel*, %struct.most_channel** %290, align 8
  %292 = call i32 @kfree(%struct.most_channel* %291)
  %293 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %294 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %293, i32 0, i32 1
  %295 = call i32 @device_unregister(%struct.TYPE_9__* %294)
  %296 = load i32, i32* %5, align 4
  %297 = call i32 @ida_simple_remove(i32* @mdev_id, i32 %296)
  %298 = load i32, i32* @ENOMEM, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %288, %255, %104, %53, %40, %31
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i64 @device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.most_channel*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @most_interface_register_notify(i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
