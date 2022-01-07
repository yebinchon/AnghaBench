; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_device = type { i32, i32, i32, i32*, i64, %struct.pcmcia_socket*, i64, i64, i32, i32 }
%struct.pcmcia_socket = type { i32, i32, i64 }
%struct.pcmcia_driver = type { i32, i32 (%struct.pcmcia_device.0*)*, i32 }
%struct.pcmcia_device.0 = type opaque
%struct.TYPE_3__ = type { i64*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"trying to bind to %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CISTPL_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"base %x, regs %x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"pcmcia: could not parse base and rmask0 of CIS\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"binding to %s failed with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s bound: Vpp %d.%d, idx %x, IRQ %d\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"resources: ioport %pR %pR iomem %pR %pR %pR\00", align 1
@PCMCIA_UEVENT_REQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcmcia_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_driver*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.device* @get_device(%struct.device* %9)
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %194

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call %struct.pcmcia_device* @to_pcmcia_dev(%struct.device* %17)
  store %struct.pcmcia_device* %18, %struct.pcmcia_device** %4, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pcmcia_driver* @to_pcmcia_drv(i32 %21)
  store %struct.pcmcia_driver* %22, %struct.pcmcia_driver** %5, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 5
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %24, align 8
  store %struct.pcmcia_socket* %25, %struct.pcmcia_socket** %6, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %28 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %32 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %31, i32 0, i32 1
  %33 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %32, align 8
  %34 = icmp ne i32 (%struct.pcmcia_device.0*)* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %16
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %42 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @try_module_get(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %35, %16
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %186

49:                                               ; preds = %40
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 5
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %51, align 8
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CISTPL_CONFIG, align 4
  %57 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %52, i32 %55, i32 %56, %struct.TYPE_3__* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %63, i32 0, i32 7
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %70 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %78)
  br label %87

80:                                               ; preds = %49
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @dev_info(%struct.device* %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %84 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %83, i32 0, i32 7
  store i64 0, i64* %84, align 8
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %86 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %60
  %88 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %89 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %88, i32 0, i32 1
  %90 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %89, align 8
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %92 = bitcast %struct.pcmcia_device* %91 to %struct.pcmcia_device.0*
  %93 = call i32 %90(%struct.pcmcia_device.0* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %99 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101)
  br label %177

103:                                              ; preds = %87
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %106 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %109 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %110, 10
  %112 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %113 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = srem i32 %114, 10
  %116 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %117 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %120 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %111, i32 %115, i32 %118, i32 %121)
  %123 = load %struct.device*, %struct.device** %3, align 8
  %124 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %125 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %130 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %135 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %140 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %145 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %133, i32 %138, i32 %143, i32 %148)
  %150 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %151 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %150, i32 0, i32 1
  %152 = call i32 @mutex_lock(i32* %151)
  %153 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %154 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %103
  %158 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %159 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %158, i32 0, i32 5
  %160 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %159, align 8
  %161 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %166 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %171 = load i32, i32* @PCMCIA_UEVENT_REQUERY, align 4
  %172 = call i32 @pcmcia_parse_uevents(%struct.pcmcia_socket* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %164, %157, %103
  %174 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %175 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %174, i32 0, i32 1
  %176 = call i32 @mutex_unlock(i32* %175)
  br label %177

177:                                              ; preds = %173, %96
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %182 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @module_put(i32 %183)
  br label %185

185:                                              ; preds = %180, %177
  br label %186

186:                                              ; preds = %185, %46
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.device*, %struct.device** %3, align 8
  %191 = call i32 @put_device(%struct.device* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %13
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.device* @get_device(%struct.device*) #1

declare dso_local %struct.pcmcia_device* @to_pcmcia_dev(%struct.device*) #1

declare dso_local %struct.pcmcia_driver* @to_pcmcia_drv(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcmcia_parse_uevents(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
