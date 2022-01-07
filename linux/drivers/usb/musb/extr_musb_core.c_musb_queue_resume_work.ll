; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_queue_resume_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_queue_resume_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, i64 }
%struct.musb_pending_work = type { i32 (%struct.musb.0*, i8*)*, i32, i8* }
%struct.musb.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not add resume work %p\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @musb_queue_resume_work(%struct.musb* %0, i32 (%struct.musb*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.musb*, align 8
  %6 = alloca i32 (%struct.musb*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.musb_pending_work*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %5, align 8
  store i32 (%struct.musb*, i8*)* %1, i32 (%struct.musb*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32 (%struct.musb*, i8*)*, i32 (%struct.musb*, i8*)** %6, align 8
  %12 = icmp ne i32 (%struct.musb*, i8*)* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.musb*, %struct.musb** %5, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pm_runtime_active(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32 (%struct.musb*, i8*)*, i32 (%struct.musb*, i8*)** %6, align 8
  %28 = load %struct.musb*, %struct.musb** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 %27(%struct.musb* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %83

31:                                               ; preds = %20
  %32 = load %struct.musb*, %struct.musb** %5, align 8
  %33 = getelementptr inbounds %struct.musb, %struct.musb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.musb_pending_work* @devm_kzalloc(i32 %34, i32 24, i32 %35)
  store %struct.musb_pending_work* %36, %struct.musb_pending_work** %8, align 8
  %37 = load %struct.musb_pending_work*, %struct.musb_pending_work** %8, align 8
  %38 = icmp ne %struct.musb_pending_work* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %83

42:                                               ; preds = %31
  %43 = load i32 (%struct.musb*, i8*)*, i32 (%struct.musb*, i8*)** %6, align 8
  %44 = bitcast i32 (%struct.musb*, i8*)* %43 to i32 (%struct.musb.0*, i8*)*
  %45 = load %struct.musb_pending_work*, %struct.musb_pending_work** %8, align 8
  %46 = getelementptr inbounds %struct.musb_pending_work, %struct.musb_pending_work* %45, i32 0, i32 0
  store i32 (%struct.musb.0*, i8*)* %44, i32 (%struct.musb.0*, i8*)** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.musb_pending_work*, %struct.musb_pending_work** %8, align 8
  %49 = getelementptr inbounds %struct.musb_pending_work, %struct.musb_pending_work* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.musb*, %struct.musb** %5, align 8
  %51 = getelementptr inbounds %struct.musb, %struct.musb* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.musb*, %struct.musb** %5, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load %struct.musb_pending_work*, %struct.musb_pending_work** %8, align 8
  %60 = getelementptr inbounds %struct.musb_pending_work, %struct.musb_pending_work* %59, i32 0, i32 1
  %61 = load %struct.musb*, %struct.musb** %5, align 8
  %62 = getelementptr inbounds %struct.musb, %struct.musb* %61, i32 0, i32 2
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  store i32 0, i32* %10, align 4
  br label %77

64:                                               ; preds = %42
  %65 = load %struct.musb*, %struct.musb** %5, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32 (%struct.musb*, i8*)*, i32 (%struct.musb*, i8*)** %6, align 8
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 (%struct.musb*, i8*)* %68)
  %70 = load %struct.musb*, %struct.musb** %5, align 8
  %71 = getelementptr inbounds %struct.musb, %struct.musb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.musb_pending_work*, %struct.musb_pending_work** %8, align 8
  %74 = call i32 @devm_kfree(i32 %72, %struct.musb_pending_work* %73)
  %75 = load i32, i32* @EINPROGRESS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %64, %58
  %78 = load %struct.musb*, %struct.musb** %5, align 8
  %79 = getelementptr inbounds %struct.musb, %struct.musb* %78, i32 0, i32 0
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %39, %26, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local %struct.musb_pending_work* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32 (%struct.musb*, i8*)*) #1

declare dso_local i32 @devm_kfree(i32, %struct.musb_pending_work*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
