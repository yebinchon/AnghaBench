; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_process_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, %struct.TYPE_2__, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ASYNC_EVENT = common dso_local global i32 0, align 4
@RESET_COMPLETE = common dso_local global i32 0, align 4
@RESET_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid async evt %d\0A\00", align 1
@DEV_CMD_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"dev resp 0x%04x but no cmd pending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucsi_ccg*)* @ccg_process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccg_process_response(%struct.ucsi_ccg* %0) #0 {
  %2 = alloca %struct.ucsi_ccg*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %2, align 8
  %4 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %5 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %4, i32 0, i32 3
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %8 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ASYNC_EVENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %16 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RESET_COMPLETE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load i32, i32* @RESET_PENDING, align 4
  %23 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %24 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %29 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %33 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %36 = call i32 @get_fw_info(%struct.ucsi_ccg* %35)
  br label %37

37:                                               ; preds = %34, %14
  %38 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %39 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @invalid_async_evt(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %47 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  br label %77

52:                                               ; preds = %1
  %53 = load i32, i32* @DEV_CMD_PENDING, align 4
  %54 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %55 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %60 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %64 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @DEV_CMD_PENDING, align 4
  %66 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %67 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %66, i32 0, i32 2
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  br label %76

69:                                               ; preds = %52
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %72 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %58
  br label %77

77:                                               ; preds = %76, %51
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_fw_info(%struct.ucsi_ccg*) #1

declare dso_local i64 @invalid_async_evt(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
