; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromes_laptop_instantiate_i2c_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromes_laptop_instantiate_i2c_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i16, i32 }

@I2C_CLIENT_END = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%d-%02x is probed at %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register device %d-%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"added i2c device %d-%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.i2c_adapter*, %struct.i2c_board_info*, i16)* @chromes_laptop_instantiate_i2c_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @chromes_laptop_instantiate_i2c_device(%struct.i2c_adapter* %0, %struct.i2c_board_info* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca [2 x i16], align 2
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 4
  %10 = alloca [2 x i16], align 2
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  store i16 %2, i16* %6, align 2
  %12 = getelementptr inbounds [2 x i16], [2 x i16]* %7, i64 0, i64 0
  %13 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 4
  store i16 %15, i16* %12, align 2
  %16 = getelementptr inbounds i16, i16* %12, i64 1
  %17 = load i16, i16* @I2C_CLIENT_END, align 2
  store i16 %17, i16* %16, align 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %20 = getelementptr inbounds [2 x i16], [2 x i16]* %7, i64 0, i64 0
  %21 = call %struct.i2c_client* @i2c_new_probed_device(%struct.i2c_adapter* %18, %struct.i2c_board_info* %19, i16* %20, i32* null)
  store %struct.i2c_client* %21, %struct.i2c_client** %8, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %23 = icmp ne %struct.i2c_client* %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %3
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  %30 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 4
  %33 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i16 zeroext %32)
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %29, align 4
  %35 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i16], [2 x i16]* %10, i64 0, i64 0
  %37 = load i16, i16* %6, align 2
  store i16 %37, i16* %36, align 2
  %38 = getelementptr inbounds i16, i16* %36, i64 1
  %39 = load i16, i16* @I2C_CLIENT_END, align 2
  store i16 %39, i16* %38, align 2
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %41 = getelementptr inbounds [2 x i16], [2 x i16]* %10, i64 0, i64 0
  %42 = call %struct.i2c_client* @i2c_new_probed_device(%struct.i2c_adapter* %40, %struct.i2c_board_info* %9, i16* %41, i32* null)
  store %struct.i2c_client* %42, %struct.i2c_client** %11, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %44 = icmp ne %struct.i2c_client* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %28
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i16, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48, i16 zeroext %51, i32 %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %57 = call i32 @i2c_unregister_device(%struct.i2c_client* %56)
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %59 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %60 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %58, %struct.i2c_board_info* %59)
  store %struct.i2c_client* %60, %struct.i2c_client** %8, align 8
  br label %61

61:                                               ; preds = %45, %28
  br label %62

62:                                               ; preds = %61, %24, %3
  %63 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %64 = icmp ne %struct.i2c_client* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %69, i32 0, i32 0
  %71 = load i16, i16* %70, align 4
  %72 = call i32 (i8*, i32, i16, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %68, i16 zeroext %71)
  br label %81

73:                                               ; preds = %62
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %77, i32 0, i32 0
  %79 = load i16, i16* %78, align 4
  %80 = call i32 (i8*, i32, i16, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %76, i16 zeroext %79)
  br label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  ret %struct.i2c_client* %82
}

declare dso_local %struct.i2c_client* @i2c_new_probed_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*, i32*) #1

declare dso_local i32 @I2C_BOARD_INFO(i8*, i16 zeroext) #1

declare dso_local i32 @pr_debug(i8*, i32, i16 zeroext, ...) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
