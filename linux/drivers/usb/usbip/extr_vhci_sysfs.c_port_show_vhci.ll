; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_port_show_vhci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_port_show_vhci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HUB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hs  %04u %03u \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ss  %04u %03u \00", align 1
@VDEV_ST_USED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%03u %08x \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%06u %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"000 00000000 \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"000000 0-0\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, %struct.vhci_device*)* @port_show_vhci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_show_vhci(i8** %0, i32 %1, i32 %2, %struct.vhci_device* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhci_device*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vhci_device* %3, %struct.vhci_device** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @HUB_SPEED_HIGH, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %17 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %21, align 8
  br label %38

25:                                               ; preds = %4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %30 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %25, %12
  %39 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %40 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @VDEV_ST_USED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %50 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %53 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %56, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %63 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %67 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i8* @dev_name(i32* %69)
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %65, i8* %70)
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %72, align 8
  br label %91

76:                                               ; preds = %38
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %80, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %87, align 8
  br label %91

91:                                               ; preds = %76, %46
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = sext i32 %94 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %95, align 8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
