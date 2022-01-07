; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_i18n.c_spk_msg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_i18n.c_spk_msg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MSG_FIRST_INDEX = common dso_local global i32 0, align 4
@MSG_LAST_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_FORMATTED_START = common dso_local global i32 0, align 4
@MSG_FORMATTED_END = common dso_local global i32 0, align 4
@speakup_default_msgs = common dso_local global i8** null, align 8
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@speakup_msgs = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_msg_set(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MSG_FIRST_INDEX, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MSG_LAST_INDEX, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %88

20:                                               ; preds = %13
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i64 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %88

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MSG_FORMATTED_START, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MSG_FORMATTED_END, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8**, i8*** @speakup_default_msgs, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @fmt_validate(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %88

59:                                               ; preds = %45, %41, %30
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %60)
  %62 = load i8**, i8*** @speakup_msgs, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** @speakup_default_msgs, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %66, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %59
  %74 = load i8**, i8*** @speakup_msgs, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @kfree(i8* %78)
  br label %80

80:                                               ; preds = %73, %59
  %81 = load i8*, i8** %8, align 8
  %82 = load i8**, i8*** @speakup_msgs, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %81, i8** %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %54, %27, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @fmt_validate(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
