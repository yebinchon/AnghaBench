; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@DEV_CMD_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid cmd register\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"response read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, %struct.ccg_cmd*)* @ccg_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_send_command(%struct.ucsi_ccg* %0, %struct.ccg_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi_ccg*, align 8
  %5 = alloca %struct.ccg_cmd*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %4, align 8
  store %struct.ccg_cmd* %1, %struct.ccg_cmd** %5, align 8
  %8 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %9 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 61440
  switch i32 %14, label %20 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @DEV_CMD_PENDING, align 4
  %17 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %18 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %25 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %28, i32 0, i32 3
  %30 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ccg_write(%struct.ucsi_ccg* %24, i32 %27, i32* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %23
  %39 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msleep(i32 %41)
  %43 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %44 = call i32 @ccg_read_response(%struct.ucsi_ccg* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.ccg_cmd*, %struct.ccg_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 61440
  switch i32 %53, label %59 [
    i32 128, label %54
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* @DEV_CMD_PENDING, align 4
  %56 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %57 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %56, i32 0, i32 1
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %71

65:                                               ; preds = %38
  %66 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %67 = call i32 @ccg_process_response(%struct.ucsi_ccg* %66)
  %68 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %69 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %62, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ccg_write(%struct.ucsi_ccg*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ccg_read_response(%struct.ucsi_ccg*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ccg_process_response(%struct.ucsi_ccg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
