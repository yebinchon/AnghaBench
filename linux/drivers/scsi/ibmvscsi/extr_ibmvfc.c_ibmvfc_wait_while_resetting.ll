; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_wait_while_resetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_wait_while_resetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i64, i64, i32 }

@IBMVFC_ACTIVE = common dso_local global i64 0, align 8
@IBMVFC_HOST_OFFLINE = common dso_local global i64 0, align 8
@IBMVFC_LINK_DEAD = common dso_local global i64 0, align 8
@IBMVFC_HOST_ACTION_NONE = common dso_local global i64 0, align 8
@init_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_host*)* @ibmvfc_wait_while_resetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  %3 = alloca i64, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %4 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IBMVFC_ACTIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IBMVFC_HOST_OFFLINE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IBMVFC_LINK_DEAD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %12, %1
  %25 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IBMVFC_HOST_ACTION_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @init_timeout, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i64 @wait_event_timeout(i32 %6, i32 %32, i32 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  ret i32 %44
}

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
