; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc_neh = type { i32, i32, i8*, i32, i32, i32, %struct.uwb_rc*, i32, i32 }
%struct.uwb_rc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rccb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uwb_rc_neh_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot open handle to radio controller: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_rc_neh* @uwb_rc_neh_add(%struct.uwb_rc* %0, %struct.uwb_rccb* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.uwb_rc_neh*, align 8
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca %struct.uwb_rccb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.uwb_rc_neh*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %8, align 8
  store %struct.uwb_rccb* %1, %struct.uwb_rccb** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %16, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.uwb_rc_neh* @kzalloc(i32 48, i32 %21)
  store %struct.uwb_rc_neh* %22, %struct.uwb_rc_neh** %17, align 8
  %23 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %24 = icmp eq %struct.uwb_rc_neh* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  br label %90

28:                                               ; preds = %6
  %29 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %29, i32 0, i32 8
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %33 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %36 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %35, i32 0, i32 7
  %37 = load i32, i32* @uwb_rc_neh_timer, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %40 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %41 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %40, i32 0, i32 6
  store %struct.uwb_rc* %39, %struct.uwb_rc** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %44 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %48 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %51 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %54 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %56 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %55, i32 0, i32 0
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %60 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %61 = call i32 @__uwb_rc_ctx_get(%struct.uwb_rc* %59, %struct.uwb_rc_neh* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %28
  %65 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %66 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.uwb_rccb*, %struct.uwb_rccb** %9, align 8
  %69 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %71 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %70, i32 0, i32 0
  %72 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %73 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %72, i32 0, i32 1
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %76 = call i32 @uwb_rc_neh_get(%struct.uwb_rc_neh* %75)
  br label %77

77:                                               ; preds = %64, %28
  %78 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %79 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %78, i32 0, i32 0
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %77
  %86 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  store %struct.uwb_rc_neh* %86, %struct.uwb_rc_neh** %7, align 8
  br label %96

87:                                               ; preds = %84
  %88 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %89 = call i32 @kfree(%struct.uwb_rc_neh* %88)
  br label %90

90:                                               ; preds = %87, %25
  %91 = load %struct.device*, %struct.device** %16, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = call %struct.uwb_rc_neh* @ERR_PTR(i32 %94)
  store %struct.uwb_rc_neh* %95, %struct.uwb_rc_neh** %7, align 8
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %7, align 8
  ret %struct.uwb_rc_neh* %97
}

declare dso_local %struct.uwb_rc_neh* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__uwb_rc_ctx_get(%struct.uwb_rc*, %struct.uwb_rc_neh*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uwb_rc_neh_get(%struct.uwb_rc_neh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.uwb_rc_neh*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.uwb_rc_neh* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
