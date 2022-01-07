; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_mac.c_vnt_mac_set_keyentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_mac.c_vnt_mac_set_keyentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vnt_mac_set_key = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MISCFIFO_KEYETRY0 = common dso_local global i32 0, align 4
@MISCFIFO_KEYENTRYSIZE = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"offset %d key ctl %d set key %24ph\0A\00", align 1
@MESSAGE_TYPE_SETKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_mac_set_keyentry(%struct.vnt_private* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.vnt_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vnt_mac_set_key, align 8
  %14 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* @MISCFIFO_KEYETRY0, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MISCFIFO_KEYENTRYSIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %14, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.vnt_mac_set_key, %struct.vnt_mac_set_key* %13, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds %struct.vnt_mac_set_key, %struct.vnt_mac_set_key* %13, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @ether_addr_copy(i32 %29, i32* %30)
  %32 = getelementptr inbounds %struct.vnt_mac_set_key, %struct.vnt_mac_set_key* %13, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vnt_mac_set_key, %struct.vnt_mac_set_key* %13, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @swap(i32 %36, i32 %41)
  %43 = getelementptr inbounds %struct.vnt_mac_set_key, %struct.vnt_mac_set_key* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = bitcast %struct.vnt_mac_set_key* %13 to i32*
  %55 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32* %54)
  %56 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %57 = load i32, i32* @MESSAGE_TYPE_SETKEY, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = bitcast %struct.vnt_mac_set_key* %13 to i32*
  %61 = call i32 @vnt_control_out(%struct.vnt_private* %56, i32 %57, i32 %58, i32 %59, i32 24, i32* %60)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
