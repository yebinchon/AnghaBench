; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.stub_device = type { i32 }
%struct.bus_id_priv = type { i8, i32, %struct.stub_device*, %struct.usb_device*, i64 }
%struct.usb_dev_state = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Enter probe\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STUB_BUSID_REMOV = common dso_local global i8 0, align 1
@STUB_BUSID_OTHER = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s is not in match_busid table... skip!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_CLASS_HUB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%s is a usb hub device... skip!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vhci_hcd\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s is attached on vhci_hcd... skip!\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"usbip-host: register new device (bus %u dev %u)\0A\00", align 1
@STUB_BUSID_ALLOC = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unable to claim port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @stub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stub_probe(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bus_id_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.stub_device* null, %struct.stub_device** %4, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = call i8* @dev_name(i32* %10)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call %struct.stub_device* @stub_device_alloc(%struct.usb_device* %15)
  store %struct.stub_device* %16, %struct.stub_device** %4, align 8
  %17 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %18 = icmp ne %struct.stub_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %157

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.bus_id_priv* @get_busid_priv(i8* %23)
  store %struct.bus_id_priv* %24, %struct.bus_id_priv** %6, align 8
  %25 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %26 = icmp ne %struct.bus_id_priv* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %29 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @STUB_BUSID_REMOV, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %37 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @STUB_BUSID_OTHER, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35, %27, %22
  %44 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %51 = icmp ne %struct.bus_id_priv* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %153

53:                                               ; preds = %43
  br label %150

54:                                               ; preds = %35
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB_CLASS_HUB, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %150

68:                                               ; preds = %54
  %69 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcmp(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %68
  %77 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %150

83:                                               ; preds = %68
  %84 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 0
  %86 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %92, i32 %95)
  %97 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %98 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 0
  %101 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %102 = call i32 @dev_set_drvdata(i32* %100, %struct.stub_device* %101)
  %103 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %104 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %105 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %104, i32 0, i32 2
  store %struct.stub_device* %103, %struct.stub_device** %105, align 8
  %106 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %107 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %108 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %107, i32 0, i32 3
  store %struct.usb_device* %106, %struct.usb_device** %108, align 8
  %109 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %110 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 8
  store i8 %111, i8* %8, align 1
  %112 = load i8, i8* @STUB_BUSID_ALLOC, align 1
  %113 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %114 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %113, i32 0, i32 0
  store i8 %112, i8* %114, align 8
  %115 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %116 = call i32 @put_busid_priv(%struct.bus_id_priv* %115)
  %117 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %124 = bitcast %struct.usb_device* %123 to %struct.usb_dev_state*
  %125 = call i32 @usb_hub_claim_port(i32 %119, i32 %122, %struct.usb_dev_state* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %83
  %129 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %130 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %133

132:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %157

133:                                              ; preds = %128
  %134 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 0
  %136 = call i32 @dev_set_drvdata(i32* %135, %struct.stub_device* null)
  %137 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %138 = call i32 @usb_put_dev(%struct.usb_device* %137)
  %139 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %140 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %139, i32 0, i32 1
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %143 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %142, i32 0, i32 2
  store %struct.stub_device* null, %struct.stub_device** %143, align 8
  %144 = load i8, i8* %8, align 1
  %145 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %146 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %145, i32 0, i32 0
  store i8 %144, i8* %146, align 8
  %147 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %148 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock(i32* %148)
  br label %153

150:                                              ; preds = %76, %61, %53
  %151 = load %struct.bus_id_priv*, %struct.bus_id_priv** %6, align 8
  %152 = call i32 @put_busid_priv(%struct.bus_id_priv* %151)
  br label %153

153:                                              ; preds = %150, %133, %52
  %154 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %155 = call i32 @stub_device_free(%struct.stub_device* %154)
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %132, %19
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.stub_device* @stub_device_alloc(%struct.usb_device*) #1

declare dso_local %struct.bus_id_priv* @get_busid_priv(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.stub_device*) #1

declare dso_local i32 @put_busid_priv(%struct.bus_id_priv*) #1

declare dso_local i32 @usb_hub_claim_port(i32, i32, %struct.usb_dev_state*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @stub_device_free(%struct.stub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
