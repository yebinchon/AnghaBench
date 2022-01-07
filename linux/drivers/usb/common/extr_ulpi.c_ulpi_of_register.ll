; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_of_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_of_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node*, %struct.device* }
%struct.device_node = type { i32 }
%struct.device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ulpi*)* @ulpi_of_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_of_register(%struct.ulpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ulpi*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.ulpi* %0, %struct.ulpi** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %7 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %8 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.device_node* @of_get_child_by_name(i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.device_node* @of_get_child_by_name(i64 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %38, %struct.device_node** %4, align 8
  br label %39

39:                                               ; preds = %32, %25, %20
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %59

44:                                               ; preds = %40
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %45, i32* null)
  store %struct.device_node* %46, %struct.device_node** %5, align 8
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %57 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store %struct.device_node* %55, %struct.device_node** %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %51, %43
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.device_node* @of_get_child_by_name(i64, i8*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
