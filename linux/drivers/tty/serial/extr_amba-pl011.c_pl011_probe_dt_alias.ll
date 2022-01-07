; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_probe_dt_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_probe_dt_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@pl011_probe_dt_alias.seen_dev_with_alias = internal global i32 0, align 4
@pl011_probe_dt_alias.seen_dev_without_alias = internal global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@amba_ports = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"requested serial port %d  not available.\0A\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"aliased and non-aliased serial devices found in device tree. Serial port enumeration may be unpredictable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.device*)* @pl011_probe_dt_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl011_probe_dt_alias(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @CONFIG_OF, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @of_alias_get_id(%struct.device_node* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  store i32 1, i32* @pl011_probe_dt_alias.seen_dev_without_alias, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %7, align 4
  br label %47

29:                                               ; preds = %22
  store i32 1, i32* @pl011_probe_dt_alias.seen_dev_with_alias, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32**, i32*** @amba_ports, align 8
  %32 = call i32 @ARRAY_SIZE(i32** %31)
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32**, i32*** @amba_ports, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %29
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* @pl011_probe_dt_alias.seen_dev_with_alias, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @pl011_probe_dt_alias.seen_dev_without_alias, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %20, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
