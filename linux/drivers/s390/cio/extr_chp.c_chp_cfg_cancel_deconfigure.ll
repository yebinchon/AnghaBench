; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_cfg_cancel_deconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_cfg_cancel_deconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"chp_cfg_cancel:%x.%02x\0A\00", align 1
@cfg_lock = common dso_local global i32 0, align 4
@cfg_deconfigure = common dso_local global i64 0, align 8
@cfg_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chp_cfg_cancel_deconfigure(i64 %0) #0 {
  %2 = alloca %struct.chp_id, align 4
  %3 = bitcast %struct.chp_id* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7)
  %9 = call i32 @spin_lock(i32* @cfg_lock)
  %10 = bitcast %struct.chp_id* %2 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i64 @cfg_get_task(i64 %11)
  %13 = load i64, i64* @cfg_deconfigure, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @cfg_none, align 4
  %17 = bitcast %struct.chp_id* %2 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @cfg_set_task(i64 %18, i32 %16)
  br label %20

20:                                               ; preds = %15, %1
  %21 = call i32 @spin_unlock(i32* @cfg_lock)
  ret void
}

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cfg_get_task(i64) #1

declare dso_local i32 @cfg_set_task(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
