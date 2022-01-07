; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_setup_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_setup_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@XenbusStateInitWait = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"getting be setup\0A\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"num_devs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error reading number of devices\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dev-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"String overflow while reading configuration\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%x:%x:%x.%x\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Error reading device configuration\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Error parsing pci device configuration\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"state-%d\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Error switching substate of dev-%d\0A\00", align 1
@xen_pcibk_publish_pci_root = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"Error while publish PCI root buses for frontend\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Error switching to initialised state!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*)* @xen_pcibk_setup_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_setup_backend(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca %struct.xen_pcibk_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %2, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %14 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %17 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @xenbus_read_driver_state(i32 %20)
  %22 = load i64, i64* @XenbusStateInitWait, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %182

25:                                               ; preds = %1
  %26 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %27 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @XBT_NIL, align 4
  %32 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %33 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, i8*, i8*, i32*, ...) @xenbus_scanf(i32 %31, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %48 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %49, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %182

52:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %152, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %155

57:                                               ; preds = %53
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @snprintf(i8* %58, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %62, 63
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %71 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %72, i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %182

75:                                               ; preds = %57
  %76 = load i32, i32* @XBT_NIL, align 4
  %77 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %78 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %83 = call i32 (i32, i32, i8*, i8*, i32*, ...) @xenbus_scanf(i32 %76, i32 %81, i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %3, i32* %4, i32* %5, i32* %6)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %88 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %89, i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %182

92:                                               ; preds = %75
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 4
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  %98 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %99 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %100, i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %182

103:                                              ; preds = %92
  %104 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %182

114:                                              ; preds = %103
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @snprintf(i8* %115, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp uge i64 %119, 63
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  %127 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %128 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %129, i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %182

132:                                              ; preds = %114
  %133 = load i32, i32* @XBT_NIL, align 4
  %134 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %135 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %140 = load i32, i32* @XenbusStateInitialised, align 4
  %141 = call i32 @xenbus_printf(i32 %133, i32 %138, i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %146 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %147, i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %149)
  br label %182

151:                                              ; preds = %132
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %53

155:                                              ; preds = %53
  %156 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %157 = load i32, i32* @xen_pcibk_publish_pci_root, align 4
  %158 = call i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %156, i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %163 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %164, i32 %165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %182

167:                                              ; preds = %155
  %168 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %169 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i32, i32* @XenbusStateInitialised, align 4
  %172 = call i32 @xenbus_switch_state(%struct.TYPE_3__* %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %177 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %176, i32 0, i32 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %178, i32 %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %181

181:                                              ; preds = %175, %167
  br label %182

182:                                              ; preds = %181, %161, %144, %124, %113, %95, %86, %67, %46, %24
  %183 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %184 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %190 = call i32 @xen_pcibk_attach(%struct.xen_pcibk_device* %189)
  br label %191

191:                                              ; preds = %188, %182
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*, ...) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_3__*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xen_pcibk_export_device(%struct.xen_pcibk_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device*, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xen_pcibk_attach(%struct.xen_pcibk_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
