; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_get_vbus_header_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_get_vbus_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.device = type { i32 }
%struct.visor_vbus_headerinfo = type { i32, i32 }

@visor_vbus_channel_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@VISOR_VBUS_CHANNEL_VERSIONID = common dso_local global i32 0, align 4
@VISOR_CHANNEL_SIGNATURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorchannel*, %struct.device*, %struct.visor_vbus_headerinfo*)* @get_vbus_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vbus_header_info(%struct.visorchannel* %0, %struct.device* %1, %struct.visor_vbus_headerinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.visorchannel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.visor_vbus_headerinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.visorchannel* %0, %struct.visorchannel** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.visor_vbus_headerinfo* %2, %struct.visor_vbus_headerinfo** %7, align 8
  %9 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %10 = call i32 @visorchannel_get_header(%struct.visorchannel* %9)
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @VISOR_VBUS_CHANNEL_VERSIONID, align 4
  %13 = load i32, i32* @VISOR_CHANNEL_SIGNATURE, align 4
  %14 = call i32 @visor_check_channel(i32 %10, %struct.device* %11, i32* @visor_vbus_channel_guid, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %21 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %7, align 8
  %22 = call i32 @visorchannel_read(%struct.visorchannel* %20, i32 4, %struct.visor_vbus_headerinfo* %21, i32 8)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %7, align 8
  %29 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 8
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %7, align 8
  %38 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %33, %25, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @visor_check_channel(i32, %struct.device*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @visorchannel_get_header(%struct.visorchannel*) #1

declare dso_local i32 @visorchannel_read(%struct.visorchannel*, i32, %struct.visor_vbus_headerinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
