; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32, %struct.qcom_smd_edge* }
%struct.qcom_smd_edge = type { i32, i32 }
%struct.qcom_smd_device = type { %struct.rpmsg_device, %struct.qcom_smd_edge* }
%struct.rpmsg_device = type { %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"registering '%s'\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_smd_device_ops = common dso_local global i32 0, align 4
@RPMSG_NAME_SIZE = common dso_local global i32 0, align 4
@RPMSG_ADDR_ANY = common dso_local global i8* null, align 8
@qcom_smd_release_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smd_channel*)* @qcom_smd_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_create_device(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smd_channel*, align 8
  %4 = alloca %struct.qcom_smd_device*, align 8
  %5 = alloca %struct.rpmsg_device*, align 8
  %6 = alloca %struct.qcom_smd_edge*, align 8
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %3, align 8
  %7 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %7, i32 0, i32 1
  %9 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %8, align 8
  store %struct.qcom_smd_edge* %9, %struct.qcom_smd_edge** %6, align 8
  %10 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %11 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %10, i32 0, i32 0
  %12 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qcom_smd_device* @kzalloc(i32 64, i32 %16)
  store %struct.qcom_smd_device* %17, %struct.qcom_smd_device** %4, align 8
  %18 = load %struct.qcom_smd_device*, %struct.qcom_smd_device** %4, align 8
  %19 = icmp ne %struct.qcom_smd_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %25 = load %struct.qcom_smd_device*, %struct.qcom_smd_device** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_smd_device, %struct.qcom_smd_device* %25, i32 0, i32 1
  store %struct.qcom_smd_edge* %24, %struct.qcom_smd_edge** %26, align 8
  %27 = load %struct.qcom_smd_device*, %struct.qcom_smd_device** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_smd_device, %struct.qcom_smd_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %28, i32 0, i32 4
  store i32* @qcom_smd_device_ops, i32** %29, align 8
  %30 = load %struct.qcom_smd_device*, %struct.qcom_smd_device** %4, align 8
  %31 = getelementptr inbounds %struct.qcom_smd_device, %struct.qcom_smd_device* %30, i32 0, i32 0
  store %struct.rpmsg_device* %31, %struct.rpmsg_device** %5, align 8
  %32 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %33 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %37 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RPMSG_NAME_SIZE, align 4
  %40 = call i32 @strncpy(i32 %35, i32 %38, i32 %39)
  %41 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %42 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %43 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %45 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %46 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %48 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %51 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @qcom_smd_match_channel(i32 %49, i32 %52)
  %54 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %55 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %58 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %57, i32 0, i32 0
  %59 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %60 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32* %58, i32** %61, align 8
  %62 = load i32, i32* @qcom_smd_release_device, align 4
  %63 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %64 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.rpmsg_device*, %struct.rpmsg_device** %5, align 8
  %67 = call i32 @rpmsg_register_device(%struct.rpmsg_device* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %23, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.qcom_smd_device* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @qcom_smd_match_channel(i32, i32) #1

declare dso_local i32 @rpmsg_register_device(%struct.rpmsg_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
