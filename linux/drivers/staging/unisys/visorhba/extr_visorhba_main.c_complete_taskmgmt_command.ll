; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_complete_taskmgmt_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_complete_taskmgmt_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.uiscmdrsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"visorhba: no completion context; cmd will time out\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"visorhba: notifying initiator with result=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr*, %struct.uiscmdrsp*, i32)* @complete_taskmgmt_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_taskmgmt_command(%struct.idr* %0, %struct.uiscmdrsp* %1, i32 %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.idr* %0, %struct.idr** %4, align 8
  store %struct.uiscmdrsp* %1, %struct.uiscmdrsp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.idr*, %struct.idr** %4, align 8
  %10 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %11 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @idr_find(%struct.idr* %9, i32 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.idr*, %struct.idr** %4, align 8
  %17 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %18 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @idr_find(%struct.idr* %16, i32 %20)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ false, %3 ], [ %27, %25 ]
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @wake_up_all(i32* %41)
  br label %43

43:                                               ; preds = %36, %34
  ret void
}

declare dso_local i8* @idr_find(%struct.idr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
