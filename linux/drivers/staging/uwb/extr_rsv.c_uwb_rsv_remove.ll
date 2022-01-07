; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i64, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"RM\00", align 1
@UWB_RSV_STATE_NONE = common dso_local global i64 0, align 8
@UWB_RSV_TARGET_DEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_remove(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %3 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %4 = call i32 @uwb_rsv_dump(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.uwb_rsv* %3)
  %5 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %12 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %13 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %11, i64 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %16 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @uwb_drp_avail_release(i32 %22, i32* %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %29 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %32 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %31, i32 0, i32 4
  %33 = call i32 @uwb_drp_avail_release(i32 %30, i32* %32)
  %34 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %35 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %39 = call i32 @uwb_rsv_put_stream(%struct.uwb_rsv* %38)
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @uwb_dev_put(i32 %43)
  %45 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %46 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UWB_RSV_TARGET_DEV, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %53 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @uwb_dev_put(i32 %55)
  br label %57

57:                                               ; preds = %51, %40
  %58 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %59 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %58, i32 0, i32 1
  %60 = call i32 @list_del_init(i32* %59)
  %61 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %62 = call i32 @uwb_rsv_put(%struct.uwb_rsv* %61)
  ret void
}

declare dso_local i32 @uwb_rsv_dump(i8*, %struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i64) #1

declare dso_local i32 @uwb_drp_avail_release(i32, i32*) #1

declare dso_local i64 @uwb_rsv_is_owner(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_put_stream(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_dev_put(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @uwb_rsv_put(%struct.uwb_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
