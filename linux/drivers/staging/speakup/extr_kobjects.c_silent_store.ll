; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_silent_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_silent_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@vc_cons = common dso_local global %struct.TYPE_3__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"silent value '%c' not in range (0,7)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@spk_shut_up = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @silent_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @silent_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vc_data*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_cons, align 8
  %16 = load i64, i64* @fg_console, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  store %struct.vc_data* %19, %struct.vc_data** %11, align 8
  store i8 0, i8* %12, align 1
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %12, align 1
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8 48, i8* %12, align 1
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %24, %4
  %37 = load i8, i8* %12, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp slt i32 %38, 48
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 55
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36
  %45 = load i8, i8* %12, align 1
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %93

49:                                               ; preds = %40
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %50)
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  store i8 1, i8* %13, align 1
  %57 = call i32 (...) @spk_do_flush()
  br label %59

58:                                               ; preds = %49
  store i8 0, i8* %13, align 1
  br label %59

59:                                               ; preds = %58, %56
  %60 = load i8, i8* %12, align 1
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8, i8* %13, align 1
  %66 = sext i8 %65 to i32
  %67 = or i32 %66, 64
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %13, align 1
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i8, i8* %13, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @spk_shut_up, align 1
  %78 = sext i8 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* @spk_shut_up, align 1
  br label %89

81:                                               ; preds = %69
  %82 = load i8, i8* %13, align 1
  %83 = sext i8 %82 to i32
  %84 = xor i32 %83, -1
  %85 = load i8, i8* @spk_shut_up, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* @spk_shut_up, align 1
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %90)
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %89, %44
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_warn(i8*, i8 signext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spk_do_flush(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
