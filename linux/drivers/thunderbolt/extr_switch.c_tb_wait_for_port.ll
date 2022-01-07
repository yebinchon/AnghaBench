; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_wait_for_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_wait_for_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"does not have PHY\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"is the upstream port\0A\00", align 1
@TB_PORT_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"is disabled (state: 0)\0A\00", align 1
@TB_PORT_UNPLUGGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"is unplugged (state: 7), retrying...\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"is unplugged (state: 7)\0A\00", align 1
@TB_PORT_UP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"is connected, link is up (state: 2)\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"is connected, link is not up (state: %d), retrying...\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"failed to reach state TB_PORT_UP. Ignoring port...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_wait_for_port(%struct.tb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10, i32* %6, align 4
  %8 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %9 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %14 = call i32 @tb_port_WARN(%struct.tb_port* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %19 = call i64 @tb_is_upstream_port(%struct.tb_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %23 = call i32 @tb_port_WARN(%struct.tb_port* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %66, %52, %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %33 = call i32 @tb_port_state(%struct.tb_port* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TB_PORT_DISABLED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %44 = call i32 (%struct.tb_port*, i8*, ...) @tb_port_dbg(%struct.tb_port* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TB_PORT_UNPLUGGED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %54 = call i32 (%struct.tb_port*, i8*, ...) @tb_port_dbg(%struct.tb_port* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @msleep(i32 100)
  br label %27

56:                                               ; preds = %49
  %57 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %58 = call i32 (%struct.tb_port*, i8*, ...) @tb_port_dbg(%struct.tb_port* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TB_PORT_UP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %65 = call i32 (%struct.tb_port*, i8*, ...) @tb_port_dbg(%struct.tb_port* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.tb_port*, i8*, ...) @tb_port_dbg(%struct.tb_port* %67, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = call i32 @msleep(i32 100)
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %73 = call i32 @tb_port_warn(%struct.tb_port* %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %63, %56, %42, %36, %21, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @tb_port_WARN(%struct.tb_port*, i8*) #1

declare dso_local i64 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local i32 @tb_port_state(%struct.tb_port*) #1

declare dso_local i32 @tb_port_dbg(%struct.tb_port*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
