; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_master_attribute_store_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_master_attribute_store_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_master = type { i32 }
%struct.w1_reg_num = type { i64, i32 }
%struct.w1_slave = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Device %02x-%012llx doesn't exists\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @w1_master_attribute_store_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @w1_master_attribute_store_remove(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w1_master*, align 8
  %11 = alloca %struct.w1_reg_num, align 8
  %12 = alloca %struct.w1_slave*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.w1_master* @dev_to_w1_master(%struct.device* %14)
  store %struct.w1_master* %15, %struct.w1_master** %10, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @w1_atoreg_num(%struct.device* %17, i8* %18, i64 %19, %struct.w1_reg_num* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %55

25:                                               ; preds = %4
  %26 = load %struct.w1_master*, %struct.w1_master** %10, align 8
  %27 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.w1_master*, %struct.w1_master** %10, align 8
  %30 = call %struct.w1_slave* @w1_slave_search_device(%struct.w1_master* %29, %struct.w1_reg_num* %11)
  store %struct.w1_slave* %30, %struct.w1_slave** %12, align 8
  %31 = load %struct.w1_slave*, %struct.w1_slave** %12, align 8
  %32 = icmp ne %struct.w1_slave* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.w1_slave*, %struct.w1_slave** %12, align 8
  %35 = call i64 @w1_slave_detach(%struct.w1_slave* %34)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %38, %33
  br label %50

41:                                               ; preds = %25
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = getelementptr inbounds %struct.w1_reg_num, %struct.w1_reg_num* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.w1_reg_num, %struct.w1_reg_num* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_info(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %46)
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %41, %40
  %51 = load %struct.w1_master*, %struct.w1_master** %10, align 8
  %52 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.w1_master* @dev_to_w1_master(%struct.device*) #1

declare dso_local i64 @w1_atoreg_num(%struct.device*, i8*, i64, %struct.w1_reg_num*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.w1_slave* @w1_slave_search_device(%struct.w1_master*, %struct.w1_reg_num*) #1

declare dso_local i64 @w1_slave_detach(%struct.w1_slave*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
