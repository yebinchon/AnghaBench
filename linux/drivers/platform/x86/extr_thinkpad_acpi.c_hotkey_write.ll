; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@hotkey_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@hotkey_user_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@hotkey_all_mask = common dso_local global i32 0, align 4
@hotkey_source_mask = common dso_local global i32 0, align 4
@hotkey_reserved_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"procfs hotkey\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"set mask to 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hotkey_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_write(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = call i64 @mutex_lock_killable(i32* @hotkey_mutex)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @ERESTARTSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %12
  %19 = load i32, i32* @hotkey_user_mask, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %65, %18
  %21 = call i8* @next_cmd(i8** %3)
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlencmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @hotkey_enabledisable_warn(i32 1)
  br label %65

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strlencmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @hotkey_enabledisable_warn(i32 0)
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strlencmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @hotkey_all_mask, align 4
  %43 = load i32, i32* @hotkey_source_mask, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @hotkey_reserved_mask, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @sscanf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sscanf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64, %27
  br label %20

66:                                               ; preds = %20
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @tpacpi_disclose_usertask(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @hotkey_user_mask_set(i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74, %58
  %76 = call i32 @mutex_unlock(i32* @hotkey_mutex)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %15, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i8* @next_cmd(i8**) #1

declare dso_local i64 @strlencmp(i8*, i8*) #1

declare dso_local i32 @hotkey_enabledisable_warn(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @tpacpi_disclose_usertask(i8*, i8*, i32) #1

declare dso_local i32 @hotkey_user_mask_set(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
