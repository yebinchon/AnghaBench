; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_dev_peer_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_dev_peer_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hvc_iucv_private = type { i64, i32, i64 }

@IUCV_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @hvc_iucv_dev_peer_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_dev_peer_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hvc_iucv_private*, align 8
  %8 = alloca [9 x i8], align 1
  %9 = alloca [9 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.hvc_iucv_private* @dev_get_drvdata(%struct.device* %10)
  store %struct.hvc_iucv_private* %11, %struct.hvc_iucv_private** %7, align 8
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 9)
  %14 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 9)
  %16 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %7, align 8
  %17 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %7, align 8
  %20 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IUCV_CONNECTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %26 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %7, align 8
  %27 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i8* %25, i64 %28, i32 8)
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %31 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %7, align 8
  %32 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 8
  %35 = call i32 @memcpy(i8* %30, i64 %34, i32 8)
  br label %36

36:                                               ; preds = %24, %3
  %37 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %7, align 8
  %38 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %41 = call i32 @EBCASC(i8* %40, i32 8)
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  ret i32 %45
}

declare dso_local %struct.hvc_iucv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
