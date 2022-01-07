; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.s3fwrn5_i2c_phy = type { i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"s3fwrn5,en-gpios\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"s3fwrn5,fw-gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s3fwrn5_i2c_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_i2c_parse_dt(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.s3fwrn5_i2c_phy* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.s3fwrn5_i2c_phy* %7, %struct.s3fwrn5_i2c_phy** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i8* @of_get_named_gpio(%struct.device_node* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %20 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %4, align 8
  %21 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %4, align 8
  %23 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @gpio_is_valid(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %17
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i8* @of_get_named_gpio(%struct.device_node* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %33 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %4, align 8
  %34 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %4, align 8
  %36 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @gpio_is_valid(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %27, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.s3fwrn5_i2c_phy* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
