; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_host_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_host_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EC_MKBP_EVENT_HOST_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid host event size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_get_host_event(%struct.cros_ec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  %5 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %6 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %13 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EC_MKBP_EVENT_HOST_EVENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %21 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %32 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @get_unaligned_le32(i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %25, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
