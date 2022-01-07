; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_mac_addr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_mac_addr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uwb_mac_addr, i32 }
%struct.uwb_mac_addr = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"refusing to set multicast MAC address %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uwb_rc_mac_addr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uwb_rc_mac_addr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uwb_dev*, align 8
  %11 = alloca %struct.uwb_rc*, align 8
  %12 = alloca %struct.uwb_mac_addr, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %14)
  store %struct.uwb_dev* %15, %struct.uwb_dev** %10, align 8
  %16 = load %struct.uwb_dev*, %struct.uwb_dev** %10, align 8
  %17 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %16, i32 0, i32 0
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %17, align 8
  store %struct.uwb_rc* %18, %struct.uwb_rc** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %12, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mac_pton(i8* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %60

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @is_multicast_ether_addr(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %34 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %60

40:                                               ; preds = %27
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %42 = call i64 @uwb_rc_mac_addr_set(%struct.uwb_rc* %41, %struct.uwb_mac_addr* %12)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %47 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast %struct.uwb_mac_addr* %48 to i8*
  %50 = bitcast %struct.uwb_mac_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i64, i64* %13, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  br label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %32, %24
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @mac_pton(i8*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i64 @uwb_rc_mac_addr_set(%struct.uwb_rc*, %struct.uwb_mac_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
