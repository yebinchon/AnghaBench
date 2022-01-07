; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Reconfiguring device ...\0A\00", align 1
@XenbusStateReconfiguring = common dso_local global i64 0, align 8
@XBT_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"num_devs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error reading number of devices\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"state-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"String overflow while reading configuration\00", align 1
@XenbusStateUnknown = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Attaching dev-%d ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dev-%d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%x:%x:%x.%x\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Error reading device configuration\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Error parsing pci device configuration\00", align 1
@xen_pcibk_publish_pci_root = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Error while publish PCI rootbuses for frontend\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Error switching substate of dev-%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Detaching dev-%d ...\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vdev-%d\00", align 1
@XenbusStateReconfigured = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"Error switching to reconfigured state!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*)* @xen_pcibk_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_reconfigure(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca %struct.xen_pcibk_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %15 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %20 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %23 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @xenbus_read_driver_state(i32 %26)
  %28 = load i64, i64* @XenbusStateReconfiguring, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %264

31:                                               ; preds = %1
  %32 = load i32, i32* @XBT_NIL, align 4
  %33 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %34 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i32, i8*, i8*, i32*, ...) @xenbus_scanf(i32 %32, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %49 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %50, i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %264

53:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %246, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %249

58:                                               ; preds = %54
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @snprintf(i8* %59, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %63, 63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  %71 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %72 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %73, i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %264

76:                                               ; preds = %58
  %77 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %78 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %83 = load i32, i32* @XenbusStateUnknown, align 4
  %84 = call i32 @xenbus_read_unsigned(i32 %81, i8* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %244 [
    i32 128, label %86
    i32 129, label %181
  ]

86:                                               ; preds = %76
  %87 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %88 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @snprintf(i8* %93, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp uge i64 %97, 63
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %86
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  %105 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %106 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %107, i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %264

110:                                              ; preds = %86
  %111 = load i32, i32* @XBT_NIL, align 4
  %112 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %113 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %118 = call i32 (i32, i32, i8*, i8*, i32*, ...) @xenbus_scanf(i32 %111, i32 %116, i8* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %5, i32* %6, i32* %7, i32* %8)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %123 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %124, i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %264

127:                                              ; preds = %110
  %128 = load i32, i32* %3, align 4
  %129 = icmp ne i32 %128, 4
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  %133 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %134 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %135, i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %264

138:                                              ; preds = %127
  %139 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %264

149:                                              ; preds = %138
  %150 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %151 = load i32, i32* @xen_pcibk_publish_pci_root, align 4
  %152 = call i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %150, i32 %151)
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %157 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %158, i32 %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %264

161:                                              ; preds = %149
  %162 = load i32, i32* @XBT_NIL, align 4
  %163 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %164 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %169 = load i32, i32* @XenbusStateInitialised, align 4
  %170 = call i32 @xenbus_printf(i32 %162, i32 %167, i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %3, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %161
  %174 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %175 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %174, i32 0, i32 1
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %176, i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  br label %264

180:                                              ; preds = %161
  br label %245

181:                                              ; preds = %76
  %182 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %183 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %182, i32 0, i32 1
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %186)
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @snprintf(i8* %188, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp uge i64 %192, 63
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %181
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  %200 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %201 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %200, i32 0, i32 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %202, i32 %203, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %264

205:                                              ; preds = %181
  %206 = load i32, i32* @XBT_NIL, align 4
  %207 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %208 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %207, i32 0, i32 1
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %213 = call i32 (i32, i32, i8*, i8*, i32*, ...) @xenbus_scanf(i32 %206, i32 %211, i8* %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %5, i32* %6, i32* %7, i32* %8)
  store i32 %213, i32* %3, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %205
  %217 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %218 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = load i32, i32* %3, align 4
  %221 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %219, i32 %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %264

222:                                              ; preds = %205
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 4
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  %228 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %229 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = load i32, i32* %3, align 4
  %232 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %230, i32 %231, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %264

233:                                              ; preds = %222
  %234 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @xen_pcibk_remove_device(%struct.xen_pcibk_device* %234, i32 %235, i32 %236, i32 %237, i32 %238)
  store i32 %239, i32* %3, align 4
  %240 = load i32, i32* %3, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %264

243:                                              ; preds = %233
  br label %245

244:                                              ; preds = %76
  br label %245

245:                                              ; preds = %244, %243, %180
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %54

249:                                              ; preds = %54
  %250 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %251 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %250, i32 0, i32 1
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = load i32, i32* @XenbusStateReconfigured, align 4
  %254 = call i32 @xenbus_switch_state(%struct.TYPE_3__* %252, i32 %253)
  store i32 %254, i32* %3, align 4
  %255 = load i32, i32* %3, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %249
  %258 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %259 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %258, i32 0, i32 1
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = load i32, i32* %3, align 4
  %262 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %260, i32 %261, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %264

263:                                              ; preds = %249
  br label %264

264:                                              ; preds = %263, %257, %242, %225, %216, %197, %173, %155, %148, %130, %121, %102, %68, %47, %30
  %265 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %266 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %265, i32 0, i32 0
  %267 = call i32 @mutex_unlock(i32* %266)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*, ...) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_3__*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @xen_pcibk_export_device(%struct.xen_pcibk_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device*, i32) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xen_pcibk_remove_device(%struct.xen_pcibk_device*, i32, i32, i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
