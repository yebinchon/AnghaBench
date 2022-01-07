; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_prepare_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_prepare_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i64, i32, i64* }
%struct.cros_ec_command = type { i32, i64*, i32, i32 }
%struct.ec_host_request = type { i32, i64, i64, i32, i32, i64 }

@EC_HOST_REQUEST_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @prepare_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_packet(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca %struct.cros_ec_command*, align 8
  %5 = alloca %struct.ec_host_request*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EC_HOST_REQUEST_VERSION, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %17 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 40
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %29 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %6, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = bitcast i64* %31 to %struct.ec_host_request*
  store %struct.ec_host_request* %32, %struct.ec_host_request** %5, align 8
  %33 = load i64, i64* @EC_HOST_REQUEST_VERSION, align 8
  %34 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %35 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %34, i32 0, i32 5
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %37 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %39 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %42 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %44 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %47 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %49 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %51 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %54 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %67, %2
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 40
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i64*, i64** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 40
  %73 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %74 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %77 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i64* %72, i64* %75, i32 %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %96, %70
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %83 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %88 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %80

99:                                               ; preds = %80
  %100 = load i64, i64* %8, align 8
  %101 = sub nsw i64 0, %100
  %102 = load %struct.ec_host_request*, %struct.ec_host_request** %5, align 8
  %103 = getelementptr inbounds %struct.ec_host_request, %struct.ec_host_request* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %105 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add i64 40, %107
  %109 = trunc i64 %108 to i32
  ret i32 %109
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
