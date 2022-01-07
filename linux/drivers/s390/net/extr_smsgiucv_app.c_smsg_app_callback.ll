; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_smsgiucv_app.c_smsg_app_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_smsgiucv_app.c_smsg_app_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsg_app_event = type { i32 }

@sender = common dso_local global i64 0, align 8
@SMSG_PREFIX = common dso_local global i64 0, align 8
@smsg_event_queue_lock = common dso_local global i32 0, align 4
@smsg_event_queue = common dso_local global i32 0, align 4
@smsg_event_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @smsg_app_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsg_app_callback(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smsg_app_event*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* @sender, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, i64* @sender, align 8
  %10 = call i64 @strlen(i64 %9)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* @sender, align 8
  %15 = call i64 @strcmp(i8* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %58

18:                                               ; preds = %12, %8, %2
  %19 = load i64, i64* @SMSG_PREFIX, align 8
  %20 = call i64 @strlen(i64 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %35, %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  br label %23

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %58

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call %struct.smsg_app_event* @smsg_app_event_alloc(i8* %45, i8* %46)
  store %struct.smsg_app_event* %47, %struct.smsg_app_event** %5, align 8
  %48 = load %struct.smsg_app_event*, %struct.smsg_app_event** %5, align 8
  %49 = icmp ne %struct.smsg_app_event* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %44
  %52 = call i32 @spin_lock(i32* @smsg_event_queue_lock)
  %53 = load %struct.smsg_app_event*, %struct.smsg_app_event** %5, align 8
  %54 = getelementptr inbounds %struct.smsg_app_event, %struct.smsg_app_event* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %54, i32* @smsg_event_queue)
  %56 = call i32 @spin_unlock(i32* @smsg_event_queue_lock)
  %57 = call i32 @schedule_work(i32* @smsg_event_work)
  br label %58

58:                                               ; preds = %51, %50, %43, %17
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local %struct.smsg_app_event* @smsg_app_event_alloc(i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
