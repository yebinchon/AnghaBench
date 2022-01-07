; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_pin_assignment_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_pin_assignment_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dp_altmode = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DP_CONF_DFP_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@pin_assignments = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pin_assignment_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_assignment_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dp_altmode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.dp_altmode* @dev_get_drvdata(%struct.device* %12)
  store %struct.dp_altmode* %13, %struct.dp_altmode** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %15 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %18 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DP_CONF_GET_PIN_ASSIGN(i32 %20)
  %22 = call i32 @get_count_order(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %24 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @DP_CONF_CURRENTLY(i32 %26)
  %28 = load i64, i64* @DP_CONF_DFP_D, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %32 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %3
  %38 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %39 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8**, i8*** @pin_assignments, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @sprintf(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %86

71:                                               ; preds = %52
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8**, i8*** @pin_assignments, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %71, %56
  br label %87

87:                                               ; preds = %86, %48
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %45

93:                                               ; preds = %45
  %94 = load %struct.dp_altmode*, %struct.dp_altmode** %7, align 8
  %95 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 10, i8* %101, align 1
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local %struct.dp_altmode* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i64 @DP_CONF_CURRENTLY(i32) #1

declare dso_local i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
