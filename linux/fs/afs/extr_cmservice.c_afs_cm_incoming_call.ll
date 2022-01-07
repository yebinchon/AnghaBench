; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_cm_incoming_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_cm_incoming_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"{%u, CB.OP %u}\00", align 1
@afs_SRXCBCallBack = common dso_local global i32 0, align 4
@afs_SRXCBInitCallBackState = common dso_local global i32 0, align 4
@afs_SRXCBInitCallBackState3 = common dso_local global i32 0, align 4
@afs_SRXCBProbe = common dso_local global i32 0, align 4
@afs_SRXCBProbeUuid = common dso_local global i32 0, align 4
@afs_SRXCBTellMeAboutYourself = common dso_local global i32 0, align 4
@YFS_CM_SERVICE = common dso_local global i32 0, align 4
@afs_SRXYFSCB_CallBack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_cm_incoming_call(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %4 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %5 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %8 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rxrpc_kernel_get_epoch(i32 %15, i32 %18)
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %53 [
    i32 134, label %25
    i32 133, label %28
    i32 132, label %31
    i32 131, label %34
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

25:                                               ; preds = %1
  %26 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 1
  store i32* @afs_SRXCBCallBack, i32** %27, align 8
  store i32 1, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 1
  store i32* @afs_SRXCBInitCallBackState, i32** %30, align 8
  store i32 1, i32* %2, align 4
  br label %54

31:                                               ; preds = %1
  %32 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 1
  store i32* @afs_SRXCBInitCallBackState3, i32** %33, align 8
  store i32 1, i32* %2, align 4
  br label %54

34:                                               ; preds = %1
  %35 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 1
  store i32* @afs_SRXCBProbe, i32** %36, align 8
  store i32 1, i32* %2, align 4
  br label %54

37:                                               ; preds = %1
  %38 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %39 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %38, i32 0, i32 1
  store i32* @afs_SRXCBProbeUuid, i32** %39, align 8
  store i32 1, i32* %2, align 4
  br label %54

40:                                               ; preds = %1
  %41 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 1
  store i32* @afs_SRXCBTellMeAboutYourself, i32** %42, align 8
  store i32 1, i32* %2, align 4
  br label %54

43:                                               ; preds = %1
  %44 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @YFS_CM_SERVICE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 1
  store i32* @afs_SRXYFSCB_CallBack, i32** %52, align 8
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %49, %40, %37, %34, %31, %28, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @rxrpc_kernel_get_epoch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
