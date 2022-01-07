; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_OnAction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_OnAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_handler = type { i8, i32 (%struct.adapter*, %union.recv_frame*)* }
%struct.adapter = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@OnAction_tbl = common dso_local global %struct.action_handler* null, align 8
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OnAction(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.action_handler*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %10 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %46, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.action_handler*, %struct.action_handler** @OnAction_tbl, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.action_handler* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.action_handler*, %struct.action_handler** @OnAction_tbl, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.action_handler, %struct.action_handler* %27, i64 %29
  store %struct.action_handler* %30, %struct.action_handler** %7, align 8
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.action_handler*, %struct.action_handler** %7, align 8
  %34 = getelementptr inbounds %struct.action_handler, %struct.action_handler* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.action_handler*, %struct.action_handler** %7, align 8
  %40 = getelementptr inbounds %struct.action_handler, %struct.action_handler* %39, i32 0, i32 1
  %41 = load i32 (%struct.adapter*, %union.recv_frame*)*, i32 (%struct.adapter*, %union.recv_frame*)** %40, align 8
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %44 = call i32 %41(%struct.adapter* %42, %union.recv_frame* %43)
  br label %45

45:                                               ; preds = %38, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i32, i32* @_SUCCESS, align 4
  ret i32 %50
}

declare dso_local i32 @ARRAY_SIZE(%struct.action_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
