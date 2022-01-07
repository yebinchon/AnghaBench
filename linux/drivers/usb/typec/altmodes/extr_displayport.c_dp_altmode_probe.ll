; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i8*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dp_altmode = type { i32, i32, %struct.typec_altmode*, %struct.typec_altmode*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@dp_altmode_group = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dp_altmode_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DisplayPort\00", align 1
@dp_altmode_ops = common dso_local global i32 0, align 4
@DP_STATE_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_altmode_probe(%struct.typec_altmode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.typec_altmode*, align 8
  %5 = alloca %struct.dp_altmode*, align 8
  %6 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %3, align 8
  %7 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %8 = call %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode* %7)
  store %struct.typec_altmode* %8, %struct.typec_altmode** %4, align 8
  %9 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %10 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %11)
  %13 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %14 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %15)
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %1
  %20 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %21 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %22)
  %24 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %25 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %26)
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %79

33:                                               ; preds = %19, %1
  %34 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %35 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @sysfs_create_group(i32* %36, i32* @dp_altmode_group)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %79

42:                                               ; preds = %33
  %43 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %44 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %43, i32 0, i32 2
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.dp_altmode* @devm_kzalloc(%struct.TYPE_2__* %44, i32 32, i32 %45)
  store %struct.dp_altmode* %46, %struct.dp_altmode** %5, align 8
  %47 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %48 = icmp ne %struct.dp_altmode* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %54 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %53, i32 0, i32 0
  %55 = load i32, i32* @dp_altmode_work, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %58 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %61 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %62 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %61, i32 0, i32 3
  store %struct.typec_altmode* %60, %struct.typec_altmode** %62, align 8
  %63 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %64 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %65 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %64, i32 0, i32 2
  store %struct.typec_altmode* %63, %struct.typec_altmode** %65, align 8
  %66 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %67 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %69 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %68, i32 0, i32 1
  store i32* @dp_altmode_ops, i32** %69, align 8
  %70 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %71 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %72 = call i32 @typec_altmode_set_drvdata(%struct.typec_altmode* %70, %struct.dp_altmode* %71)
  %73 = load i32, i32* @DP_STATE_ENTER, align 4
  %74 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %75 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dp_altmode*, %struct.dp_altmode** %5, align 8
  %77 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %76, i32 0, i32 0
  %78 = call i32 @schedule_work(i32* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %52, %49, %40, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode*) #1

declare dso_local i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local %struct.dp_altmode* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @typec_altmode_set_drvdata(%struct.typec_altmode*, %struct.dp_altmode*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
