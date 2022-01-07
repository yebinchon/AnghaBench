; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c__get_xid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c__get_xid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GlobalMid_Lock = common dso_local global i32 0, align 4
@GlobalTotalActiveXid = common dso_local global i32 0, align 4
@GlobalMaxActiveXid = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"warning: more than 65000 requests active\0A\00", align 1
@GlobalCurrentXid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_get_xid() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %3 = load i32, i32* @GlobalTotalActiveXid, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @GlobalTotalActiveXid, align 4
  %5 = load i32, i32* @GlobalTotalActiveXid, align 4
  %6 = load i32, i32* @GlobalMaxActiveXid, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @GlobalTotalActiveXid, align 4
  store i32 %9, i32* @GlobalMaxActiveXid, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @GlobalTotalActiveXid, align 4
  %12 = icmp sgt i32 %11, 65000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @FYI, align 4
  %15 = call i32 @cifs_dbg(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @GlobalCurrentXid, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @GlobalCurrentXid, align 4
  store i32 %17, i32* %1, align 4
  %19 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
