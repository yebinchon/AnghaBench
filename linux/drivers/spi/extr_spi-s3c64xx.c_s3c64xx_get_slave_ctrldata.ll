; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_get_slave_ctrldata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_get_slave_ctrldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c64xx_spi_csinfo = type { i32 }
%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"controller-data\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"child node 'controller-data' not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"samsung,spi-feedback-delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c64xx_spi_csinfo* (%struct.spi_device*)* @s3c64xx_get_slave_ctrldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c64xx_spi_csinfo* @s3c64xx_get_slave_ctrldata(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.s3c64xx_spi_csinfo*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.s3c64xx_spi_csinfo*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_2__* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.s3c64xx_spi_csinfo* @ERR_PTR(i32 %19)
  store %struct.s3c64xx_spi_csinfo* %20, %struct.s3c64xx_spi_csinfo** %2, align 8
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.s3c64xx_spi_csinfo* @ERR_PTR(i32 %31)
  store %struct.s3c64xx_spi_csinfo* %32, %struct.s3c64xx_spi_csinfo** %2, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.s3c64xx_spi_csinfo* @kzalloc(i32 4, i32 %34)
  store %struct.s3c64xx_spi_csinfo* %35, %struct.s3c64xx_spi_csinfo** %4, align 8
  %36 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %37 = icmp ne %struct.s3c64xx_spi_csinfo* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.s3c64xx_spi_csinfo* @ERR_PTR(i32 %42)
  store %struct.s3c64xx_spi_csinfo* %43, %struct.s3c64xx_spi_csinfo** %2, align 8
  br label %53

44:                                               ; preds = %33
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = call i32 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %49 = getelementptr inbounds %struct.s3c64xx_spi_csinfo, %struct.s3c64xx_spi_csinfo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i32 @of_node_put(%struct.device_node* %50)
  %52 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  store %struct.s3c64xx_spi_csinfo* %52, %struct.s3c64xx_spi_csinfo** %2, align 8
  br label %53

53:                                               ; preds = %44, %38, %26, %14
  %54 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %2, align 8
  ret %struct.s3c64xx_spi_csinfo* %54
}

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.s3c64xx_spi_csinfo* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local %struct.s3c64xx_spi_csinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
