; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb4604 = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@__const.usb4604_connect.connect_cmd = private unnamed_addr constant [3 x i32] [i32 170, i32 85, i32 0], align 4
@USB4604_MODE_HUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"switched to HUB mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb4604*)* @usb4604_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb4604_connect(%struct.usb4604* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb4604*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.usb4604* %0, %struct.usb4604** %3, align 8
  %8 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %9 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([3 x i32]* @__const.usb4604_connect.connect_cmd to i8*), i64 12, i1 false)
  %14 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %15 = call i32 @usb4604_reset(%struct.usb4604* %14, i32 1)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @i2c_master_send(%struct.i2c_client* %16, i32* %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %25 = call i32 @usb4604_reset(%struct.usb4604* %24, i32 0)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @USB4604_MODE_HUB, align 4
  %29 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %30 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb4604_reset(%struct.usb4604*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
