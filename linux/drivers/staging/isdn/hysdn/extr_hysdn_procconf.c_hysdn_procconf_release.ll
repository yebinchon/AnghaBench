; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_hysdn_procconf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_hysdn_procconf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@card_root = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@PROC_CONF_BASENAME = common dso_local global i8* null, align 8
@hysdn_proc_entry = common dso_local global i32 0, align 4
@PROC_SUBDIR_NAME = common dso_local global i8* null, align 8
@init_net = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hysdn_procconf_release() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca [20 x i8], align 16
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @card_root, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  br label %4

4:                                                ; preds = %22, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %9 = load i8*, i8** @PROC_CONF_BASENAME, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %20 = load i32, i32* @hysdn_proc_entry, align 4
  %21 = call i32 @remove_proc_entry(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %7
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = call i32 @hysdn_proclog_release(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %1, align 8
  br label %4

28:                                               ; preds = %4
  %29 = load i8*, i8** @PROC_SUBDIR_NAME, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @init_net, i32 0, i32 0), align 4
  %31 = call i32 @remove_proc_entry(i8* %29, i32 %30)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @remove_proc_entry(i8*, i32) #1

declare dso_local i32 @hysdn_proclog_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
